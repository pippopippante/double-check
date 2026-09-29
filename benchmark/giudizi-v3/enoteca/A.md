# [nome azienda] ([nome azienda], Spoleto): analisi del sito per aumentare le vendite

*Fonte: copia del sito salvata il 26/09/2026 (9 pagine: home, 3 schede prodotto, pagina "Catalogo Esclusive 2026", categoria "_ESAURITI", carrello, condizioni di vendita, privacy). Ho usato solo HTML, testi e screenshot salvati; non ho visitato il sito online.*

## Di cosa si tratta

[nome azienda] è l'e-commerce di [nome azienda]: un distributore di bevande con 50 anni di attività, un magazzino e un punto vendita a Spoleto ([indirizzo]). Sul sito ci sono "oltre 4.000 articoli" (distillati, vini, champagne, birre, gourmet). Spedisce in Italia (gratis sopra 170 €), in Europa, USA, Canada e Australia. Ha anche un'area B2B per Ho.Re.Ca e rivenditori.

**Obiettivo del sito:** vendere online, sia a privati sia a professionisti. Secondari: portare gente in negozio e raccogliere richieste di etichette particolari via email/WhatsApp.

**Punti di forza da mettere in evidenza (oggi sono nascosti):** è un negozio fisico con magazzino vero ("non siamo virtuali"), ha un catalogo enorme, ha etichette in esclusiva per l'Umbria, ha un 4,9★ su Google (c'è il badge in basso a destra) e recensioni che lodano imballaggio e velocità.

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta per le vendite |
|---|---|---|
| 1 | **Ingresso nel sito: verifica età + home** | Ci passano tutti i visitatori. Oggi il primo contatto è un popup rosso sopra una foto grigia del negozio, poi una home fatta solo di un elenco di "novità" senza gerarchia. Qui si decide se chi arriva resta o se ne va. |
| 2 | **Scheda prodotto** | Chi arriva da Google o dai social atterra quasi sempre qui, ed è qui che si clicca "Aggiungi al carrello". Negli screenshot delle schede prodotto compare perfino un reCAPTCHA a tutto schermo. |
| 3 | **Carrello, spedizioni e checkout** | È dove si perde l'ordine già deciso: registrazione obbligatoria, costi di spedizione da scoprire, avvertenze scritte in tono difensivo. |
| 4 | **Navigazione del catalogo (menu, categorie, esclusive, esauriti)** | Con 4.000 articoli, trovare il prodotto conta quanto il prodotto. Oggi i menu sono doppi e confusi, la categoria degli esauriti è la prima in elenco e le "Esclusive 2026" si possono solo sfogliare in un PDF, non comprare. |

Ho lasciato fuori le pagine legali (condizioni e privacy): le ho lette solo per capire spedizioni, resi e checkout.

---

## 1. Ingresso nel sito: verifica età e home

### Cosa vede il visitatore
- **Tutti gli screenshot, desktop e telefono, mostrano solo il popup "Sei maggiorenne? Are you over 18?".** È un riquadro rosso semitrasparente sopra una foto in bianco e nero del negozio, con i pulsanti "Yes/No" in inglese anche per il pubblico italiano. Sul telefono **il pulsante verde "Chat" di WhatsApp copre il testo del popup** ("You must be… to use this site").
- **Il titolo di tutte le pagine è "Age Verification - "** (tag `<title>` in tutti i 9 file HTML). Il plugin della verifica età sovrascrive il titolo vero: nella scheda del browser, nei preferiti e nelle condivisioni si legge "Age Verification" invece del nome del prodotto. Il titolo corretto c'è solo nell'`og:title` (per esempio "Grappa e Achillea La Valdotaine Papà Marcel"). Se Google indicizza la versione renderizzata, anche i risultati di ricerca ne risentono.
- Dopo il popup, la home è: due barre di menu, la scritta "OFFERTISSIMA!" senza un'offerta collegata, "WE SHIP TO: EUROPE, USA…", e poi una griglia di **25 "ultimi prodotti inseriti"**. Dieci di questi sono vini della stessa cantina ([nome azienda]) uno dopo l'altro. Mancano un messaggio principale, le categorie in evidenza, le offerte vere e un ingresso chiaro per i regali.
- Il testo migliore del sito ("Da 50 anni… non siamo virtuali… magazzino con migliaia di etichette… cercate un'etichetta particolare? Scriveteci") è **in fondo alla pagina**, dopo i 25 prodotti.
- Sotto c'è "**6 pensieri su 'Home'**": commenti WordPress dal 2020 al 2023, tra cui "Avete il vov" rimasto senza risposta, e poi "Devi essere connesso per inviare un commento". Danno l'idea di un sito poco curato. Nel frattempo il 4,9★ di Google è solo un badge piccolo nell'angolo.
- Incongruenze: nella meta description si legge "oltre 3.000 etichette", nel testo "oltre 4.000 articoli". Nel footer c'è "© 2015" accanto a "© 2026".

### Raccomandazioni
1. **Sistemare il titolo delle pagine (priorità massima, costo quasi zero).** Configurare il plugin della verifica età in modo che non modifichi `document.title`, oppure sostituirlo. Poi controllare in Search Console → Controllo URL come Google vede titolo e contenuto di una scheda prodotto.
2. **Rendere il popup età leggero e in italiano:** "Hai almeno 18 anni? **Sì, entra** / No", con pulsante principale grande, "Ricordami" già attivo (lo è già) e durata lunga (per esempio 30 giorni). Il popup deve restare sopra il pulsante WhatsApp (z-index) oppure WhatsApp va nascosto finché il popup è aperto. Meglio ancora: una barra in basso che non oscura la pagina, così chi arriva vede subito prodotti e prezzi.
3. **Rifare la parte alta della home** (primo schermo, soprattutto su telefono):
   - Una frase di valore: *"Da 50 anni a Spoleto: oltre 4.000 etichette pronte in magazzino, spedite in 2–4 giorni. Spedizione gratuita sopra 170 €."*
   - Tre segnali di fiducia in riga: ★ 4,9 su Google (con numero di recensioni), negozio fisico a Spoleto, pagamento sicuro (Carte/PayPal).
   - 6–8 riquadri di categoria con immagine: Whisky, Gin, Rum, Vini Umbria, Champagne, Idee regalo/Strenne, Offerte, Rarità.
4. **Sostituire la griglia unica delle novità con 3–4 "vetrine" corte da 8 prodotti:** Offerte vere (quelle con prezzo barrato), Esclusive Umbria, Rarità, Novità. In alta stagione aggiungere Regali di Natale (le "Strenne" hanno 458 articoli e da ottobre sono la leva principale).
5. **Portare in alto il messaggio "Cerchi un'etichetta che non trovi? Scrivici su WhatsApp".** È un servizio distintivo, oggi sepolto in fondo alla pagina.
6. **Togliere i commenti WordPress dalla home.** Al loro posto mettere 3–4 recensioni Google recenti (widget o testo con stelle, nome, data). Scrivere "OFFERTISSIMA!" solo se porta a un'offerta vera, altrimenti eliminarlo.
7. Allineare i numeri (3.000 o 4.000) e il copyright.

---

## 2. Scheda prodotto

### Cosa c'è oggi
- Ci sono nome, prezzo, quantità, "Aggiungi al carrello", una buona descrizione sensoriale (per esempio l'Achillea), formato e gradazione, prodotti correlati e una barra fissa con "Aggiungi al carrello" quando si scorre. I dati strutturati Product/Offer ci sono (prezzo, InStock). **Queste basi funzionano.**
- **reCAPTCHA di PayPal sulla scheda prodotto:** gli screenshot di 01 (telefono) e 02 (desktop) mostrano una sfida reCAPTCHA a tutto schermo ("seleziona le strisce pedonali/idranti") prima ancora di vedere il prodotto. Nell'HTML si vede che la carica il plugin *WooCommerce PayPal Payments 4.1.3* (`ppcp-recaptcha`, `isSingleProduct: "1"`), cioè la protezione antifrode dei pulsanti PayPal. Può darsi che sia scattata perché la cattura era automatica. Ma è già un rischio che la sfida possa comparire su una pagina prodotto: per un cliente vero è un motivo per chiudere la pagina.
- **Nella scheda mancano le informazioni che servono per decidere:**
  - quando arriva ("spedito in 2–4 giorni lavorativi" è scritto solo nelle condizioni);
  - quanto costa spedire (10 € fino a 2 kg in Italia) e quanto manca alla spedizione gratuita;
  - disponibilità reale: le condizioni dicono che le quantità in magazzino non vengono caricate e che "si potrebbe ordinare 1 milione di pezzi";
  - pagamenti accettati e sicurezza vicino al pulsante;
  - avviso annata/etichetta: che la foto possa essere diversa dalla bottiglia spedita lo si scopre solo nel carrello o nelle condizioni.
- "Recensioni (0)" su tutti i prodotti è uno spazio vuoto in bella vista.
- Le informazioni tecniche non sono uniformi: la "Miscela al 30" riporta "Lattina 100 cl" ma non la gradazione.
- I prodotti correlati sono casuali per categoria: sotto un amaro compaiono gin e rum da 1 litro.

### Raccomandazioni
1. **Togliere il reCAPTCHA dalla scheda prodotto.** Nelle impostazioni di WooCommerce PayPal Payments → protezione antifrode/reCAPTCHA, limitarlo al checkout, oppure disattivare i pulsanti PayPal "smart" sulla scheda prodotto. Dopo va verificato da telefono in navigazione anonima.
2. **Aggiungere un blocco fisso sotto il pulsante "Aggiungi al carrello"** (si fa una volta nel template e vale per tutti i 4.000 prodotti):
   - 🚚 *Spedito in 2–4 giorni lavorativi · Gratis in Italia sopra 170 €*
   - 🔒 *Paga con Carta, PayPal o Bonifico*
   - 🏬 *Disponibile nel nostro negozio di Spoleto*
   - 💬 *Domande su annata o etichetta? Scrivici su WhatsApp* (link diretto con il nome del prodotto già scritto nel messaggio)
3. **Scheda tecnica uniforme** nella tab "Informazioni aggiuntive": formato, gradazione, provenienza, produttore, annata ("annata corrente salvo indicazione"), eventuali note (PET per le mignon, "non acquistabile con PayPal" per i prodotti cubani). Così si risolvono all'origine i casi di reso che le condizioni oggi gestiscono con penali.
4. **Recensioni:** nascondere la tab finché è vuota. In parallelo mandare un'email automatica dopo la consegna per chiedere una recensione del prodotto; per il negozio c'è già Google.
5. **Correlati più utili:** stesso produttore o stessa tipologia (le altre grappe Papà Marcel), più una riga "Completa l'ordine" con tonica e prodotti gourmet, che aiuta anche a raggiungere i 170 €.
6. Le descrizioni sono già buone: aggiungere 1 riga "Come berlo / abbinamento" dove manca. È la competenza che i clienti lodano nelle recensioni ("non fanno mai sbagliare l'abbinamento").

---

## 3. Carrello, spedizioni e checkout

### Cosa c'è oggi
- **Il carrello si apre con due avvertenze in tono legale:** le foto delle etichette "potrebbero non essere aggiornate… tratterremo le spese di spedizione", e chi vuole fattura deve inserire i dati "anche se già registrato… in mancanza non sarà più possibile emettere la fattura". Il titolo è in inglese ("Cart"). Il carrello vuoto non propone niente oltre "Ritorna al negozio".
- **La registrazione è obbligatoria per acquistare** (condizioni, punto 1). Secondo le ricerche di Baymard Institute sull'abbandono del checkout, l'obbligo di creare un account è da anni tra i primi motivi di abbandono (circa 1 acquirente su 4–5 tra chi abbandona). Il primo motivo sono i costi extra scoperti tardi.
- **Spedizione:** 10 € fino a 2 kg (circa 1 bottiglia), gratis sopra 170 €. Con prezzi tipici di 15–35 € a bottiglia la soglia è lontana e il costo pesa molto sui piccoli ordini. Le tariffe dettagliate sono solo in fondo alle condizioni di vendita.
- **Non esiste il ritiro in negozio:** c'è solo "Ritiro con vostro corriere: € 0". È strano per un'azienda con punto vendita a Spoleto e clientela locale fedele.
- Aspetti positivi: pagamenti con carta, PayPal e bonifico; chat WhatsApp; la spedizione viene calcolata nel carrello.

### Raccomandazioni
1. **Attivare l'acquisto come ospite** (WooCommerce → Impostazioni → Account e privacy → "Consenti ai clienti di effettuare ordini senza un account") e proporre la creazione dell'account *dopo* l'ordine, con una casella. È un'impostazione e non costa nulla.
2. **Aggiungere "Ritiro in negozio a Spoleto – gratis"** come metodo di spedizione (il "Ritiro locale" di WooCommerce è già incluso). Nella scheda prodotto si può scrivere "Ordina online, ritira in enoteca". Porta traffico in negozio, dove si vendono anche gourmet e regali.
3. **Barra di avanzamento verso la spedizione gratuita** nel mini-carrello e nel carrello: "Ti mancano 38 € per la spedizione gratuita", con 3–4 suggerimenti di prodotti adatti. Da valutare con i dati degli ordini: abbassare la soglia (per esempio a 99–120 €) o introdurre una tariffa agevolata a 6 bottiglie, e confrontare lo scontrino medio prima e dopo.
4. **Riscrivere le avvertenze del carrello in tono di servizio e in un riquadro chiuso:**
   - *"Ti serve la fattura? Inserisci ragione sociale, P.IVA e codice SDI qui sotto"*: meglio ancora con i campi fattura veri nel checkout (casella "Richiedo fattura" che mostra i campi), invece del campo Note.
   - *"Cerchi un'annata o un'etichetta precisa? Scrivici su WhatsApp prima di ordinare"*.
5. Tradurre "Cart" in "Carrello". Nel carrello vuoto mostrare Offerte e Novità. Nel carrello e nel checkout ripetere i tempi di consegna e il 4,9★.
6. **Chat WhatsApp da controllare:** nella configurazione del plugin (Social Chat di QuadLayers) ci sono ancora i dati di esempio ("John Doe", etichetta "Support", messaggio "Hello! I'm testing the Social Chat plugin…"). Da verificare aprendo la chat da telefono: se il cliente vede o invia quel testo, è un errore da correggere subito. Serve anche un messaggio precompilato in italiano, per esempio "Ciao, vorrei informazioni su: [prodotto]".

---

## 4. Navigazione del catalogo

### Cosa c'è oggi
- **Due barre di menu** con circa 40 voci, scritte in modo misto (MAIUSCOLO/minuscolo, italiano/inglese). "FAQ" e "Faq" compaiono due volte. I nomi non coincidono con le categorie laterali: "God save… the Gin" nel menu, "from United Kingdom" nella barra laterale.
- **La barra laterale "Categorie prodotto"**, ripetuta su ogni pagina (anche nella scheda prodotto e nel carrello), si apre con **"_ESAURITI (198)"**. Contiene anche "Senza categoria (1)", "1 Lt..." e regioni con **(0) prodotti** (Basilicata, Calabria, Lazio, Liguria, Molise, Valle d'Aosta). "PASQUA (94)" è visibile a fine settembre.
- **La categoria Esauriti** mostra 198 prodotti con prezzo e "Leggi tutto", ma senza un'etichetta "Esaurito" visibile nella lista e senza un modo per essere avvisati.
- **"Catalogo Esclusive 2026"** ("cantine e distillerie in esclusiva per l'Umbria") è un **PDF sfogliabile** (dFlip). Non si può cliccare un prodotto, cercarlo o metterlo nel carrello, e Google non lo legge come pagina. Ed è proprio ciò che distingue questa enoteca da tutte le altre.
- La ricerca c'è (in alto e nella barra laterale). Dalla copia salvata non posso valutare la qualità dei risultati.

### Raccomandazioni
1. **Un solo menu principale con 7–8 voci** (Distillati ▸ Whisky/Rum/Gin/…, Vini ▸ Italia/Umbria/Mondo/Champagne & Bollicine, Liquori & Amari, Gourmet, Regali, Offerte, Esclusive, B2B). Sul telefono va messa la ricerca bene in vista in alto. Nomi coerenti e sempre in italiano.
2. **Togliere dalla navigazione "_ESAURITI", "Senza categoria" e le categorie a 0 prodotti.** Mostrare le stagionali (Natale/Pasqua) solo nel loro periodo. Nella barra laterale delle schede prodotto e del carrello, meno distrazioni.
3. **Prodotti esauriti:** etichetta "Esaurito" ben visibile e pulsante "Avvisami quando torna disponibile", che è anche un modo per raccogliere email. Più in basso "Alternative simili". Le pagine restano indicizzate, quindi il traffico da Google su quei nomi non va perso.
4. **Trasformare le "Esclusive 2026" in una categoria acquistabile** (tag "Esclusiva Umbria" sui prodotti + pagina con breve presentazione di ogni cantina/distilleria). Il PDF può restare come download per il B2B. Mettere un badge "Esclusiva [nome azienda]" sulle schede di questi prodotti.
5. **Filtri nelle categorie grandi** (Whisky 535, Gin 629, Vini Italia 1.043): fascia di prezzo, provenienza/regione, formato (70 cl, 1 L, magnum, mignon), "in offerta". Senza filtri, 40 pagine da 16 prodotti non le sfoglia nessuno.

---

## Priorità d'intervento

| Priorità | Intervento | Impatto atteso | Sforzo |
|---|---|---|---|
| 1 | Titolo pagine "Age Verification" → titolo vero (e verifica in Search Console) | Alto (SEO, condivisioni, schede browser) | Basso |
| 2 | Togliere il reCAPTCHA PayPal dalle schede prodotto (lasciarlo solo al checkout) | Alto (blocco diretto all'acquisto) | Basso |
| 3 | Acquisto come ospite nel checkout | Alto (meno abbandoni) | Basso |
| 4 | Popup età in italiano, leggero, non coperto dalla chat; controllare testo e dati della chat WhatsApp | Medio-alto (prima impressione di tutti) | Basso |
| 5 | Blocco consegna/pagamenti/negozio/WhatsApp sotto "Aggiungi al carrello" | Alto (conversione su tutte le schede) | Basso-medio |
| 6 | Ritiro gratuito in negozio a Spoleto | Medio (clienti locali, visite in negozio) | Basso |
| 7 | Barra "mancano X € alla spedizione gratuita" + valutazione della soglia 170 € | Medio-alto (scontrino medio) | Basso-medio |
| 8 | Nuova parte alta della home: messaggio di valore, 4,9★, categorie, vetrine; via i commenti WP | Medio-alto | Medio |
| 9 | Menu unico e barra laterale ripulita (esauriti, 0 prodotti, stagionali) | Medio | Medio |
| 10 | Esclusive 2026 come categoria acquistabile con badge | Medio (differenziazione, SEO) | Medio |
| 11 | "Avvisami quando disponibile" sugli esauriti + filtri nelle categorie grandi | Medio | Medio |
| 12 | Scheda tecnica uniforme, recensioni prodotto post-consegna, correlati mirati | Medio (nel tempo) | Medio-alto (4.000 prodotti) |

**In sintesi:** i primi 4 interventi sono impostazioni e piccole correzioni, fattibili in pochi giorni, e tolgono ostacoli che oggi fermano visitatori e acquisti. I punti 5–8 fanno emergere online quello che rende forte [nome azienda] (negozio vero, magazzino, esperienza, 4,9★). Gli ultimi aiutano a orientarsi in un catalogo da 4.000 etichette.

### Come misurare
- Prima e dopo ogni intervento: tasso di conversione, abbandono del carrello (quanti arrivano al checkout e quanti completano), scontrino medio, quota di ordini sopra i 170 €, clic sulla chat WhatsApp, ordini con ritiro in negozio.
- Search Console: titoli mostrati e clic sulle schede prodotto dopo la correzione del titolo.
