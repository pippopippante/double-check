# [nome azienda]: analisi del sito e raccomandazioni

*Fonte: copia salvata del sito [sito] (fotografata il 26/09/2026): 9 pagine, con HTML, testo e screenshot desktop e telefono. Il sito online non è stato visitato.*

## Di cosa si tratta

[nome azienda] (ragione sociale "[nome azienda]") è una bottega di prodotti tipici umbri in [indirizzo], nel centro storico di Spoleto. Il sito è un **e-commerce Shopify** che vende salumi, formaggi, tartufo, olio, vino, pasta e legumi. I prodotti di punta sono le **box regalo/degustazione** (da 35 a 80 €). Spedisce solo in Italia, con corriere espresso in 1-3 giorni.

L'obiettivo del sito è quindi **vendere online** (ordini). Un obiettivo secondario è portare turisti nel negozio fisico, che l'home page cita ("Vieni a trovarci", "Vivi Spoleto").

---

## Le 4 parti più importanti e perché

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Scheda prodotto** (soprattutto le box) | È qui che si decide l'acquisto. Le box hanno lo scontrino più alto e sono il prodotto più "regalabile". Tutto il traffico da Google, social e home finisce qui. |
| 2 | **Fiducia e informazioni d'acquisto** (spedizioni, costi, resi, contatti) | Per il cibo fresco spedito il dubbio principale è "quanto costa la spedizione, quando arriva, arriva integro?". Oggi queste risposte non si trovano o sono contraddittorie, e questo blocca il checkout. |
| 3 | **Home page** | È la vetrina: deve dire in 3 secondi cosa si compra, perché da qui e come riceverlo. Oggi è molto lunga e d'atmosfera, ma senza messaggio né invito all'azione in apertura. |
| 4 | **Catalogo / pagine categoria** | È dove chi "curiosa" sceglie. Oggi nelle griglie non si vedono nomi e prezzi, e questo ostacola la scelta. |

Il carrello (vuoto nello snapshot) e le pagine legali sono trattati dentro il punto 2.

---

## Raccomandazioni in ordine di priorità

### PRIORITÀ 1: Rendere chiari costi e tempi di spedizione ovunque (parte 2)

**Cosa ho trovato**
- In nessuna delle pagine salvate si trova **il costo di spedizione** né una **soglia di spedizione gratuita**. Nemmeno la home, la scheda prodotto e il carrello lo dicono. C'è solo un link "Politica sulle spedizioni" nel footer.
- I "Termini e condizioni" dicono "1-3 giorni lavorativi", ma questa informazione non compare vicino al pulsante "Aggiungi al carrello".
- Non si dice nulla su **come vengono spediti i prodotti freschi** (formaggi, caciotta al tartufo, salumi): imballo, catena del freddo, giorni di spedizione (per esempio mai il venerdì).

**Cosa fare**
1. Aggiungere una **barra fissa in cima a tutte le pagine**, per esempio: *"Spedizione in 24/48h in tutta Italia · Gratis sopra i 59 €"*. La soglia va scelta in modo che una box da 45-60 € + 1 prodotto la superi, così aumenta anche lo scontrino medio.
2. Nella **scheda prodotto**, sotto "Aggiungi al carrello", mettere 3 righe con icona: *Spedizione in 1-3 giorni · Imballo termico per i freschi · Pagamento sicuro (PayPal, carte)*.
3. Nel **carrello**, mostrare quanto manca per la spedizione gratuita ("Ti mancano 12 € per la spedizione gratuita").

### PRIORITÀ 2: Sistemare le informazioni legali e i contatti contraddittori (parte 2)

Il cliente che controlla prima di comprare trova incongruenze che minano la fiducia. Inoltre ci sono rischi legali.

| Problema | Dove | Correzione |
|---|---|---|
| **Due numeri di telefono diversi**: [telefono] (footer) e [telefono] (Termini) | 07-condizioni | Tenere un solo numero, uguale ovunque |
| Recesso "entro 14 giorni **dalla data dell'ordine**" (Termini) contro "14 giorni **dalla ricezione**" (Rimborsi). In un punto si parla di "giorni lavorativi" | 07 / 08 | Allineare: per legge sono 14 giorni **dalla ricezione** (Codice del Consumo, D.Lgs. 206/2005, art. 52) |
| Citato il **D.Lgs. 185/1999**, abrogato da anni | 08-condizioni | Citare il D.Lgs. 206/2005 |
| Manca l'**eccezione per i prodotti deperibili** e per quelli sigillati aperti per motivi igienici (art. 59 Codice del Consumo). Questo è fondamentale per chi vende alimentari | 07 / 08 | Aggiungerla e spiegare cosa succede se il prodotto arriva danneggiato (foto entro 48h, sostituzione o rimborso). Questo *rassicura* più di quanto limiti |
| Privacy basata sul **D.Lgs. 196/03** (pre-GDPR) e "consenso" all'invio di pubblicità legato alla registrazione | 07-condizioni | Aggiornare al GDPR (Reg. UE 2016/679) e separare il consenso al marketing |
| Refusi: "Shoify Payments in tutta. sicurezza", "ESSICCATTE", "produrre di Trevi" | 07, schede prodotto | Correggere: i refusi sulle pagine di pagamento danno un'impressione di poca cura |
| Il reso "dalla tua pagina account personale" presuppone un account | 07-condizioni | Permettere la richiesta anche via email o WhatsApp |

*Nota: per la parte legale conviene una verifica da parte di un consulente. Qui segnalo solo le incongruenze evidenti.*

### PRIORITÀ 3: Riscrivere le schede delle box (parte 1)

Le box sono il prodotto più interessante (regalo, turisti che vogliono "rivivere" Spoleto a casa), ma la scheda oggi le vende male.

**Cosa ho trovato** (01, 02 e 03-prodotto)
- Accanto al prezzo compare un **codice interno** ("VI015/PAS001/SAL007/FUN001"), che per il cliente non significa nulla.
- Il testo introduttivo è **l'inizio della descrizione tecnica troncato** ("MONTEFALCO SAGRANTINO DOCG - Cantina SCACCIADIAVOLI 750ml. Temperatura ideale di servizio…A..."). Non dice mai *cosa contiene* la box, *per quante persone* è o *per quale occasione*.
- La descrizione completa è un unico blocco di ingredienti e allergeni, senza elenco dei prodotti. Il cliente deve leggere tutto per capire che nella "Box Pranzo Umbro" ci sono 4 prodotti.
- Una sola foto. Non ci sono foto dei singoli prodotti né della confezione regalo.
- Nell'HTML c'è il badge recensioni di Shopify (`shopify-product-reviews-badge`), ma **non viene mostrata nessuna recensione**.
- "Aggiungi a lista desideri" ha lo stesso peso visivo del pulsante principale.
- Su telefono l'intero testo tecnico compare due volte (anteprima + descrizione). Il pulsante d'acquisto si trova solo dopo lo scroll e i correlati "Ti potrebbero piacere" sono un carosello con una box per volta.

**Cosa fare**
1. **Nuova struttura sopra la piega:** Nome → prezzo → **frase di vendita** ("Un pranzo umbro completo per 4-5 persone: pappardelle all'uovo, ragù di cinghiale, funghi al tartufo e un Sagrantino DOCG") → **elenco puntato del contenuto con i pesi** → pulsante "Aggiungi al carrello" → riga spedizione/fiducia.
2. Spostare ingredienti, allergeni e schede tecniche in **sezioni a fisarmonica** ("Contenuto dettagliato", "Ingredienti e allergeni", "Spedizione e conservazione").
3. Togliere il codice SKU dalla vista del cliente.
4. Aggiungere **2-4 foto**: box chiusa/confezionata, prodotti singoli, piatto finito (per esempio le pappardelle al cinghiale impiattate).
5. Proporre un'**opzione regalo** (biglietto con messaggio, confezione regalo, spedizione a un altro indirizzo). Le box sono naturalmente regali, soprattutto a Natale.
6. Attivare davvero le **recensioni**, anche poche, e chiederle via email dopo la consegna. In alternativa, mostrare le recensioni Google del negozio fisico.
7. Mettere in evidenza il **valore della box**, se vero: "Acquistati singolarmente: 46 €, nella box: 38 €".

### PRIORITÀ 4: Home page con messaggio e acquisto in apertura (parte 3)

**Cosa ho trovato** (00-home, desktop e telefono)
- La prima schermata è uno **slider di 3 foto senza nessun testo né pulsante** (nell'HTML le slide hanno `data-title=""`; la terza ha un link vuoto). Il visitatore vede un bel negozio ma non capisce che può comprare online né cosa riceve.
- Il messaggio "L'Umbria a casa tua" arriva solo dopo lo slider, in un testo lungo su tre colonne con un titolo vuoto al centro.
- I 3 riquadri "Vieni a trovarci", "Vivi Spoleto" e "Prenditi 15 minuti" sono **link vuoti** (`href=""`): sembrano cliccabili ma non portano da nessuna parte.
- La sezione "Box Special" è un carosello: su telefono si vede una box per volta e i nomi sono in giallo su foto scura, poco leggibili.
- Sulla pagina si alternano due citazioni (Caramagna, Confucio) e grandi fasce di colore. Su telefono la home è lunghissima (lo screenshot è alto 16.000 px) e i prodotti arrivano tardi.
- Il menu non ha né una voce **"Box regalo"** né **"Chi siamo / Il negozio"**.

**Cosa fare**
1. Sulla prima slide (o al posto dello slider) mettere un'immagine fissa con **titolo + sottotitolo + 2 pulsanti**: *"I sapori dell'Umbria, dalla nostra [nome azienda] a casa tua" · "Salumi di Norcia, tartufo, Sagrantino da piccoli produttori. Spedizione in 1-3 giorni."* → [Scopri le Box] [Tutti i prodotti].
2. Subito sotto: **striscia di fiducia** (Spedizione 24/48h · Imballo per i freschi · Piccoli produttori umbri · Pagamento sicuro).
3. Box in **griglia statica** (2 colonne su telefono, 4 su desktop) con nome leggibile, prezzo e "Aggiungi al carrello" diretto.
4. Collegare i 3 riquadri a pagine vere: "Vieni a trovarci" → pagina negozio con mappa e orari (utile anche per Google e per i turisti); "Vivi Spoleto" → breve guida/blog; "Prenditi 15 minuti" → degustazioni in negozio, se ci sono. Se non ci sono contenuti da collegare, rimuovere i riquadri.
5. Aggiungere al menu le voci **"Box regalo"** e **"Il negozio"**.
6. Ridurre la lunghezza su telefono: via le citazioni, meno fasce solo decorative.

### PRIORITÀ 5: Catalogo con nomi e prezzi visibili e filtri (parte 4)

**Cosa ho trovato** (04 e 05-categoria)
- Negli screenshot desktop della griglia "Prodotti" si vedono **solo le foto**: nome e prezzo non compaiono (probabilmente solo al passaggio del mouse). Su telefono il passaggio del mouse non esiste. Molte foto si somigliano (stesso sfondo di mattoni e mensola), quindi senza testo i prodotti sono difficili da distinguere.
- Sulla sinistra c'è una **colonna vuota** di circa 250 px (lo spazio per i filtri dell'app Boost, che però non mostra nulla).
- I prodotti sono in ordine alfabetico ("Aragon Vermentino" per primo) su 5 pagine. Non c'è ordinamento né evidenza per le box o i più venduti.
- Si usa l'intestazione grande "Prodotti" sopra una foto dell'insegna, che spinge i prodotti in basso.
- Alcuni nomi sono confusi: "CECI BIANCHI PICCOLI - CECI NERI - LENTICCHIA - LENTICCHIA NERA", "STRINGOZZI -TARTUFO ESTIVO GRATTUGIATO PURO".

**Cosa fare**
1. Mostrare **sempre** nome e prezzo sotto la foto, in testo scuro su fondo chiaro, più un pulsante rapido "Aggiungi".
2. Attivare i filtri (tipo di prodotto, fascia di prezzo, "idea regalo") oppure togliere la colonna vuota e usare tutta la larghezza.
3. Ordinamento predefinito "In evidenza" con le box in cima. Aggiungere la collezione "Box regalo" e badge come "Più venduto" e "Senza glutine" (i sughi lo sono già, ma lo si scopre solo leggendo gli ingredienti).
4. Ridurre l'intestazione a una riga e rinominare i prodotti con varianti ("Legumi di Spoleto: ceci, lenticchie" con la scelta nella variante).

### PRIORITÀ 6: Rifiniture utili (trasversali)

- **Carrello vuoto:** oggi dice solo "Continua a navigare qui". Mostrare invece le 4 box e i più venduti.
- **Chat "Chatta con noi":** su telefono copre contenuti del footer e della scheda. Ridurla a sola icona, oppure sostituirla con un **pulsante WhatsApp**, più naturale per un negozio di paese e per chi vuole ordinare una box personalizzata.
- **Newsletter nel footer:** oggi c'è solo "Inserisci la tua email" senza motivo per iscriversi. Offrire un incentivo ("-10% sul primo ordine").
- **Accessibilità e SEO:** immagini con `alt="Banner Image"` o vuoto, H1 della home nascosto, molti titoli tutti in maiuscolo con font sottile a basso contrasto (giallo su verde, grigio chiaro su bianco). Usare testi alternativi descrittivi, un H1 visibile con parole chiave ("prodotti tipici umbri online") e aumentare il contrasto.
- **Contenuti per chi cerca su Google:** una pagina per regalo aziendale/Natale (box personalizzate per aziende) può portare ordini a scontrino alto.

---

## Riepilogo

| Priorità | Intervento | Sforzo | Impatto atteso |
|---|---|---|---|
| 1 | Costi/tempi di spedizione visibili + soglia gratuita | Basso | Alto: meno abbandoni del carrello, scontrino medio più alto |
| 2 | Contatti e condizioni coerenti e aggiornati | Basso | Alto su fiducia e rischio legale |
| 3 | Schede box riscritte (contenuto, foto, regalo, recensioni) | Medio | Alto: sono i prodotti a margine più alto |
| 4 | Home con messaggio + CTA + box in griglia | Medio | Medio-alto |
| 5 | Catalogo con nomi/prezzi visibili e filtri | Basso-medio | Medio |
| 6 | Carrello, WhatsApp, newsletter, accessibilità | Basso | Medio |

Le priorità 1 e 2 si possono fare in una giornata dall'amministrazione Shopify e dai testi delle policy. Sono gli interventi con il miglior rapporto fra costo e risultato.
