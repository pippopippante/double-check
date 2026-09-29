# [nome azienda] (Spoleto): analisi del sito per portare più clienti

Fonte: copia salvata del sito [sito] del 26/09/2026 (10 pagine: home, 3 schede prodotto, pagina Shop, categoria "Bottiglia singola", home con prodotto aggiunto al carrello, termini e condizioni, contatti). Ho analizzato solo HTML, testo e screenshot desktop/telefono. Non ho visitato il sito online.

## Cosa fa l'azienda e cosa deve ottenere il sito

[nome azienda] è una cantina di Spoleto (Trebbiano Spoletino, Grechetto e Sangiovese Colli Martani, Spoleto DOC). Il sito ha tre modi per guadagnare:

1. **Vendita online di vino** (WooCommerce: 14 etichette da 10 a 100 €, spedizione gratuita da 6 bottiglie). È la conversione misurabile e il motivo per cui esiste il sito.
2. **Degustazioni e visite in cantina**, da prenotare ("Prenota la tua degustazione con un click!").
3. **Vendita diretta in cantina e agriturismo** "Il Molino Antico" (quest'ultimo è un sito esterno).

Il cliente tipico è un turista che sta per venire (o è appena stato) in Umbria, oppure qualcuno che ha assaggiato il vino e vuole riordinarlo. Il sito deve quindi fare due cose: **vendere bottiglie** e **far prenotare visite/degustazioni**.

## Le 4 parti più importanti e perché

| # | Parte | Perché conta |
|---|-------|--------------|
| 1 | **Ingresso al negozio: bottone "Acquista" della home e pagina Shop** | È la strada principale verso la vendita. Se si rompe qui, tutto il resto non serve. |
| 2 | **Scheda prodotto** (Araminto, Soviano Regale, La Pettinata) | È qui che si decide l'acquisto. È la pagina dove arriva chi cerca su Google il nome del vino. |
| 3 | **Home e primo impatto (verifica età + banner cookie)** | È la prima schermata di ogni visitatore, anche di chi arriva direttamente su un prodotto. Oggi due finestre coprono tutto. |
| 4 | **Percorso di prenotazione di degustazioni/visite (pagina Contatti)** | È la seconda fonte di ricavi e il mezzo per trasformare un turista in un cliente che riordina. |

---

## 1. Ingresso al negozio: il bottone "Acquista" porta a una pagina vuota (PRIORITÀ MASSIMA)

**Cosa ho trovato**
- Il bottone principale della home, **"Acquista"**, punta a `[sito]` (00-home.html, riga 2933).
- Quella pagina (04-categoria) ha il titolo "Shop" e **nessun prodotto**: nell'HTML l'articolo della pagina è vuoto (`<div class="page-content"></div>`). Nello screenshot si passa direttamente dal titolo ai blocchi del footer. Il cliente più motivato, quello che clicca subito "Acquista", finisce su una pagina senza niente da comprare.
- Il menu "SHOP" e gli altri link puntano invece a `/shop/`, un'altra pagina. Due pagine per lo stesso negozio vuol dire link incoerenti e contenuti che Google considera duplicati o vuoti.
- La pagina di categoria che funziona davvero, "Bottiglia singola" (05-categoria), mostra i 14 vini con prezzi e il tasto "Aggiungi al carrello". Però:
  - le etichette sono in un ordine che non aiuta a scegliere (Bianco base 10 €, poi Rosso base, poi Pettinata… il Soviano 2005 a 100 € in mezzo alla lista);
  - non ci sono filtri per bianco/rosso/bollicine, anche se le categorie esistono già (`vino-bianco`, `vino-rosso`, `spumanti`, `riserve-di-cantina`, `le-eccellenze`);
  - la categoria si chiama "Bottiglia singola Archivi" (titolo SEO generato in automatico);
  - non c'è una cassa/box da 6, anche se è proprio la soglia della spedizione gratuita.

**Raccomandazioni**
1. **Subito:** far puntare il bottone "Acquista" della home a `/shop/` (o alla categoria con tutti i vini), oppure mettere un redirect 301 da `/negozio/` a `/shop/`. Poi controllare tutti i link del sito, bottoni degli header e dei footer compresi, perché portino all'unica pagina negozio. È un intervento di 10 minuti, con l'impatto più alto di tutto il report.
2. Nella pagina Shop dividere i vini in **Bianchi / Rossi / Rosato e bollicine / Riserve di cantina**, con filtri a pulsante in alto (le categorie WooCommerce ci sono già). Mettere prima i vini più venduti o premiati e la "punta" della cantina (Trebbiano Spoletino Superiore, Soviano Regale).
3. Aggiungere prodotti **"Cassa da 6"** (es. "Degustazione [nome azienda]: 6 vini", "6 bianchi", "3+3") con un piccolo prezzo vantaggioso. Fa salire lo scontrino medio e fa raggiungere automaticamente la spedizione gratuita.
4. Rinominare i titoli SEO delle categorie ("Vini bianchi umbri – [nome azienda], Spoleto") e togliere "Archivi".

## 2. Scheda prodotto: tecnica ma poco persuasiva e con dati incoerenti (PRIORITÀ ALTA)

**Cosa ho trovato**
- Buono: prezzo chiaro, selettore quantità, pulsante "Aggiungi al carrello", scheda tecnica completa con PDF scaricabile e barra "Spedizione gratuita a partire da 6 bottiglie".
- **Annate incoerenti**, che fanno sembrare il negozio trascurato e creano dubbi su cosa si riceverà:
  - Araminto: URL e meta description dicono **2019**, titolo e prezzo **2020**;
  - La Pettinata: URL, `<title>` e meta description dicono **2022**, la pagina **2024**, e "Prima annata: 2022";
  - Soviano Regale: la meta description è corretta (2021).
- La sezione si intitola **"Caratteristiche dei vigneti"**, ma parla del vino (colore, profumo, gusto). Dei vigneti (esposizione, altitudine, suolo, età delle viti) non c'è nulla, e sono proprio le informazioni che distinguono una piccola cantina.
- Non c'è **nessuna descrizione emotiva o storia** del vino (perché si chiama "La Pettinata"? cosa rende speciale il Trebbiano Spoletino?). Il testo parte subito con "Vinificazione: Classica…".
- Nessun **riconoscimento, premio, punteggio o recensione** sul prodotto. Le recensioni (anche quelle ottime su Trebbiano e ospitalità) stanno solo nella pagina Contatti.
- I **Prodotti correlati** non mostrano il prezzo e sembrano scelti a caso (sotto La Pettinata compaiono Araminto 2010 e Soviano Regale 2005 da 100 €). Hanno solo un'icona carrello minuscola.
- Nessuna informazione vicino al pulsante su **costi e tempi di spedizione sotto le 6 bottiglie**, metodi di pagamento e imballaggio. I termini rimandano a una pagina "guida-all'-acquisto" che non è linkata da nessuna parte.
- Su telefono il blocco quantità + pulsante c'è, ma dopo l'aggiunta non si vede un invito chiaro a proseguire. Nella cattura 06 il mini-carrello si apre solo nell'header, e l'utente torna alla home.
- Il footer delle schede ripete tre grandi blocchi ("Acquista i nostri vini", "Degustazioni", "Agriturismo") che negli screenshot sono **riquadri marroni vuoti senza immagine** (vedi punto 3).

**Raccomandazioni**
1. **Correggere annate, URL (con redirect 301), title e meta description** di tutti i prodotti, e decidere una regola (es. URL senza annata: `/prodotto/la-pettinata-spoleto-doc/`) così al cambio di vendemmia non si rompe niente.
2. Sopra la scheda tecnica, 3-4 righe di **racconto** (vigneto, nome, per chi è questo vino) e 3 icone rapide: *bianco fresco · 13,5% · con pesce e antipasti*. Spostare la scheda tecnica in una sezione a scomparsa.
3. Rinominare "Caratteristiche dei vigneti" in "Scheda tecnica del vino" oppure aggiungere davvero i dati del vigneto.
4. Sotto il pulsante "Aggiungi al carrello", un blocco di rassicurazioni: *"Spedizione gratuita da 6 bottiglie · sotto: X € · consegna in 2-5 giorni lavorativi · imballo protettivo · pagamento con carta/PayPal"* (usare le condizioni reali).
5. Mostrare **1-2 recensioni o riconoscimenti** per vino (anche la citazione del ristoratore "Siamo felici di proporlo nella nostra carta dei vini").
6. Correlati con **prezzo** e scelti con logica (stesso colore o abbinamento), più un invito "Completa la tua cassa da 6: ti mancano N bottiglie per la spedizione gratuita" nel carrello.
7. Dati strutturati Product (prezzo, disponibilità, recensioni) per ottenere i rich snippet su Google: dall'analisi dell'HTML i titoli prodotto sono duplicati (due `<h1>` per scheda).

## 3. Home e primo impatto: due finestre che coprono tutto e contenuti che non si vedono (PRIORITÀ ALTA)

**Cosa ho trovato**
- A ogni pagina, compresa la scheda prodotto dove arriva chi viene da Google, compaiono **insieme** la finestra "BENVENUTO – conferma di essere maggiorenne" al centro e il **banner cookie** a sinistra, sovrapposti. Su telefono i due pannelli coprono tutto lo schermo e il banner cookie ha un testo lungo in carattere piccolo. Sono due ostacoli prima ancora di vedere un vino.
- I titoli animati ("[nome azienda]", "La filosofia dietro i nostri vini", "Shop On Line", "Degustazioni"…) sono scritti **lettera per lettera** in `<span>` separati: nel testo della pagina appaiono come "C / o / l / l / e". Per i lettori di schermo e in parte per i motori di ricerca sono parole spezzate. Inoltre la home ha **tre `<h1>`**.
- Negli screenshot desktop e telefono si vedono **grandi aree bianche vuote** e **riquadri marroni senza foto** ("Acquista i nostri vini", "Le nostre degustazioni", "Il nostro agriturismo"), perché i contenuti sono animati e compaiono solo durante lo scroll (classe `elementor-invisible`). Può dipendere in parte dalla cattura, ma vuol dire che su connessioni lente, scroll veloce o browser che bloccano le animazioni l'utente vede buchi al posto di foto e titoli.
- Il **carosello "I nostri vini"** in home mostra solo 2 bottiglie alla volta su desktop e 1 su telefono, e le stesse 6 etichette ripetute (nel testo compaiono 14 volte).
- Il messaggio di valore c'è ("L'espressione più autentica del nostro territorio", "Da oltre trent'anni…"), ma mancano i motivi concreti per comprare qui: Trebbiano Spoletino, spedizione gratuita da 6, cantina visitabile. In home **non compare nemmeno la barra "Spedizione gratuita"**, che invece c'è nelle altre pagine.
- Piccoli segnali di trascuratezza: "Conosci la **nosta** cantina", "©COPYRIGHT **2021**", la storia dice "nasce nel Maggio del 2005" e il testo accanto "da oltre trent'anni".

**Raccomandazioni**
1. **Unire verifica età e consenso cookie in un'unica schermata**, o almeno mostrarle in sequenza (prima l'età, poi un banner cookie compatto in basso). Ricordare la risposta sull'età per 30 giorni. Sul telefono il banner cookie non deve superare circa 1/3 dello schermo.
2. Sostituire i titoli "lettera per lettera" con testo normale (animazione in CSS sull'intera parola) e lasciare **un solo `<h1>`** per pagina, con parole chiave ("Cantina a Spoleto – Trebbiano Spoletino e vini dei Colli Martani").
3. **Disattivare le animazioni di comparsa** sui blocchi principali (o farle partire subito) e assicurarsi che le foto dei tre blocchi CTA si carichino sempre. Verificare con un test reale su telefono con rete 4G lenta.
4. Nel primo schermo della home: titolo + sottotitolo con 3 argomenti ("Vini di Spoleto dal 2005 · Spedizione gratuita da 6 bottiglie · Visite e degustazioni in cantina") e due pulsanti chiari, **"Acquista i vini"** (link corretto, punto 1) e **"Prenota una degustazione"**.
5. Sostituire il carosello con una **griglia di 4-6 vini consigliati** (con badge "Il più amato", "Novità 2024"), che su telefono si scorre in orizzontale in modo visibile.
6. Correggere refusi e copyright (anno dinamico) e allineare "trent'anni" con "dal 2005".

## 4. Degustazioni e visite: tante porte d'ingresso, nessuna prenotazione vera (PRIORITÀ MEDIA-ALTA)

**Cosa ho trovato**
- La pagina Contatti funziona abbastanza bene: indirizzo, telefono cliccabile (`tel:`), WhatsApp (`wa.me`), orari chiari, e tre blocchi "Punto vendita / Degustazioni: Prenota ora / Agriturismo".
- Però "Prenota la tua degustazione **con un click**!" porta a `/degustazioni/`, un'altra pagina (in altri punti `/experiences/degustazioni/`, quindi due URL diversi), non a un calendario. Nelle pagine catturate non ci sono **prezzo, durata, lingue, numero di vini, disponibilità**. Il "click" promesso non basta.
- Non c'è un **modulo di contatto o richiesta**: solo e-mail, telefono e WhatsApp. Vanno bene, ma chi naviga la sera o dall'estero (le recensioni sono anche in inglese e danese) non ha un modo rapido e strutturato per chiedere una data.
- Il sito è solo in **italiano** (c'è un selettore "IT" nel menu), mentre una parte importante dei visitatori di una cantina umbra sono turisti stranieri.
- Le recensioni sono **ripetute** (le stesse 5 in loop, duplicate nel testo) e senza fonte/stelle visibili. Una delle più convincenti è in danese, senza traduzione.
- Il sabato pomeriggio è "su prenotazione", ma non si capisce come prenotare.
- L'agriturismo rimanda al sito esterno ilmolinoantico.com, e va bene, ma lo stesso ospite non viene mai invitato a comprare il vino online una volta tornato a casa.

**Raccomandazioni**
1. Creare **esperienze prenotabili online come prodotti** (WooCommerce le gestisce già, oppure un servizio di prenotazione per cantine/esperienze): es. "Degustazione classica 4 vini – X €/persona – 60 min – IT/EN", con calendario e pagamento o caparra. Mostrarle in home, in Contatti e in fondo alle schede prodotto.
2. Se la prenotazione online non è fattibile subito, almeno un **modulo breve** (data, n. persone, lingua, telefono) e un pulsante **"Prenota su WhatsApp"** con messaggio precompilato (`wa.me/[telefono]?text=Vorrei prenotare una degustazione il …`).
3. Un **pulsante WhatsApp/telefono fisso** su telefono (in basso a destra), in tutte le pagine.
4. Aggiungere almeno l'**inglese** per home, degustazioni, shop e checkout (spedizioni UE, se previste).
5. Recensioni: togliere i duplicati, mostrare le stelle e la fonte (Google/Facebook) e tradurre quelle straniere. Metterne 2-3 anche in home e nelle schede vino.
6. Dopo visita o soggiorno: biglietto/QR in cantina e all'agriturismo che porti allo shop con un codice sconto per il primo ordine online e l'iscrizione alla newsletter (oggi sul sito non c'è nessuna raccolta di contatti).

---

## Riepilogo in ordine di priorità

| Priorità | Intervento | Impegno | Impatto |
|---|---|---|---|
| 1 | Correggere il bottone "Acquista" (→ /shop/) + redirect 301 da /negozio/ | Minimo | Altissimo |
| 2 | Verifica età e cookie in un unico passaggio, compatti su telefono | Basso | Alto |
| 3 | Correggere annate/URL/meta dei prodotti; rassicurazioni su spedizione e pagamenti vicino al pulsante carrello | Basso | Alto |
| 4 | Shop con filtri Bianchi/Rossi/Bollicine/Riserve + casse da 6 | Medio | Alto |
| 5 | Degustazioni prenotabili online (o modulo + WhatsApp precompilato) e pulsante contatto fisso su telefono | Medio | Alto |
| 6 | Titoli in testo normale, un solo H1, niente contenuti invisibili fino allo scroll | Medio | Medio-alto (SEO, accessibilità, velocità) |
| 7 | Racconto del vino, recensioni/premi e correlati con prezzo nelle schede | Medio | Medio |
| 8 | Versione inglese, raccolta e-mail/newsletter, refusi e copyright | Medio | Medio |

**Nota sui limiti dell'analisi:** non avevo a disposizione le pagine Degustazioni, Carrello completo e Checkout, quindi su prezzi delle esperienze, costi di spedizione sotto le 6 bottiglie e metodi di pagamento non posso dire cosa mostra il sito. Le raccomandazioni su questi punti presuppongono che quelle informazioni vadano rese visibili prima del carrello. Le aree vuote negli screenshot potrebbero dipendere in parte dalla cattura (animazioni allo scroll): conviene verificarle su un telefono reale.
