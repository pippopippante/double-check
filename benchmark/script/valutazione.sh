#!/usr/bin/env bash
# Valutazione del benchmark: giudizio alla cieca (A/B) + verifica delle fonti dei report "con".
SITI=$HOME/Desktop/skill/10siti
RES=$HOME/Desktop/risultati-benchmark
GIU=$HOME/Desktop/giudizio-benchmark
VER=$HOME/Desktop/verifica-fonti
SP=$HOME/benchmark-tmp
LOG=$SP/logs
KEY=$SP/chiave-ab.txt   # quale versione è A e quale B: il giudice non la vede
SKILL=~/.claude/skills/double-check
PARK=~/.claude/skill-parcheggiata-benchmark
MD=~/.claude/CLAUDE.md
win() { cygpath -w "$1"; }
mkdir -p "$LOG" "$GIU" "$VER"

restore() {
  [ -d "$PARK/double-check" ] && mv "$PARK/double-check" "$SKILL" && rmdir "$PARK"
  [ -f "$MD.benchmark-backup" ] && mv "$MD.benchmark-backup" "$MD"
  echo "$(date +%H:%M) skill e CLAUDE.md ripristinati"
}
trap restore EXIT
mkdir -p "$PARK" && mv "$SKILL" "$PARK/"
cp "$MD" "$MD.benchmark-backup"
sed -i '/^# double-check$/,/^$/d; /double-check/d' "$MD"

# Prepara le cartelle: A/B a caso per il giudice, report "con" per la verifica
: > "$KEY"
for d in "$SITI"/*/; do
  s=$(basename "$d")
  mkdir -p "$GIU/$s" "$VER/$s"
  if [ $((RANDOM % 2)) -eq 0 ]; then a=senza; b=con; else a=con; b=senza; fi
  cp "$RES/$s-$a.md" "$GIU/$s/A.md"; cp "$RES/$s-$b.md" "$GIU/$s/B.md"
  echo "$s A=$a B=$b" >> "$KEY"
  cp "$RES/$s-con.md" "$VER/$s/report.md"
done

giudica() {
  local s=$1 dir; dir=$(win "$GIU/$s")
  local p="Due consulenti hanno analizzato il sito di un'azienda di Spoleto, con l'obiettivo di aiutarla a ottenere più clienti offrendo la migliore esperienza a chi visita il sito. In questa cartella c'è la copia salvata del sito: pagine.txt elenca le pagine, e per ognuna ci sono il testo (.txt), l'HTML e gli screenshot desktop e telefono. Le due analisi sono in $dir\\A.md e $dir\\B.md.

Valuta le due analisi come farebbe il titolare dell'azienda affiancato da un esperto severo. Per ogni affermazione importante che fanno sul sito, controlla nei file se è vera.

Dai un voto da 1 a 5 ad A e a B su ogni criterio:
1. Correttezza: quello che dicono del sito è vero? Ogni errore di fatto abbassa il voto.
2. Concretezza: indicano elementi precisi di questo sito, o consigli generici validi per qualsiasi sito?
3. Importanza: hanno individuato i problemi che contano di più per questa azienda?
4. Utilità pratica: il titolare saprebbe cosa fare e in che ordine?
5. Solidità delle motivazioni: le giustificazioni reggono? Le affermazioni su come si comportano le persone sono credibili o gonfiate? Non premiare la quantità di citazioni in sé.
6. Sicurezza: 5 se nessun consiglio è dannoso, ingannevole o illegale; meno per ogni consiglio rischioso.

Poi elenca i problemi importanti trovati solo da A e solo da B (verificati nei file), e indica la tua preferenza complessiva (A, B o pari) motivandola in 3 righe.

Non fare ricerche web, non aprire altre cartelle, non modificare niente. Scrivi il giudizio in $dir\\giudizio.md. L'ultima riga del file deve essere esattamente in questo formato:
PUNTEGGI A=n,n,n,n,n,n B=n,n,n,n,n,n PREFERENZA=A|B|PARI"
  (cd "$SITI/$s" && timeout 3600 claude -p "$p" --allowedTools "Read Glob Grep Write" \
    --add-dir "$dir" --permission-mode acceptEdits --output-format json > "$LOG/$s-giudizio.json" 2>&1)
  [ -f "$GIU/$s/giudizio.md" ] && echo "$(date +%H:%M) ok     giudizio $s" || echo "$(date +%H:%M) MANCA  giudizio $s"
}

verifica() {
  local s=$1 host; host=$(sed -n 's|Sito: https\?://\(www\.\)\?\([^/]*\).*|\2|p' "$SITI/$s/pagine.txt")
  local p="Il file report.md in questa cartella è un'analisi del sito $host che cita fonti esterne per giustificare le sue affermazioni.

Per ogni link esterno citato (escludi i link a $host), apri la pagina con WebFetch e verifica se dice davvero quello che il report le attribuisce, numeri compresi. Classifica ogni citazione come:
- CONFERMATA: la fonte dice quello che il report afferma
- PARZIALE: la fonte va nella stessa direzione ma il numero è diverso, il contesto è diverso o il report la sovrainterpreta
- NON SUPPORTATA: la fonte non dice quello che il report le attribuisce
- IRRAGGIUNGIBILE: la pagina non si apre

Segnala a parte anche le affermazioni che citano uno studio, un numero o una percentuale senza link.

Scrivi il risultato in verifica.md in questa cartella: una tabella con link, affermazione del report, esito e nota breve, poi l'elenco delle affermazioni senza link. Non modificare report.md. L'ultima riga del file deve essere esattamente in questo formato:
CONTEGGIO CONFERMATA=n PARZIALE=n NONSUPPORTATA=n IRRAGGIUNGIBILE=n SENZALINK=n"
  (cd "$VER/$s" && timeout 3600 claude -p "$p" --allowedTools "Read Write WebFetch WebSearch" \
    --permission-mode acceptEdits --output-format json > "$LOG/$s-verifica.json" 2>&1)
  [ -f "$VER/$s/verifica.md" ] && echo "$(date +%H:%M) ok     verifica $s" || echo "$(date +%H:%M) MANCA  verifica $s"
}

fase() { # $1 funzione
  local n=0
  for d in "$SITI"/*/; do
    "$1" "$(basename "$d")" &
    n=$((n+1)); [ $((n % 5)) -eq 0 ] && wait
  done
  wait
}

echo "$(date +%H:%M) giudizio alla cieca"; fase giudica
echo "$(date +%H:%M) verifica delle fonti"; fase verifica
echo "$(date +%H:%M) FINITO: $(ls "$GIU"/*/giudizio.md 2>/dev/null | wc -l)/10 giudizi, $(ls "$VER"/*/verifica.md 2>/dev/null | wc -l)/10 verifiche"
