# double-check

Una skill per [Claude Code](https://claude.com/claude-code) che, prima delle decisioni importanti, fa fermare Claude a controllare come si fanno bene. Prima di costruire o rifare un pezzo che conta (una pagina, un flusso d'acquisto, un prezzo, un testo, un sistema di gioco), Claude cerca come farlo al meglio in fonti attendibili invece di decidere a gusto.

La skill è scritta in italiano.

## Cosa fa

- **Si ferma solo quando serve**: se sbagliare fa danno a chi usa il prodotto, se altrimenti si deciderebbe a gusto e se qualcuno ha studiato la questione. Non interviene su bug, refactoring o piccole modifiche.
- **Nelle revisioni segue un ordine preciso**. Prima fa un'analisi completa con gli occhi di chi usa il prodotto, da telefono e da computer. Poi fa ricerca solo sui 2-4 punti più importanti. Infine rilegge tutto per non perdere i problemi pratici.
- **Dà un livello a ogni prova**, dalla A (legge o risultati replicati) alla E (ipotesi). Non cita mai numeri a memoria e mette il link a ogni fonte.
- **Guarda la concorrenza con un filtro**: controlla se una scelta la fanno quasi tutti, se funziona solo per chi ha un marchio noto e se è legale.
- **Mette al primo posto chi usa il prodotto**: niente dark pattern, niente urgenza finta. Le vendite vengono di conseguenza.

Con la skill ci sono quattro schede di conoscenza, che Claude apre solo quando servono:

| File | Contenuto |
|---|---|
| `references/ecommerce/evidenze.md` | Checkout, pagina prodotto, velocità, recensioni, prezzi |
| `references/ecommerce/legale-ue-it.md` | Cosa è vietato o obbligatorio in Italia e nell'UE |
| `references/testi-web.md` | Come si legge sul web: titoli, descrizioni, pulsanti |
| `references/studi-deboli.md` | Effetti psicologici famosi che non reggono alle verifiche |

## Installazione

```bash
git clone https://github.com/pippopippante/double-check.git
mkdir -p ~/.claude/skills/double-check
cp -r double-check/double-check/SKILL.md double-check/double-check/references ~/.claude/skills/double-check/
```

Claude Code la trova da solo e la usa quando la richiesta corrisponde alla descrizione. Per farla usare più spesso puoi aggiungere questa riga al tuo `~/.claude/CLAUDE.md`:

```markdown
Prima di progettare o rifare un pezzo importante di un progetto (pagine e flussi, UX, prezzi, testi, sistemi di gioco) e all'inizio di revisioni e audit, carica la skill double-check.
```

## Come è stata provata

**Benchmark su 10 siti di aziende di Spoleto** (settembre 2026): alimentari, abbigliamento, cantina, enoteca, norcineria, prodotti tipici, hotel-ristorante, frantoio, moda multimarca, gioielleria. Il 26/09/2026 abbiamo salvato una copia di ogni sito. Ogni copia è stata analizzata due volte, con lo stesso prompt: una volta con la skill e una volta senza. Nella prova senza, la skill era stata tolta davvero dalla cartella. Poi un giudice cieco (un'altra sessione di Claude) ha confrontato i due report senza sapere quale fosse quale e ha verificato le affermazioni sui file del sito.

- **Il report con la skill è stato preferito 10 volte su 10.**
- Con la skill ha trovato rischi legali in 8 siti su 10: recesso, rimborsi, prezzo al kg, vendita di vino senza verifica dell'età. Ha trovato anche incoerenze gravi: prezzi che non tornavano tra una confezione e l'altra, una provenienza della carne diversa tra due pagine, la stessa recensione firmata da due persone.
- Senza la skill Claude non ha fatto nessuna ricerca web e ha citato qualche numero a memoria. Con la skill ogni report aveva da 6 a 15 fonti con link.
- Senza la skill però Claude ha visto meglio l'esperienza d'uso: filtri, negozio nascosto nel menu, carrello, dati di prova dimenticati. Da qui è nata la regola "prima l'analisi da utente, poi la ricerca".

| Voto del giudice (1-5) | Senza | Con |
|---|---|---|
| Correttezza | 3,7 | 4,1 |
| Concretezza | 4,7 | 5,0 |
| Importanza dei problemi trovati | 3,9 | 4,9 |
| Utilità pratica | 4,6 | 4,4 |
| Solidità delle motivazioni | 3,4 | 4,2 |
| Sicurezza (legale, dati) | 4,4 | 4,9 |

**Attivazione su richieste reali** (28/09/2026). Abbiamo preso 13 richieste vere da un progetto e-commerce in lavorazione (non pubblico) e le abbiamo aggiunte a 3 richieste di controllo, dove la skill non deve attivarsi. Ogni richiesta è stata fatta in una sessione nuova, senza chiedere ricerche.

- Nei 12 casi in cui doveva attivarsi, si è attivata sempre.
- Non si è mai attivata per sbaglio nei 3 controlli (un bug, una richiesta precisa, un cambio di orari).
- Il tredicesimo caso ha mostrato un buco: con una richiesta precisa che tocca un obbligo di legge ("togli il prezzo al kg"), la skill esegue senza avvisare.

## Limiti

- Sono prove piccole: 10 siti, una prova per sito. Il giudice è lo stesso modello e la cecità non è perfetta, perché link e livelli fanno riconoscere il report con la skill.
- Le fonti citate nei report non sono ancora state controllate una per una.
- È stata provata quasi solo su siti e-commerce.
- Costa token: un'analisi con ricerca consuma molto più di una senza.
- Il buco sugli obblighi di legge descritto sopra.

## Cosa c'è nel repository

| Cartella | Contenuto |
|---|---|
| `double-check/` | La skill: `SKILL.md` e `references/`. Dentro c'è anche `evidence-first/`, una versione alternativa tenuta solo come riferimento, che non fa parte della skill. |
| `benchmark/report/` | I report delle analisi, con e senza skill. Sono anonimi: nomi, siti, contatti e indirizzi sono sostituiti da segnaposto come `[nome azienda]`, e i file prendono il nome del settore. Le copie dei siti non sono pubblicate. |
| `benchmark/giudizi/`, `benchmark/giudizi-v3/` | I giudizi alla cieca. Le chiavi A/B sono in `benchmark/script/` |
| `benchmark/script/` | Gli script usati. I percorsi sono quelli del PC dove sono stati lanciati: vanno adattati. |
| `benchmark/log/` | L'output di ogni sessione (durata, costo) |
| `benchmark/log/casi-reali/risultati.json` | Le 16 richieste della prova di attivazione e il loro esito. Il sito su cui sono state fatte non è pubblico. |

Fino al 29/09/2026 la skill si chiamava `scientifically-better`: i log e i report più vecchi usano ancora quel nome.
