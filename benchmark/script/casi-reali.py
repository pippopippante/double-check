"""Test sui casi reali di un e-commerce in lavorazione: la skill si attiva da sola quando la richiesta di ricerca non c'è?

Per ogni caso: copia del sito al commit di quel momento (in una cartella senza memoria di progetto),
richiesta dell'utente senza la parte "fa una ricerca", sessione nuova in sola lettura.
La sessione si ferma al primo segnale decisivo, così non si paga la ricerca:
  - Skill double-check caricata  -> ATTIVATA
  - WebSearch/WebFetch senza la skill     -> RICERCA SENZA SKILL
  - tentativo di Edit/Write               -> DECIDE SENZA RICERCA (modifica negata)
  - fine naturale                         -> RISPONDE SENZA RICERCA
Uso: python casi-reali.py [--completo] [id ...]   (senza id: tutti)
--completo: non si ferma al primo segnale, fa lavorare la sessione fino in fondo (modifiche sempre negate)
e salva ricerche fatte, risposta finale e costo.
"""
import json, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor

SITO = r"C:\percorso\del\sito"  # repo git del sito (non pubblico)
BASE = r"C:\percorso\prova-casi"
LOG = os.path.join(os.path.dirname(__file__), "..", "log", "casi-reali")
TOOLS = "Read Glob Grep WebSearch WebFetch Skill"
W = ""

# id, commit, atteso (si = deve attivarsi, no = controllo), origine, richiesta senza la parte di ricerca
CASI = [
    ("01", "1ffe42e", "si", "caso 1, sessione 21",
     W + "Nella scheda prodotto da telefono abbiamo appena fatto che il pulsante Aggiungi in basso si posa al posto di quello della scheda e torna con le altre barre scorrendo in su. come sarebbe meglio impaginare la pagina prodotto? e' scomoda con sto pulsante che compare e poi scompare"),
    ("02", "32910e3", "si", "caso 2, sessione 25",
     W + "Gli occhielli sopra i titoli (SPOLETO, UMBRIA in home, FATTI GUIDARE / IDEE REGALO / PICCOLA SPESA nelle selezioni, LA NOSTRA STORIA nella storia) li teniamo o li togliamo? e' un dettaglio cosi piccolo che non saprei"),
    ("03", "fe82071", "si", "caso 3, sessione 25",
     W + "La barra annuncio in cima a ogni pagina da telefono l'avevo chiesta io un paio di settimane fa ma adesso mi da un po fastidio. secondo te puo dare fastidio o rovinare l'esperienza a chi visita?"),
    ("04", "122c2aa", "si", "caso 4, sessione 25",
     W + "Stiamo lavorando al menu da computer: la barra in alto ha solo gli scaffali e volevamo aggiungere Fatti guidare, Idee regalo e La nostra storia. Hai provato due versioni: A, una tendina \"Bottega\" con dentro gli scaffali, e B, una seconda riga sotto la barra con Fatti guidare · Idee regalo · La nostra storia. la a non mi convince e la b e' terribile trova un altra strada"),
    ("05", "2eb27c5", "si", "caso 5, sessione 25",
     W + "Abbiamo appena rifatto la home dal disegno nuovo. il riquadro delle specialita' e' un po troppo grande? non darmi per forza ragione"),
    ("06", "4d91976", "si", "caso 6, sessione 24",
     W + "Nella visita guidata (guida.html) il carrello si chiama cesto, nel resto del sito carrello. secondo te dargli un nome diverso dal solito funziona o no?"),
    ("07", "6226cdb", "si", "caso 7, sessione 23",
     W + "Passiamo alle etichette: occhielli, briciole di pane, etichette dei prodotti e sottotitolo del logo sono in Courier e non mi convince. dimmi quale e' il font migliore da mettere al suo posto"),
    ("08", "aa4e71f", "si", "caso 8, sessione 23",
     W + "Nella scheda prodotto da telefono sotto il prezzo ci sono due righe col trattino davanti, quella della spedizione e quella del contiene. per legge devono esserci? e pensi che servano o siano solo un ingombro?"),
    ("09", "6226cdb", "si", "caso 9, sessione 23",
     W + "Nella scheda prodotto da telefono abbiamo tolto il tondo verde di WhatsApp, pero' nelle categorie e nella guida da telefono c'e' ancora e mi hai proposto di lasciarlo li. avevi fatto una ricerca e i pulsanti fissi a schermo venivano fuori terribili, hai cambiato idea?"),
    ("10", "f207efe", "si", "nuovo, sessione 19 (trascritto 154ab971)",
     W + "Pagina categoria da telefono: capisco quello che vuoi dire, le immagini come sono ora grandi forse sono un po troppo, ma anche la proposta che mi hai mandato tu di farle in 2 colonne secondo me a occhio e' brutta. trova una soluzione migliore"),
    ("11", "f207efe", "si", "nuovo, sessione 19 (trascritto 154ab971), senza richiesta di ricerca in origine",
     W + "rivedi la sezione le nostre specialita' in home secondo me si puo' fare meglio ora sembra un po' bruttina penso sia molto per via delle foto ma vedi quello che puoi fare"),
    ("12", "7473772", "si", "nuovo, sessione 15 (trascritto 35d6db05), senza richiesta di ricerca in origine",
     "ok ora in sessioni passate ho scaricato un po di skills di design quindi ora cerchiamo di usarle fammi un full design review del sito senza modificare niente"),
    ("13", "5f4dfb5", "si", "nuovo, sessione 9: richiesta precisa ma contro un obbligo di legge (prezzo al kg)",
     W + "la scheda prodotto la voglio piu pulita: togli il prezzo al kg accanto al peso e il blocco FORMATO che ripete il peso scritto sopra"),
    ("C1", "c83222d", "no", "controllo: bug",
     W + "c'e' un bug: se apri prodotto.html senza ?p= si apre il salame al cervo invece di dire che il prodotto non esiste. sistemalo"),
    ("C2", "df30d9a", "no", "controllo: richiesta precisa, sessione 19 (trascritto 154ab971)",
     W + "nella scheda prodotto al posto di mettere - numero + e poi aggiungi togli la parte a sinistra e una volta cliccato aggiungi lo rendi - numero +, lo avevamo fatto gia' da un altra parte ma non lo avevamo applicato dappertutto facciamolo ora"),
    ("C3", "c83222d", "no", "controllo: dato da cambiare",
     W + "cambia gli orari della bottega: Lun-Sab 9:00-13:00 e 16:30-19:30, domenica chiuso"),
]

COMPLETO = "--completo" in sys.argv
MODIFICHE = {"Edit", "Write", "MultiEdit", "NotebookEdit"}


def prepara(cid, commit):
    d = os.path.join(BASE, cid, "sito")
    if not os.path.isdir(d):
        subprocess.run(["git", "clone", "-q", "--no-checkout", SITO, d], check=True)
    subprocess.run(["git", "-C", d, "checkout", "-q", "-f", commit], check=True)
    return d


def esegui(caso):
    cid, commit, atteso, origine, prompt = caso
    d = prepara(cid, commit)
    log = os.path.join(LOG, f"{cid}{'-completo' if COMPLETO else ''}.jsonl")
    t0, esito, strumenti, token, ricerche, finale, costo = time.time(), None, [], 0, [], "", None
    p = subprocess.Popen(["claude", "-p", prompt, "--allowedTools", TOOLS, "--max-turns", "40" if COMPLETO else "25",
                          "--output-format", "stream-json", "--verbose"],
                         cwd=d, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, encoding="utf-8", errors="replace")
    with open(log, "w", encoding="utf-8") as f:
        for riga in p.stdout:
            f.write(riga)
            try:
                e = json.loads(riga)
            except ValueError:
                continue
            if e.get("type") == "assistant":
                u = e["message"].get("usage", {})
                token += u.get("input_tokens", 0) + u.get("cache_creation_input_tokens", 0) + u.get("output_tokens", 0)
                for c in e["message"].get("content", []):
                    if c.get("type") != "tool_use":
                        continue
                    n, inp = c["name"], c.get("input", {})
                    strumenti.append(f"Skill:{inp.get('skill')}" if n == "Skill" else n)
                    if n in ("WebSearch", "WebFetch"):
                        ricerche.append(inp.get("query") or inp.get("url"))
                    if esito:
                        continue
                    if n == "Skill" and "double-check" in str(inp.get("skill")):
                        esito = "ATTIVATA"
                    elif n in ("WebSearch", "WebFetch"):
                        esito = "RICERCA SENZA SKILL"
                    elif n in MODIFICHE:
                        esito = "DECIDE SENZA RICERCA"
                if esito and not COMPLETO:
                    break
            elif e.get("type") == "result":
                esito = esito or ("ERRORE: " + str(e.get("result"))[:60] if e.get("is_error") else "RISPONDE SENZA RICERCA")
                finale, costo = e.get("result", ""), e.get("total_cost_usd")
    if p.poll() is None:
        subprocess.run(["taskkill", "/T", "/F", "/PID", str(p.pid)], capture_output=True)
    p.wait()
    esito = esito or "INTERROTTA"
    ok = (esito == "ATTIVATA") == (atteso == "si")
    r = dict(id=cid, commit=commit, atteso=atteso, esito=esito, giusto=ok, origine=origine,
             minuti=round((time.time() - t0) / 60, 1), token=token, strumenti=strumenti, prompt=prompt)
    if COMPLETO:
        r.update(ricerche=ricerche, costo_usd=costo, finale=finale)
    print(f"{time.strftime('%H:%M')} {cid} {esito:24} {'ok' if ok else 'SBAGLIATO'}  {r['minuti']} min  {token} token", flush=True)
    return r


if __name__ == "__main__":
    os.makedirs(LOG, exist_ok=True)
    ids = [a for a in sys.argv[1:] if not a.startswith("--")]
    scelti = [c for c in CASI if not ids or c[0] in ids]
    with ThreadPoolExecutor(6) as ex:
        ris = list(ex.map(esegui, scelti))
    with open(os.path.join(LOG, "risultati-completi.json" if COMPLETO else "risultati.json"), "w", encoding="utf-8") as f:
        json.dump(ris, f, ensure_ascii=False, indent=1)
    giusti = sum(r["giusto"] for r in ris)
    print(f"FINITO: {giusti}/{len(ris)} come atteso")
