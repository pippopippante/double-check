---
name: evidence-first
description: Prima di prendere decisioni progettuali importanti o modificare significativamente un prodotto, fai ricerca mirata sulle questioni che non possono essere risolte con semplice buon senso o requisiti espliciti. Usa questa skill per UX, UI, architettura dell'informazione, conversione, copy, pricing, onboarding, game design, sistemi di progressione/economia e altre decisioni che influenzano significativamente utenti o risultati del progetto. Non usarla per bug fix, refactoring, piccole modifiche o decisioni già determinate da requisiti chiari.
---

# Scientifically Better

**Research before important decisions. Act after evidence.**

Questa skill serve a evitare decisioni importanti basate soltanto su gusto, abitudine o "si fa così".

Non trasformare ogni attività in una ricerca. Il tuo compito principale resta **capire il progetto e costruire la soluzione migliore per il suo contesto**. La ricerca serve quando può cambiare una decisione importante.

## 1. Decision gate

Prima di agire, chiediti:

### A. Questa è una decisione?

Non fare ricerca se stai semplicemente:
- correggendo un bug;
- applicando una richiesta precisa;
- facendo refactoring;
- seguendo una convenzione tecnica consolidata;
- modificando un dettaglio senza conseguenze significative.

### B. La decisione conta?

Fai ricerca se sbagliare potrebbe:

- peggiorare significativamente l'esperienza dell'utente;
- ridurre un risultato importante del prodotto;
- creare costi o conseguenze difficili da invertire;
- fissare una struttura difficile da cambiare in seguito;
- creare rischi legali, etici o di accessibilità;
- scegliere tra alternative plausibili senza una ragione verificabile.

### C. Esistono evidenze esterne utili?

Se esistono studi, dati, benchmark, standard, casi documentati o dati del progetto che possono distinguere le alternative, **cercali prima di decidere**.

Se la risposta è no, ragiona esplicitamente come ipotesi. Non inventare evidenze.

---

# 2. Prima capisci il progetto

Prima della ricerca esterna, analizza il progetto.

Identifica:

- chi usa il prodotto;
- cosa sta cercando di ottenere;
- quale risultato conta per il progetto;
- quali vincoli esistono;
- quali dati reali sono disponibili;
- quali parti dell'esperienza sono già problematiche;
- quali alternative sono realmente possibili.

**I dati specifici del progetto hanno priorità sulle generalizzazioni esterne.**

Se esistono analytics, feedback degli utenti, recensioni, ticket, interviste, test, telemetria o altri dati comportamentali, usali.

Non cercare una risposta generica a una domanda che i dati del progetto possono già risolvere.

---

# 3. Definisci la domanda prima di cercare

Non fare una ricerca vaga come:

> "Qual è il modo migliore di progettare una pagina prodotto?"

Trasformala in una domanda decisionale:

> "Per questa pagina prodotto, dobbiamo mostrare X prima di Y oppure Y prima di X?"

Una buona domanda di ricerca deve poter **cambiare una decisione concreta**.

Se la ricerca non può cambiare ciò che farai, probabilmente non serve.

---

# 4. Ricerca proporzionata

La quantità di ricerca deve essere proporzionata all'importanza della decisione.

### Decisione piccola
1-3 fonti buone, oppure nessuna ricerca se la risposta è già consolidata.

### Decisione importante
Circa 5-10 fonti pertinenti.

### Decisione molto importante o incerta
Ricerca più ampia, eventualmente suddivisa per domanda o delegata a subagenti.

Non raccogliere fonti per il gusto di raccoglierle.

**Quando hai abbastanza evidenza per distinguere le alternative, fermati.**

---

# 5. Gerarchia delle evidenze

Preferisci, nell'ordine:

**A — Evidenza molto forte**
- meta-analisi;
- revisioni sistematiche robuste;
- risultati replicati;
- normative e obblighi legali.

**B — Evidenza forte**
- enti professionali riconosciuti;
- grandi studi di settore;
- dataset ampi;
- benchmark affidabili.

**C — Evidenza limitata ma utile**
- singoli studi;
- esperimenti;
- A/B test pubblicati;
- case study;
- postmortem;
- dati di prodotto pubblicati.

**D — Evidenza indiretta**
- pattern condivisi dalla concorrenza;
- pratiche diffuse;
- esempi di prodotti simili.

**E — Ipotesi**
- ragionamento;
- esperienza;
- opinione;
- intuizione.

Non presentare E come fatto.

### Regola fondamentale

**Non citare mai uno studio, un numero o una percentuale che non hai verificato.**

Apri la fonte originale quando possibile.

Uno snippet dei risultati di ricerca non è una fonte.

Se una fonte commerciale cita una statistica, cerca la fonte primaria prima di usarla.

---

# 6. Cerca anche cosa potrebbe smentire la prima idea

Non usare la ricerca soltanto per confermare la soluzione che ti piace.

Per ogni decisione importante chiediti:

> "Cosa potrebbe dimostrare che questa scelta è sbagliata?"

Cerca attivamente:

- evidenze contrarie;
- studi con risultati diversi;
- limiti metodologici;
- differenze di contesto;
- popolazioni diverse;
- condizioni in cui l'effetto non si verifica.

Se le fonti sono in conflitto, dichiaralo.

Non trasformare automaticamente una maggioranza di fonti in certezza.

---

# 7. Concorrenza: osservazione, non prova

La concorrenza può dirti:

> "Questo pattern è comune."

Non può dirti automaticamente:

> "Questo pattern funziona."

Quando analizzi concorrenti:

1. osserva cosa fanno;
2. cerca pattern ricorrenti;
3. verifica se il loro contesto è comparabile;
4. chiediti perché potrebbero permettersi quella soluzione;
5. confronta il pattern con le evidenze A-C;
6. scarta ciò che è contrario a legalità, etica o accessibilità.

**Il successo di un concorrente non dimostra che una sua specifica scelta abbia causato il successo.**

---

# 8. Non confondere preferenze con comportamento

Evita conclusioni come:

> "Gli utenti preferiscono X."

quando la fonte misura soltanto preferenze dichiarate.

Distingui:

- ciò che le persone dicono di preferire;
- ciò che fanno;
- ciò che migliora un risultato misurabile;
- ciò che funziona soltanto in un particolare contesto.

Quando possibile, privilegia evidenze comportamentali rispetto alle sole opinioni dichiarate.

---

# 9. Decisione

Dopo la ricerca, non produrre una lunga bibliografia.

Produci una sintesi decisionale.

Per ogni decisione importante:

**Decisione:** cosa proponiamo di fare.

**Evidenza:** quali fonti supportano o contraddicono la scelta.

**Forza dell'evidenza:** A, B, C, D o E.

**Applicabilità:** perché l'evidenza è pertinente al nostro progetto oppure quali differenze di contesto esistono.

**Rischio:** cosa potrebbe rendere sbagliata la scelta.

**Verifica:** quale dato, metrica o test useremo per verificarla.

Se l'evidenza non permette di distinguere chiaramente le alternative, **non inventare una certezza**. Scegli eventualmente l'opzione più ragionevole come ipotesi e dichiarala come tale.

---

# 10. Separare fatti e decisioni

Mantieni sempre questa distinzione:

**Fatto**
> Uno studio X ha osservato Y.

**Interpretazione**
> Questo potrebbe essere rilevante perché il nostro prodotto presenta condizioni simili.

**Decisione**
> Propongo quindi di fare Z.

Non trasformare automaticamente un risultato di ricerca in una prescrizione.

---

# 11. Ricerca prima dell'azione

Se la decisione è abbastanza importante da attivare questa skill:

**non implementare immediatamente la soluzione.**

Prima:

1. analizza il progetto;
2. identifica le decisioni importanti;
3. formula le domande;
4. fai la ricerca necessaria;
5. sintetizza le evidenze;
6. scegli una direzione;
7. solo dopo procedi con l'implementazione.

Se l'utente ha chiesto esplicitamente di **ricercare prima di decidere**, questa sequenza è obbligatoria.

Se invece l'utente ha già deciso esplicitamente cosa vuole fare e sta chiedendo soltanto l'implementazione, non usare la skill per contestare inutilmente la decisione.

---

# 12. Comunicazione

Quando attivi la skill, comunica brevemente:

> "Questa decisione può avere un impatto significativo, quindi prima verifico le evidenze sui punti che potrebbero cambiare la soluzione."

Non interrompere il lavoro con spiegazioni metodologiche lunghe.

Alla fine della ricerca comunica:

- cosa hai verificato;
- quali evidenze hai trovato;
- cosa rimane incerto;
- quale decisione ne deriva;
- come può essere verificata nel progetto.

---

# 13. Pacchetti di conoscenza

Se esistono knowledge pack pertinenti, controllali prima di iniziare una nuova ricerca.

Esempi:

- `references/ecommerce/evidenze.md`
- `references/ecommerce/legale-ue-it.md`
- `references/testi-web.md`
- `references/studi-deboli.md`

Usali come materiale di partenza, non come sostituto automatico delle fonti primarie quando la decisione è importante.

Se `references/studi-deboli.md` contiene un effetto psicologico noto come debole o non replicato, non usarlo come fondamento senza verificare evidenze migliori.

Se una conoscenza ricorre frequentemente, proponi di trasformarla in un knowledge pack.

---

# 14. Output minimo

La ricerca deve produrre qualcosa di utilizzabile:

> **Decisione:** [cosa fare]
>
> **Perché:** [evidenze principali]
>
> **Forza:** [A-E]
>
> **Applicabilità:** [perché vale / non vale per questo progetto]
>
> **Rischi:** [cosa potrebbe andare diversamente]
>
> **Verifica:** [come lo misuriamo]
>
> **Fonti:** [link alle fonti utilizzate]

Per decisioni semplici basta una versione molto più breve.

**Non trasformare la ricerca in un report accademico se servono soltanto due informazioni per decidere.**