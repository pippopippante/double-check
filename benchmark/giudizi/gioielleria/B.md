# [nome azienda] ([sito]): analisi per portare più clienti

*Analisi fatta solo sulla copia salvata del 26/09/2026 (8 pagine: HTML, testo, screenshot desktop e telefono).*

## Di cosa si tratta

[nome azienda] è il laboratorio orafo di **[nome]** ([indirizzo], Spoleto). Fa gioielli artigianali con pietre colorate: collezioni (Destiny, Flexi, Light), pezzi unici e lavori su misura con il servizio "Fotostoria". Il laboratorio partecipa a fiere del settore come Vicenza Oro e Inhorgenta. Il sito ha **due modi per portare clienti**:

1. **Vendita online** (WooCommerce con pagamento CartaSì/Nexi XPay): oggi ci sono solo 20 articoli "d'ingresso", cioè anelli piccoli a 350–395 € e orecchini a 595–695 €.
2. **Contatto/richiesta** per i pezzi di valore alto (pezzi unici, collezioni, lavori su misura) e visita al laboratorio di Spoleto. Per un gioielliere artigiano è probabilmente il canale con più fatturato per singolo cliente.

Quindi l'obiettivo del sito è: **vendere online i pezzi a prezzo accessibile e far arrivare richieste e visite per il resto.**

---

## Le 4 parti più importanti e perché

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Shop online** (`/negozio/` → scheda prodotto → carrello) | È l'unico punto dove si incassa direttamente. Oggi funziona tecnicamente ma è in inglese, povero di informazioni e nascosto. |
| 2 | **Richiesta di contatto / appuntamento** (`/contatti/` + tutte le pagine dove si dovrebbe "chiedere info") | I pezzi unici e il su misura si vendono parlando con il cliente. È il canale che rende di più ed è il più trascurato. |
| 3 | **Homepage** | È la pagina da cui entra la maggior parte dei visitatori. Oggi racconta la città ma non porta né allo shop né al contatto, e mostra contenuti fermi al 2025. |
| 4 | **Cataloghi / Campionario** (`/catalogo-2020/` ecc.) | È un invito all'acquisto molto visibile ("Sfoglia il catalogo" ×3 in home), ma il catalogo principale **è rotto** e gli altri sono del 2013 e del 2015. |

Ho escluso le pagine legali e la Fotostoria come pagine a sé. La Fotostoria è un ottimo argomento di vendita, però la pagina serve a chi è già cliente (è un login). La uso come leva dentro i punti 2 e 3.

---

## Raccomandazioni in ordine di priorità

### PRIORITÀ 1: Aggiustare quello che è rotto o dà un'impressione di abbandono (veloce, impatto alto)

Per un gioielliere la fiducia è tutto. Chi deve spendere 350–700 € online, o molto di più per un pezzo unico, se ne va appena vede segni di trascuratezza.

1. **Il catalogo 2020 mostra "ERROR: Set a Valid Document Source."** (screenshot `02-categoria-desktop`). Dalla home ci si arriva con 2 click evidenti (copertina + pulsante "Sfoglia il catalogo").
   → Ricaricare il PDF nel plugin dFlip oppure togliere subito il link. A medio termine basta **un solo catalogo aggiornato**, con prezzi indicativi o "prezzo su richiesta" e un pulsante "Chiedi informazioni su questo pezzo". I cataloghi 2013 e 2015 in home dicono "azienda ferma nel tempo": vanno spostati in un archivio o eliminati.
2. **"Eventi & Novità" in home è fermo a gennaio 2025**, mentre la copia è del 26/09/2026. Inoltre un post si intitola "Vicenza Oro 2023" ma nel testo parla di "Marzo 2022". Le fiere successive (Vicenza settembre 2025, Monaco febbraio 2026) compaiono solo nel blocco dei fondi UE nel footer.
   → Pubblicare le ultime fiere e le novità, oppure sostituire la sezione con contenuti che non scadono: recensioni, pezzi appena realizzati, foto dal laboratorio. Meglio ancora, collegare il feed Instagram, che probabilmente è più aggiornato.
3. **Lo shop parla inglese su un sito italiano.** Si leggono "Add to cart", "Showing 1–12 of 20 results", "Default sorting", "Your cart is currently empty", "Return to shop", "removed. Undo?", "View Cart / Checkout / Subtotal".
   → Installare o completare la traduzione italiana di WooCommerce (il sito ha già WPML). La parte inglese va poi collegata correttamente anche su /en/: la pagina /negozio/ non ha la versione en/de negli hreflang, a differenza delle altre.
4. **Refuso nel nome di un prodotto**: "Orecchini Grandi Con **Citrinio**" (va scritto Citrino). Anche le maiuscole ("Anelli Piccoli Con Ametista") sembrano generate in automatico: meglio "Anello piccolo con ametista", al singolare, perché si compra un anello.
5. **In home il blocco "ABOUT US" appare vuoto** su desktop (uno spazio bianco sopra i 3 cataloghi) e i riquadri "Video gallery" sono neri. Anche il grande video delle collezioni si presenta come un rettangolo nero fermo a 0:00.
   → Mettere un'immagine di copertina (poster) ai video e riempire o togliere il blocco vuoto.

### PRIORITÀ 2: Rendere facile contattare e prenotare una visita (il canale che rende di più)

Oggi l'unico modo "attivo" per contattare il laboratorio è un form generico nascosto alla voce 10 di 12 del menu.

1. **Aggiungere un invito fisso "Prenota una visita / Richiedi informazioni"** nell'header, al posto di una delle 12 voci di menu, e un pulsante fisso su mobile con **Chiama** e **WhatsApp**. I clienti di gioielleria preferiscono di gran lunga scrivere su WhatsApp e mandare una foto di ciò che desiderano.
2. **Rendere il telefono cliccabile.** Nell'HTML non c'è nessun link `tel:`: da smartphone il numero non si può chiamare con un tocco. Nel footer poi lo stesso numero compare due volte ([telefono] ripetuto): basta una volta, cliccabile, più WhatsApp.
3. **Ripensare il form di `/contatti/`:**
   - aggiungere un campo "Motivo" con scelte già pronte: *Informazioni su un pezzo, Gioiello su misura / Fotostoria, Anello di fidanzamento, Prenotare una visita in laboratorio, Riparazione/rimodernamento, Rivenditori (B2B)*;
   - **rendere obbligatoria almeno un'informazione di contatto.** Oggi Email e Telefono sono entrambi facoltativi, mentre "Oggetto" e "Cognome" sono obbligatori: si può mandare una richiesta a cui è impossibile rispondere;
   - togliere "Oggetto" (lo sostituisce il Motivo) e rendere facoltativo il Cognome, così ci sono meno campi da compilare;
   - dire **entro quanto si risponde** (es. "entro 24 ore lavorative") invece di "nel più breve tempo possibile".
4. **Dire che c'è un laboratorio visitabile.** In nessuna pagina ci sono **orari di apertura**, una mappa o foto dell'ingresso. L'indirizzo compare solo come "sede legale". Per chi visita Spoleto da turista (città UNESCO, Festival dei Due Mondi) il laboratorio in [indirizzo] è un motivo in più per passare: va scritto "Vieni a trovarci in laboratorio", con orari, mappa Google e un link alla scheda Google Business con le recensioni.
5. **Un pulsante "Chiedi informazioni" su ogni pezzo unico e su ogni collezione.** Chi guarda una collana Destiny e se ne innamora oggi non ha un modo diretto per chiedere prezzo e disponibilità. Il pulsante deve aprire il form (o WhatsApp) con il nome del pezzo già inserito.
6. **Usare la Fotostoria come argomento di vendita, non solo come login.** È un servizio distintivo: segui la lavorazione giorno per giorno, ricevi un certificato di autenticità e una chiavetta USB con foto e video. Oggi la pagina è un muro di testo con un login. Serve un invito "Richiedi il tuo gioiello su misura con Fotostoria", qualche esempio di galleria (con il permesso dei clienti) e il login spostato in basso o in un'area separata "Area clienti".

### PRIORITÀ 3: Shop online che converte

Prodotti a 350–700 € si comprano online solo se chi compra si sente sicuro. Oggi mancano quasi tutte le rassicurazioni.

1. **Mettere le informazioni chiave vicino al prezzo e al carrello** (oggi sono sepolte negli articoli dei Termini, oppure mancano):
   - **spedizione**: costo e tempi. Nei Termini c'è scritto "a spese del Cliente" ed "evasione entro 15 giorni… non oltre 60". Per un gioiello è un tempo lungo e senza un prezzo. Meglio **spedizione assicurata gratuita** (sopra i 350 € il costo si assorbe facilmente) e, se il pezzo è disponibile, "spedito in 2–3 giorni";
   - **resi e recesso**: 14 giorni per legge. Oggi il testo mette in evidenza che un reso non assicurato è interamente a rischio del cliente, cosa che spaventa invece di rassicurare. Meglio scriverlo in positivo;
   - **metodi di pagamento** con i loghi (carte via Nexi XPay; valutare PayPal e pagamento a rate tipo Klarna/Scalapay, molto usati in gioielleria);
   - **garanzia e certificato** di autenticità, **confezione regalo** (lo "scrigno"), "fatto a mano a Spoleto";
   - **ritiro in laboratorio** come opzione di consegna.
2. **Misura dell'anello.** Si vendono anelli ma nel listino non si vede nessuna scelta della taglia: dai file non posso vedere la scheda prodotto, quindi va verificato. Se manca, bisogna aggiungere la scelta della misura, una guida alle misure e "misura modificabile gratuitamente in laboratorio". Altrimenti molti non comprano.
3. **Schede prodotto più ricche**: metallo e titolo (oro 18 kt?), peso, dimensioni e caratura della pietra, più foto (anche indossato) e un breve testo sulla pietra, che si può prendere dalla sezione "Le Pietre". Nel listino di oggi c'è solo foto + nome + prezzo.
4. **Portare lo shop dove serve.**
   - In home non c'è nessun invito verso lo shop: "SHOP" è il 9° elemento del menu e "Shop online" compare solo nel footer.
   - Serve una sezione in home "Acquista online" con 4–6 prodotti e un pulsante "Vai allo shop".
   - Dalle pagine delle pietre (ametista, citrino…) serve un collegamento ai prodotti con quella pietra.
5. **Organizzare il negozio** per categoria (Anelli / Orecchini) e per pietra o colore, con filtri. Il plugin YITH Ajax Navigation è già installato. Con soli 20 articoli, meglio **una sola pagina** invece di 12 + 8 su due pagine.
6. **Allargare l'offerta online.** Oggi si vendono solo due tipi di prodotto. Anche senza mettere online i pezzi unici con il prezzo, si possono aggiungere **schede "su richiesta"** con il pulsante "Chiedi il prezzo / Prenota una visione". Si sfruttano così la visibilità su Google e le foto già esistenti.
7. **Carrello vuoto**: al posto di "Your cart is currently empty / Return to shop" mettere i prodotti più venduti e un invito a contattare il laboratorio.

### PRIORITÀ 4: Homepage che accompagna verso l'acquisto

1. **Riordinare la home in base a quello che cerca chi arriva.** Oggi, dopo lo slider, c'è un lungo testo storico su Spoleto e sul ducato longobardo, su due colonne e molto stretto su mobile, prima di vedere un solo gioiello. Ordine proposto:
   1. slider/immagine con **frase di valore + 2 pulsanti**: "Scopri lo shop" e "Richiedi un gioiello su misura";
   2. collezioni e pezzi unici (ci sono già) con "Chiedi info";
   3. prodotti acquistabili online;
   4. Fotostoria / su misura;
   5. **"Dicono di noi"**: portare in home 2–3 recensioni vere (la pagina esiste già nel menu, ma in home non c'è nessuna recensione);
   6. il laboratorio a Spoleto, con orari e mappa;
   7. la storia della città, **accorciata** a 2–3 righe con "Leggi di più".
2. **Da telefono** la home è lunghissima (lo screenshot è alto circa 16.000 px). I blocchi Collane / Anelli / Bracciali / Orecchini occupano ciascuno uno schermo intero con molto nero e il nome in piccolo. Conviene una griglia 2×2 compatta, così si riducono gli scorrimenti.
3. **Il footer di ogni pagina** chiude con 4 blocchi di loghi e diciture dei fondi UE/FESR, molto lunghi (più alti del contenuto stesso in pagine come carrello e contatti). Se l'obbligo di pubblicità lo consente, conviene raccoglierli in un blocco compatto o in una pagina "Progetti finanziati" collegata dal footer. Così carrello e contatti non finiscono in un muro di testo burocratico.
4. **Cookie banner**: su mobile copre la parte alta della pagina. Va bene che ci siano "Accetta" e "Rifiuta" allo stesso livello (lo richiede la normativa); basta ridurlo a una barra in basso.

### PRIORITÀ 5: Farsi trovare (a supporto di tutto il resto)

- **Nessuna meta description** nelle pagine analizzate, e il titolo della home ripete il marchio ("[nome azienda] - Laboratorio Orafo [nome] - [nome azienda]").
  → Scrivere titoli e descrizioni orientati alle ricerche: "Gioielleria artigianale a Spoleto", "anello con ametista in oro", "gioielli su misura Umbria".
- **Dati strutturati** `JewelryStore`/`LocalBusiness` (indirizzo, orari, telefono) e `Product` sulle schede, così compaiono prezzo e disponibilità su Google.
- **Scheda Google Business** curata, con foto e recensioni, collegata dal sito. È la prima cosa che vede chi cerca "gioielleria Spoleto".
- Le pagine **in inglese e tedesco** esistono: sono un'opportunità con i turisti stranieri e con i visitatori delle fiere di Vicenza e Monaco. Vanno però completate anche per lo shop.

---

## Riepilogo: cosa fare prima

| Quando | Azione |
|---|---|
| **Subito (1–2 giorni)** | Sistemare o togliere il catalogo rotto; nascondere i cataloghi 2013/2015; tradurre lo shop in italiano; correggere "Citrinio"; telefono cliccabile + WhatsApp; email/telefono obbligatori nel form; aggiornare o sostituire gli eventi fermi al 2025. |
| **Entro 1 mese** | Pulsante "Prenota una visita / Chiedi info" nell'header e su ogni pezzo; orari, mappa e "vieni in laboratorio"; blocco rassicurazioni nello shop (spedizione assicurata, resi, pagamenti, garanzia, confezione); taglia anello; shop e recensioni in home. |
| **Entro 3 mesi** | Riordinare la home; schede prodotto complete; pezzi unici "su richiesta"; nuova pagina Fotostoria orientata alla vendita; SEO locale e dati strutturati; footer UE compatto. |

**Come misurare**: impostare in Analytics il tracciamento di queste azioni: clic su telefono e WhatsApp, invii del form (divisi per "Motivo"), aggiunte al carrello e ordini. Confrontare il mese prima e il mese dopo ogni gruppo di interventi.
