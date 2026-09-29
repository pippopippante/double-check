# Giudizio sulle analisi A e B: [nome azienda] (Spoleto)

Metodo: ho controllato le affermazioni principali di A e B confrontandole con HTML, testo e screenshot della copia salvata (00–09). Non ho fatto ricerche web.

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito | Prova |
|---|---|---|---|
| Il bottone "Acquista" della home porta a `/negozio/` | A, B | **Vero** | `00-home.html:2933`; tutti gli altri link portano a `/shop/` |
| `/negozio/` è vuota: titolo "Shop" e nessun prodotto | A, B | **Vero** | `04-categoria.txt` passa dal menu ai blocchi del footer; lo screenshot desktop lo conferma |
| `/negozio/` è indicizzata, con canonical su se stessa | B | **Vero** | `04-categoria.html:40,60` |
| La categoria "Bottiglia singola" contiene 14 vini da 10 a 100 € | A (14) / B (15) | **A giusto, B sbaglia** | `05-categoria.txt`: 14 prodotti |
| Il titolo SEO è "Bottiglia Singola Archivi"; esistono le categorie vino-bianco/rosso/spumanti/riserve/eccellenze | A | **Vero** | `05-categoria.html:59` e classi dei prodotti |
| Araminto: 2019 nell'URL e nella meta description, 2020 in H1 e pagina | A, B | **Vero** | `01-prodotto.html:60-61, 2755` |
| La Pettinata: 2022 in URL, title e meta; 2024 in pagina; "Prima annata: 2022" | A, B | **Vero** | `03-prodotto.html:59-61`, `03-prodotto.txt:17,28` |
| L'anteprima social del Soviano usa la foto del "2017" | B | **Vero** | `02-prodotto.html:69` |
| L'immagine di anteprima dell'Araminto si chiama "…Silver…" (possibile medaglia non valorizzata) | B | **Vero** | `01-prodotto.html:69` |
| Nelle schede prodotto il titolo è in due `<h1>`; la home ha tre `<h1>` | A | **Vero** | `0x-prodotto.html:2755/2791`; `00-home.html:2792/2855/2874` |
| La sezione si chiama "Caratteristiche dei vigneti" ma parla del vino | A | **Vero** | `03-prodotto.txt:27-38` |
| I prodotti correlati non mostrano il prezzo e includono il Soviano 2005 da 100 € | A, B | **Vero** | `03-prodotto.txt:47-56` |
| I titoli sono spezzati lettera per lettera | A | **Vero** | tutti i .txt ("S/h/o/p…") |
| In home manca la barra "Spedizione gratuita" | A, B | **Vero** | assente in `00-home.txt`, presente nelle altre pagine |
| "nosta", ©2021, "nasce nel Maggio del 2005" accanto a "da oltre trent'anni" | A (tutti), B (refuso e ©) | **Vero** | `00-home.txt:115,117,161` |
| Verifica età e banner cookie (14 terze parti) compaiono insieme su ogni pagina | A, B | **Vero** | fondo di ogni .txt; screenshot |
| Nella pagina Contatti il degustazioni punta a `/degustazioni/`, nel footer a `/experiences/degustazioni/` | A, B | **Vero** | `09-contatti.html:3417` e `4732` |
| "Punto vendita → Scopri di più" porta a `/degustazioni#punto-vendita` | B | **Vero** | `09-contatti.html:3365` |
| **Lo stesso testo di recensione è firmato sia da [nome] sia da [nome]** | B | **Vero** (A non se ne accorge) | `09-contatti.txt:160-161` e `168-169` |
| Le recensioni sono "le stesse 5 in loop" | A | **Impreciso** | sono 6 voci diverse, una delle quali attribuita male |
| Nella pagina Contatti non c'è un modulo | A | **Vero** | nessun `<form>` in `09-contatti.html` |
| **"Non c'è una mappa né un link Indicazioni stradali"** | B | **Falso** | l'indirizzo è linkato a Google Maps più volte (`09-contatti.html:2958, 3089, 3249, 4380…`) e anche nel footer di ogni pagina |
| Aggiungere tel e WhatsApp "anche nel footer di ogni pagina" | B | **Già presenti** | footer: `tel:`, `wa.me` e Maps (es. `01-prodotto.html`) |
| Termini §5.2 e §13.7: rimborso entro 30 giorni (per legge sono 14) | B | **Vero** | `07-condizioni.txt:58,169` |
| Termini: §10.7 ripetuto; §6.3 rimanda a una "guida-all'-acquisto" non linkata | B (entrambi), A (solo la guida) | **Vero** | `07-condizioni.txt:68,113,144` |
| Tempi di spedizione "dal giorno stesso a 5 giorni lavorativi" (§6.2) | B | **Vero** | `07-condizioni.txt:66` |
| HTML della home di circa 640 KB con più di 80 fogli di stile | B | **Vero** | 640.487 byte, 84 `rel=stylesheet` |
| Il menu SHOP porta a `/shop/`, "un'altra pagina" funzionante | A | **Non verificabile** | `/shop/` non è nella copia. A dà per scontato che basti puntare lì; B dice invece di controllarlo |

## Voti

| Criterio | A | B | Motivazione |
|---|---|---|---|
| 1. Correttezza | 4 | 3 | A: solo imprecisioni minori (le "5 recensioni", `/shop/` dato per funzionante). B: un errore netto (la mappa c'è ed è linkata ovunque), un conteggio sbagliato (15 invece di 14) e un consiglio già realizzato (tel e WhatsApp nel footer). |
| 2. Concretezza | 5 | 5 | Tutti e due citano righe, URL, classi e testi reali. |
| 3. Importanza | 4 | 5 | Entrambi mettono al primo posto il bottone "Acquista" che porta a una pagina vuota. B trova però due problemi ad alto rischio che A non vede: termini di rimborso contrari al Codice del Consumo e recensioni attribuite alla persona sbagliata. A punta di più sull'esperienza d'acquisto (filtri, casse da 6, inglese, testi spezzati). |
| 4. Utilità pratica | 5 | 4 | A dà una sequenza chiara, con impegno e impatto, e interventi pronti (casse da 6, WhatsApp precompilato, pulsante fisso). B è altrettanto ordinato e aggiunge le metriche per verificare i risultati, ma due consigli sono inutili perché il sito li ha già (mappa, contatti nel footer). |
| 5. Solidità delle motivazioni | 4 | 4 | A ragiona in modo sensato, con poche affermazioni gonfiate. B cita le fonti con un livello di affidabilità e segnala onestamente le ipotesi (E), ma alcune citazioni (Ariely, Deloitte) servono più a decorare che a decidere. |
| 6. Sicurezza | 5 | 5 | Nessun consiglio dannoso. Tutti e due propongono di unire età e cookie "o in sequenza", senza forzare il consenso. B ricorda il controllo dell'età alla consegna e suggerisce una revisione legale. |

## Problemi importanti trovati solo da A (verificati)
- I titoli sono spezzati lettera per lettera in `<span>` (accessibilità e SEO) e ci sono più `<h1>` per pagina (3 in home, 2 in ogni scheda).
- "Caratteristiche dei vigneti" contiene i dati del vino, non del vigneto.
- La categoria ha "Archivi" nel titolo SEO. Mancano i filtri per bianco/rosso/bollicine, anche se le categorie esistono già.
- Non ci sono casse da 6, proprio la soglia della spedizione gratuita.
- La pagina Contatti non ha un modulo di richiesta. Manca un pulsante di contatto fisso su telefono. Il sito è solo in italiano (B lo cita solo nei limiti).
- Incoerenza "dal 2005" / "da oltre trent'anni". Nessuna raccolta di e-mail o newsletter.

## Problemi importanti trovati solo da B (verificati)
- **Termini di vendita non a norma**: rimborso entro 30 giorni (§5.2, §13.7) invece dei 14 dell'art. 56 del Codice del Consumo. In più c'è un §10.7 duplicato.
- **Lo stesso testo di recensione è attribuito a due persone** ([nome] e [nome]): danneggia la credibilità e c'è un possibile problema con la direttiva Omnibus.
- `/negozio/`, la pagina vuota, è indicizzata con canonical su se stessa.
- La possibile medaglia "Silver" dell'Araminto non viene valorizzata; l'anteprima social del Soviano mostra l'annata 2017.
- Pagine pesanti: 640 KB di HTML e 84 fogli di stile.
- "Punto vendita → Scopri di più" porta alla pagina delle degustazioni.

## Preferenza
A è più preciso e ricco sull'esperienza d'acquisto, ma non si accorge di due problemi rischiosi: i termini di rimborso illegali e le recensioni attribuite male.
B li trova e ordina bene le priorità (bottone rotto, costi di spedizione, recensioni, termini), ma sbaglia un fatto verificabile (la mappa c'è) e ripete consigli che il sito già soddisfa.
Nel complesso preferisco di poco B, perché i problemi legali e di fiducia che trova pesano per il titolare più delle ottimizzazioni che trova solo A.

PUNTEGGI A=4,5,4,5,4,5 B=3,5,5,4,4,5 PREFERENZA=B
