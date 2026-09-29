#!/usr/bin/env bash
# Benchmark double-check: 10 siti x (senza, con), 5 sessioni in parallelo.
SITI=$HOME/Desktop/skill/10siti
RES=$HOME/Desktop/risultati-benchmark
RES_WIN=$(cygpath -w "$RES")
LOG=$HOME/benchmark-tmp/logs
SKILL=~/.claude/skills/double-check
PARK=~/.claude/skill-parcheggiata-benchmark
MD=~/.claude/CLAUDE.md
mkdir -p "$RES" "$LOG"
rm -f "$RES/prova.txt"

restore() {
  [ -d "$PARK/double-check" ] && mv "$PARK/double-check" "$SKILL" && rmdir "$PARK"
  [ -f "$MD.benchmark-backup" ] && mv "$MD.benchmark-backup" "$MD"
  echo "$(date +%H:%M) skill e CLAUDE.md ripristinati"
}
trap restore EXIT

run() { # $1 sito, $2 versione
  local p="In questa cartella c'è una copia salvata del sito di un'azienda di Spoleto, fotografata il 26/09/2026. Per ogni pagina ci sono l'HTML, il testo visibile (.txt) e gli screenshot desktop e telefono (.jpg). L'elenco delle pagine con i loro indirizzi è in pagine.txt.

Analizza il sito come se lavorassi per quest'azienda. L'obiettivo è che il sito porti più clienti (vendite, ordini, prenotazioni o contatti, a seconda di cosa fa l'azienda) offrendo la migliore esperienza a chi lo visita.

Prima individua le 3-4 parti del sito più importanti per questo obiettivo e spiega perché le hai scelte. Poi analizzale e dai raccomandazioni concrete su cosa cambiare, in ordine di priorità.

Regole:
- Il sito analizzalo solo da questi file, senza visitare la versione online. Per tutto il resto puoi fare le ricerche che vuoi.
- Non aprire le cartelle degli altri siti né la cartella risultati-benchmark, se non per scrivere il tuo report.
- Scrivi il report in $RES_WIN\\$1-$2.md e non modificare nient'altro."
  (cd "$SITI/$1" && timeout 3600 claude -p "$p" \
    --allowedTools "Read Glob Grep WebSearch WebFetch Write Skill Agent" \
    --add-dir "$RES_WIN" --permission-mode acceptEdits --output-format json \
    > "$LOG/$1-$2.json" 2> "$LOG/$1-$2.err")
  if [ -f "$RES/$1-$2.md" ]; then echo "$(date +%H:%M) ok     $1-$2"; else echo "$(date +%H:%M) MANCA  $1-$2"; fi
}

fase() { # $1 versione
  local n=0
  for d in "$SITI"/*/; do
    run "$(basename "$d")" "$1" &
    n=$((n+1)); [ $((n % 5)) -eq 0 ] && wait
  done
  wait
}

# Fase 1: senza skill (skill spostata, riga tolta dal CLAUDE.md)
mkdir -p "$PARK" && mv "$SKILL" "$PARK/"
cp "$MD" "$MD.benchmark-backup"
sed -i '/^# double-check$/,/^$/d; /double-check/d' "$MD"
echo "$(date +%H:%M) fase SENZA skill"
fase senza
restore; trap - EXIT

# Fase 2: con skill
echo "$(date +%H:%M) fase CON skill"
fase con
echo "$(date +%H:%M) FINITO: $(ls "$RES"/*.md 2>/dev/null | wc -l)/20 report"
