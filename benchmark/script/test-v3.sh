#!/usr/bin/env bash
# Test skill v3 su 3 siti: nuove analisi, poi giudizio alla cieca a tre vie (senza / con vecchia / con v3).
SITI=$HOME/Desktop/skill/10siti
RES=$HOME/Desktop/risultati-benchmark
RES_WIN=$(cygpath -w "$RES")
GIU=$HOME/Desktop/giudizio-v3
SP=$HOME/benchmark-tmp
LOG=$SP/logs-v3
KEY=$SP/chiave-v3.txt
SKILL=~/.claude/skills/double-check
PARK=~/.claude/skill-parcheggiata-benchmark
MD=~/.claude/CLAUDE.md
SEL="moda-multimarca enoteca cantina"
mkdir -p "$LOG" "$GIU"

analizza() {
  local p="In questa cartella c'è una copia salvata del sito di un'azienda di Spoleto, fotografata il 26/09/2026. Per ogni pagina ci sono l'HTML, il testo visibile (.txt) e gli screenshot desktop e telefono (.jpg). L'elenco delle pagine con i loro indirizzi è in pagine.txt.

Analizza il sito come se lavorassi per quest'azienda. L'obiettivo è che il sito porti più clienti (vendite, ordini, prenotazioni o contatti, a seconda di cosa fa l'azienda) offrendo la migliore esperienza a chi lo visita.

Prima individua le 3-4 parti del sito più importanti per questo obiettivo e spiega perché le hai scelte. Poi analizzale e dai raccomandazioni concrete su cosa cambiare, in ordine di priorità.

Regole:
- Il sito analizzalo solo da questi file, senza visitare la versione online. Per tutto il resto puoi fare le ricerche che vuoi.
- Non aprire le cartelle degli altri siti né la cartella risultati-benchmark, se non per scrivere il tuo report.
- Scrivi il report in $RES_WIN\\$1-con-v3.md e non modificare nient'altro."
  (cd "$SITI/$1" && timeout 3600 claude -p "$p" \
    --allowedTools "Read Glob Grep WebSearch WebFetch Write Skill Agent" \
    --add-dir "$RES_WIN" --permission-mode acceptEdits --output-format json > "$LOG/$1-v3.json" 2>&1)
  [ -f "$RES/$1-con-v3.md" ] && echo "$(date +%H:%M) ok     analisi $1" || echo "$(date +%H:%M) MANCA  analisi $1"
}

giudica() {
  local s=$1 dir; dir=$(cygpath -w "$GIU/$s")
  local p="Tre consulenti hanno analizzato il sito di un'azienda di Spoleto, con l'obiettivo di aiutarla a ottenere più clienti offrendo la migliore esperienza a chi visita il sito. In questa cartella c'è la copia salvata del sito: pagine.txt elenca le pagine, e per ognuna ci sono il testo (.txt), l'HTML e gli screenshot desktop e telefono. Le tre analisi sono in $dir\\A.md, $dir\\B.md e $dir\\C.md.

Valuta le tre analisi come farebbe il titolare dell'azienda affiancato da un esperto severo. Per ogni affermazione importante che fanno sul sito, controlla nei file se è vera.

Dai un voto da 1 a 5 a ciascuna su ogni criterio:
1. Correttezza: quello che dicono del sito è vero? Ogni errore di fatto abbassa il voto.
2. Concretezza: indicano elementi precisi di questo sito, o consigli generici validi per qualsiasi sito?
3. Importanza: hanno individuato i problemi che contano di più per questa azienda?
4. Utilità pratica: il titolare saprebbe cosa fare e in che ordine?
5. Solidità delle motivazioni: le giustificazioni reggono? Le affermazioni su come si comportano le persone sono credibili o gonfiate? Non premiare la quantità di citazioni in sé.
6. Sicurezza: 5 se nessun consiglio è dannoso, ingannevole o illegale; meno per ogni consiglio rischioso.
7. Esperienza d'uso: quanto bene hanno colto i problemi concreti che incontra chi naviga e compra sul sito (navigazione, ricerca e filtri, schede, carrello, telefono, dettagli trascurati)?

Poi elenca i problemi importanti trovati da una sola delle tre (verificati nei file), e metti le tre analisi in classifica motivandola in 3-4 righe.

Non fare ricerche web, non aprire altre cartelle, non modificare niente. Scrivi il giudizio in $dir\\giudizio.md. L'ultima riga del file deve essere esattamente in questo formato:
PUNTEGGI A=n,n,n,n,n,n,n B=n,n,n,n,n,n,n C=n,n,n,n,n,n,n CLASSIFICA=X>Y>Z"
  (cd "$SITI/$s" && timeout 3600 claude -p "$p" --allowedTools "Read Glob Grep Write" \
    --add-dir "$dir" --permission-mode acceptEdits --output-format json > "$LOG/$s-giudizio.json" 2>&1)
  [ -f "$GIU/$s/giudizio.md" ] && echo "$(date +%H:%M) ok     giudizio $s" || echo "$(date +%H:%M) MANCA  giudizio $s"
}

restore() {
  [ -d "$PARK/double-check" ] && mv "$PARK/double-check" "$SKILL" && rmdir "$PARK"
  [ -f "$MD.benchmark-backup" ] && mv "$MD.benchmark-backup" "$MD"
  echo "$(date +%H:%M) skill e CLAUDE.md ripristinati"
}

# 1. Analisi con la skill aggiornata (skill attiva)
echo "$(date +%H:%M) analisi v3"
for s in $SEL; do analizza $s & done
wait

# 2. Giudizio a tre vie (skill parcheggiata)
trap restore EXIT
mkdir -p "$PARK" && mv "$SKILL" "$PARK/"
cp "$MD" "$MD.benchmark-backup"
sed -i '/^# double-check$/,/^$/d; /double-check/d' "$MD"
: > "$KEY"
for s in $SEL; do
  mkdir -p "$GIU/$s"
  read -r x y z < <(printf "senza\ncon\ncon-v3\n" | shuf | tr '\n' ' ')
  cp "$RES/$s-$x.md" "$GIU/$s/A.md"; cp "$RES/$s-$y.md" "$GIU/$s/B.md"; cp "$RES/$s-$z.md" "$GIU/$s/C.md"
  echo "$s A=$x B=$y C=$z" >> "$KEY"
done
echo "$(date +%H:%M) giudizio a tre vie"
for s in $SEL; do giudica $s & done
wait
echo "$(date +%H:%M) FINITO"
