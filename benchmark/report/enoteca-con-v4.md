# [nome azienda]: dove il sito perde clienti e cosa cambiare

**Sito:** [sito] ([nome azienda], Spoleto). **Materiale analizzato:** copia salvata il 26/09/2026 (9 pagine: home, 3 schede prodotto, pagina "Catalogo Esclusive 2026", categoria "Esauriti", carrello vuoto, condizioni di vendita, privacy), con HTML, testo e screenshot. **Report del:** 28/09/2026.

---

## In breve

1. **Prima di tutto bisogna controllare che si possano vedere i prodotti e comprarli.** Nella copia salvata tutte e 3 le schede prodotto, sia da computer sia da telefono, sono coperte da un reCAPTCHA ("seleziona tutte le immagini con strisce pedonali"). Lo carica il plugin di pagamento PayPal. Il sito usa WooCommerce 11.1.0 con PayPal Payments 4.1.3: è proprio la combinazione di versioni di un bug aperto che può bloccare il pagamento.
2. **Il costo della spedizione e i tempi di consegna sono scritti solo nelle Condizioni di vendita.** Per esempio: una bottiglia costa 10 € di spedizione, sei bottiglie 15 €, sopra i 170 € è gratis, la consegna richiede 2-4 giorni. Queste informazioni vanno accanto al pulsante "Aggiungi al carrello" e nel carrello.
3. **Ogni pagina, comprese scheda prodotto e carrello, si apre con gli stessi 7 blocchi promozionali.** Su telefono il prodotto finisce sotto più di una schermata di banner.
4. **Per comprare bisogna registrarsi, e l'unico link all'account in alto si chiama "B2B".**
5. **Le condizioni di recesso contengono clausole contrarie al Codice del Consumo:** rimborso in 30 giorni lavorativi senza le spese di consegna, nessun reso sugli sconti dal 40% in su, trattenuta delle commissioni PayPal, foro di Spoleto. È un rischio legale e toglie fiducia.
6. **Su telefono non si arriva dal menu a Vodka, Tequila, Birre, Gourmet e Rarità** (oltre 580 prodotti in tutto).

---

## Chi è l'azienda, chi visita il sito, cosa conta

- **Cosa vende:** circa 4.000 articoli ("oltre 4.000" secondo la home, "oltre 3.000" secondo la meta description): distillati (gin 629, whisky 535, rum 467), vini (1.043 italiani, di cui 419 umbri), champagne, birre, prodotti gourmet. Ha un negozio fisico a Spoleto, 50 anni di distribuzione, un'area B2B per bar e ristoranti e spedisce in Italia, Europa, USA, Canada e Australia. Si paga con carta, PayPal, Google/Apple Pay, bonifico o contrassegno.
- **Chi visita:** soprattutto appassionati che cercano **una bottiglia precisa** (un whisky, un gin, un'annata) e ci arrivano da Google. Nelle pagine ci sono i tag di Google Ads e il badge del Merchant Center di Google, quindi è probabile che una parte del traffico arrivi da Google Shopping direttamente sulla scheda prodotto. Poi chi cerca un regalo, i clienti della zona e i professionisti (B2B).
- **Risultato che conta:** ordini online. In secondo piano: registrazioni B2B e visite in negozio.
- **Punti di forza da valorizzare** (presi dal sito stesso): l'assortimento, le rarità (208 articoli), le esclusive per l'Umbria, il personale competente (lo citano le recensioni in home), l'imballo in polistirolo antiurto, la chat WhatsApp, il voto 4,9 su Google.

## Cosa ho potuto vedere e cosa no

- **Tutti gli screenshot sono coperti:** quelli di home, categorie, carrello e condizioni dalla richiesta di maggiore età, quelli delle schede prodotto dal reCAPTCHA. L'impaginazione l'ho quindi ricostruita dall'HTML e dal testo. Le stime su quanto spazio occupano gli elementi su telefono sono **stime**, da verificare su un telefono vero.
- **Non ci sono nella copia:** il checkout, una normale pagina di categoria (c'è solo "Esauriti"), i risultati della ricerca, la pagina offerte. Quello che dico sul checkout viene dalle Condizioni di vendita e dall'HTML del carrello.

---

## Le 4 parti più importanti e perché

| # | Parte | Perché l'ho scelta |
|---|---|---|
| 1 | **Scheda prodotto** | Con 4.000 articoli e traffico da Google e Shopping, quasi tutte le visite utili iniziano qui, non in home. Qui il cliente decide. |
| 2 | **Costi, carrello, checkout e condizioni di vendita** | Qui si perde chi ha già deciso. I primi motivi di abbandono documentati sono i costi extra, l'obbligo di creare un account e le condizioni di reso (Baymard, vedi sotto). |
| 3 | **Navigazione del catalogo** (menu, categorie, ricerca, prodotti esauriti) | 4.000 etichette servono solo se si trovano. Su telefono intere categorie mancano dal menu. |
| 4 | **Ingresso e parte alta comune a tutte le pagine, home compresa** | Ogni visita passa da qui: verifica dell'età, captcha, 7 blocchi promozionali, pulsanti flottanti. La home è il posto dove spiegare perché comprare qui e non da un grande shop online. |

---

## 1. Scheda prodotto

**Cosa funziona:** le descrizioni sono scritte dal negozio, con note di degustazione vere (non copiate dal produttore). C'è una barra fissa "Stai visualizzando… Aggiungi al carrello" che resta a portata di mano. Su telefono c'è una barra in basso con carrello, ricerca e account. I dati strutturati Product sono presenti (servono a Google).

**Problemi:**

1. **Il reCAPTCHA copre la scheda.** In tutte e 6 le foto delle schede (3 prodotti × computer e telefono) c'è una sfida a immagini aperta sopra la pagina. È caricata solo sulle schede prodotto (`ppcp-recaptcha-js`, file `01/02/03-prodotto.html`) dal plugin PayPal. Secondo la documentazione del plugin, la sfida visibile compare quando il punteggio di rischio del visitatore è sotto la soglia (predefinita 0,5).
   - **Limite dell'osservazione:** gli screenshot li ha fatti un browser automatico, che Google tende a considerare sospetto. Un cliente normale la vedrà meno spesso.
   - **Il problema resta:** la sfida blocca la visione del prodotto anche a chi non ha nessuna intenzione di pagare con PayPal. È probabile (ipotesi) che colpisca proprio chi usa VPN, browser con protezione dal tracciamento o reti condivise.
2. **Prima del prodotto ci sono 7 blocchi promozionali, identici su ogni pagina:** widget Trustpilot, titolo "OFFERTISSIMA!", banner dell'omaggio Poggiolaccio, "WE SHIP TO: EUROPE, USA…", badge eShoppingAdvisor (iframe alto 235 px), banner B2B, "Spedizione gratuita da 170 €".
   - **Stima su telefono** (dalle misure nell'HTML): intestazione più questi blocchi fanno circa 900 px, cioè più di una schermata intera, prima ancora del nome del prodotto. Poi viene la foto (416×666), e il pulsante "Aggiungi al carrello" arriva verso la terza schermata.
3. **Accanto al pulsante mancano costo di spedizione, tempi di consegna e reso.** La scheda mostra solo prezzo, quantità e pulsante.
   - Esempio concreto: una bottiglia da 15 € (i [nome azienda] in home) arriva a casa a 25 €.
   - Il visitatore lo scopre solo nel carrello, oppure leggendo la tabella nelle Condizioni.
4. **Due pulsanti principali identici uno sotto l'altro.** "Informazioni sul prodotto?" usa le stesse classi e lo stesso stile di "Aggiungi al carrello" (`single_add_to_cart_button button alt`), e sotto ci sono i pulsanti PayPal e Google Pay.
5. **I dati essenziali sono nascosti o mancano:**
   - formato e gradazione ("Bottiglia 70 cl. Vol 40%") sono in fondo al testo della scheda "Descrizione";
   - la scheda "Informazioni aggiuntive" contiene solo "Peso 1.60 kg";
   - per i vini non c'è l'annata. Le Condizioni avvisano che le foto possono avere un'etichetta o un'annata diversa, che per i prodotti in offerta l'annata "non [è] necessariamente la più giovane", e che chi riceve un'annata diversa può rendere la bottiglia ma paga la spedizione. L'avviso è ripetuto nel carrello.
6. **Tra i prodotti correlati molti sono esauriti:** 5 su 9 nelle tre schede. Sono mostrati con prezzo e pulsante "Leggi tutto", **senza scritta "esaurito"**. Il cliente se ne accorge solo dopo il clic.
7. **Recensioni: 0 su tutte e tre le schede.** Il voto 4,9 su Google, invece, sta in un badge flottante in basso a destra, lontano dal pulsante.

## 2. Costi, carrello, checkout e condizioni di vendita

**Cosa funziona:** tanti metodi di pagamento. Tabella di spedizione chiara e basata sul peso (nelle Condizioni). Imballo antiurto spiegato bene. C'è il contrassegno per chi non vuole usare la carta.

**Problemi:**

1. **I costi di spedizione pesano molto sugli ordini piccoli e si scoprono tardi.**
   - Italia: 10 € fino a 2 kg (una bottiglia pesa circa 1,6 kg), 12 € fino a 5 kg, 15 € fino a 10 kg (circa 6 bottiglie), gratis sopra 170 €.
   - Per confronto, Callmewine chiede 6,80 € da 1 a 6 bottiglie e spedisce gratis sopra 69 € ([pagina spedizioni](https://www.callmewine.com/contact/spedizioni), livello D).
   - Non propongo di abbassare la soglia alla cieca: prima vanno fatti i conti su margini e valore medio degli ordini. Il problema principale oggi è che il costo **non si vede** dove si decide.
2. **La registrazione è obbligatoria:** "per acquistare è invece necessario essere registrati" (Condizioni, punto 1). Chi è già cliente e vuole accedere trova in alto solo la voce "B2B" (porta a `/my-account/`). Un privato non la cliccherebbe mai per fare login.
3. **Il carrello si apre con due avvisi prima dei prodotti.** Uno riguarda le foto e le annate non aggiornate. L'altro dice "ANCHE SE GIÀ REGISTRATI NEL SITO, è obbligatorio inserire i dati facoltativi… In mancanza… non sarà più possibile emettere la fattura". Questo testo si contraddice ("obbligatorio… facoltativi") e spaventa chi non ha bisogno di fattura.
4. **Il ritiro in negozio non compare.** La home invita a visitare il punto vendita di Spoleto, ma le Condizioni citano solo "Ritiro con vostro corriere: € 0". Il checkout non è nella copia, quindi va verificato.
5. **Le condizioni di recesso violano il Codice del Consumo** (livello A, obbligo di legge; non è consulenza legale, da far rivedere a un legale):

| Cosa dicono le Condizioni (punti 3 e 9) | Cosa dice la legge |
|---|---|
| Rimborso "entro 30 giorni lavorativi dal ricevimento della merce… escluse le spese di spedizione", citando il D.Lgs. 185/1999 | Rimborso **entro 14 giorni** da quando il cliente comunica il recesso (si può aspettare il rientro della merce), **comprese le spese di consegna standard** ([art. 56 Cod. Consumo](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html)) |
| Rimborsi delle carte Nexi "tramite bonifico" | Rimborso **con lo stesso mezzo di pagamento**, salvo accordo esplicito del cliente (art. 56) |
| "Prodotti in super-sconto (dal 40%): non sarà possibile il reso" | Tra le eccezioni al recesso non ce n'è nessuna per i prodotti scontati ([art. 59](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html)) |
| Annullamento prima della spedizione: rimborso "detratte le commissioni di Paypal" | Vanno rimborsati **tutti i pagamenti ricevuti** (art. 56) |
| "Foro competente: Spoleto" | Per i consumatori il foro è **inderogabilmente** quello di residenza del cliente ([art. 66-bis](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-iv/art66bis.html)) |

Resta lecito che le spese di **restituzione** siano a carico del cliente, se è informato prima, come già fanno le Condizioni. Queste clausole non sono solo un rischio di sanzione: chi le legge prima di comprare una bottiglia da 200 € si spaventa. Il 13% degli abbandoni al checkout è dovuto a una politica di reso insoddisfacente (Baymard, livello B).

## 3. Navigazione del catalogo

**Problemi:**

1. **Su telefono mancano categorie intere dal menu.** Gourmet, Birra, Tequila & Mezcal, Vodka e Rarità stanno solo nel menu secondario. Il tema Storefront nasconde quel menu su schermi piccoli: `.secondary-navigation { display: none }` nel [CSS base del tema](https://github.com/woocommerce/storefront/blob/trunk/assets/css/base/_base.scss), che lo mostra solo da computer ([_layout.scss](https://github.com/woocommerce/storefront/blob/trunk/assets/css/base/_layout.scss)). Il menu per telefono del sito (`menu-menu-1`) non le contiene. In tutto sono 150 + 80 + 121 + 23 + 208 prodotti raggiungibili da telefono solo con la ricerca o con l'elenco in fondo alla pagina. Aperitivi (95), Vermouth (86) e Rum cubani (46) non sono in nessun menu. Va confermato con una prova su telefono, ma il codice del tema e del sito indicano questo.
2. **L'elenco "Categorie prodotto" è disordinato e ripetuto su ogni pagina**, anche nel carrello e nella privacy. Ha oltre 60 voci, e la prima è "_ESAURITI (198)". Poi vengono:
   - "_NOVITA (1346)": un terzo del catalogo non è una novità;
   - nomi poco chiari come "1 Lt..." e "Senza categoria (1)";
   - sei regioni con **0** prodotti (Basilicata, Calabria, Lazio, Liguria, Molise, Valle d'Aosta);
   - Natale e Pasqua a fine settembre.
   
   Su telefono questo elenco finisce sotto il contenuto di ogni pagina.
3. **Nella categoria "Esauriti" ci sono prodotti in vendita.** Dei 16 prodotti in prima pagina, 15 sono esauriti. Uno, Champagne Mumm Magnum a 74,50 €, risulta disponibile e acquistabile. In più le Condizioni dicono che le giacenze non vengono caricate ("sarebbe possibile ordinare… anche 1 milione di pezzi"): la disponibilità mostrata non è affidabile.
4. **Nell'unica pagina elenco della copia non ci sono filtri** (prezzo, paese/regione, formato, gradazione): c'è solo l'ordinamento. Si vedono 16 prodotti per pagina ("1-16 di 198", 13 pagine). Se le altre categorie hanno la stessa impostazione, il gin (629) occupa circa 40 pagine.
5. **La ricerca è quella di base di WooCommerce**, senza suggerimenti mentre si scrive. Chi cerca "Caroni" o "Sagrantino" deve indovinare come è scritto il nome. Da verificare con i dati delle ricerche interne.
6. **Il "Catalogo Esclusive 2026" è un PDF sfogliabile** (con audio attivo): dalle pagine non si può cliccare né comprare nessun prodotto.

## 4. Ingresso e parte alta comune, home compresa

**Problemi:**

1. **In home manca il perché.** Il primo titolo (H1) è "OFFERTISSIMA!", poi c'è un titolo visibile "Home", poi 26 "novità" (10 vini [nome azienda] di fila). La presentazione ("Da 50 anni… magazzino con migliaia di etichette… punto vendita a Spoleto… se cercate un'etichetta che non trovate, scriveteci") è **in fondo**, dopo tutti i prodotti. Chi legge sul web scansiona e dà peso quasi solo ai primi elementi (NN/g, livello B).
2. **In fondo alla home c'è una sezione commenti "6 pensieri su 'Home'".** I commenti vanno dal 2020 al 2023. C'è una domanda di una cliente senza risposta dal 2020 ("Avete il vov") e la scritta "Devi essere connesso per inviare un commento". Sembra un sito trascurato, cosa che il negozio non è.
3. **Le recensioni sono sparse su tre sistemi:** Trustpilot (widget in alto), eShoppingAdvisor (badge da 235 px), Google (badge flottante 4,9). Nessuna è vicino al pulsante di acquisto.
4. **I pulsanti flottanti coprono il contenuto su telefono.**
   - Il pulsante "Chat" di WhatsApp sta a metà schermo, sopra il testo (visibile in `00-home-telefono.jpg`).
   - Il badge Google (108×84 px, a 20 px dal fondo e dal bordo destro, sopra tutto) sta probabilmente sopra l'icona del carrello nella barra in basso di Storefront. Da verificare su telefono.
5. **La verifica dell'età** ha i pulsanti in inglese ("Yes/No") su un sito italiano. Finché è aperta cambia il titolo della pagina in "Age Verification - " (così lo ha registrato anche il tracciamento Bing). "Ricordami" è già spuntato, e va bene così.
6. **Cookie (da verificare subito, livello A).** Nella copia, salvata prima di qualsiasi clic, non c'è traccia del banner cookie. Cookie-Script viene richiamato, ma due dei tre indirizzi sono malformati (`…b42d.jsgtm.js`, `…b42d.jsgtm.init_consent`). Risultano invece già caricati Meta, due pixel TikTok, Bing (che ha già registrato la visita), LinkedIn e Microsoft Clarity. Le [linee guida del Garante](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876) vietano cookie e strumenti non tecnici al primo accesso senza consenso. Cookie-Script può mostrare il banner solo in alcuni paesi, quindi va controllato da una connessione italiana in finestra anonima.

---

## Raccomandazioni in ordine di priorità

L'ordine tiene conto dell'impatto atteso, dell'affidabilità delle prove e del costo (i primi punti costano poco).

### 1. Rendere visibili i prodotti e verificare il pagamento (subito, poche ore)

**Cosa:**
- Fare oggi un ordine di prova completo con PayPal, con carta e con bonifico, da telefono e da computer, anche in finestra anonima e con un browser come Brave o Firefox con protezione rigida.
- Nelle impostazioni di PayPal Payments, togliere la protezione reCAPTCHA dai pulsanti rapidi sulla scheda prodotto. In alternativa, disattivare i pulsanti PayPal sulla scheda (`single_product_buttons_enabled`), abbassare la soglia oppure attivare "Guest Orders Only" solo dove serve. La protezione deve stare al pagamento, non all'apertura della scheda.
- Aggiornare il plugin appena esce la correzione.

**Perché:**
- Il captcha compare in 6 foto su 6 delle schede (file del sito).
- Secondo la [documentazione del plugin](https://woocommerce.com/document/woocommerce-paypal-payments/fraud-and-disputes/) la sfida visibile scatta sotto una soglia di punteggio regolabile.
- Il [bug #4749](https://github.com/woocommerce/woocommerce-paypal-payments/issues/4749) riguarda proprio WooCommerce 11.1.0 con PayPal Payments 4.1.2 o successivi (il sito ha 4.1.3): il pagamento PayPal si blocca con "completa la verifica CAPTCHA" senza che compaia nessuna verifica. Un altro bug aperto, [#4229](https://github.com/woocommerce/woocommerce-paypal-payments/issues/4229), fa sì che una sfida fallita mostri solo un errore generico.
- Livello: osservazione sul sito più documentazione del fornitore e segnalazioni di bug (C).

**Vale per noi?** Sì: versioni identiche e sfida osservata.

**Rischio:** il captcha potrebbe essere comparso solo perché il browser era automatico. Anche in quel caso, la sfida all'apertura della scheda resta un costo senza beneficio per chi paga con carta o bonifico.

**Come verificarlo:** Microsoft Clarity è già installato. Guardare le registrazioni delle schede prodotto: quante mostrano il riquadro reCAPTCHA? In GA4 confrontare, prima e dopo la modifica, il rapporto tra "view_item" e "add_to_cart" (l'evento view_item è già tracciato), diviso per browser.

### 2. Mostrare costo e tempi di consegna accanto al pulsante e nel carrello

**Cosa:**
- Sotto il prezzo, in una riga: "Spedizione in Italia da 10 € · gratis da 170 € · consegna in 2-4 giorni lavorativi · imballo antiurto · reso entro 14 giorni".
- Nel carrello, "Ti mancano X € per la spedizione gratuita" e il costo di spedizione calcolato subito.
- Comunicare anche la convenienza per quantità, che oggi nessuno vede: "6 bottiglie: 15 € in tutta Italia".
- Se il negozio lo permette, aggiungere "Ritiro gratuito in negozio a Spoleto".

**Perché:** il 40% di chi abbandona il checkout lo fa per costi extra troppo alti, il 12% perché non riusciva a calcolare il totale in anticipo, il 20% per la consegna troppo lenta. Il 67% dei siti non mostra la spedizione nella scheda prodotto ([Baymard, abbandono](https://baymard.com/lists/cart-abandonment-rate), [Baymard, scheda prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux), livello B). La reazione sproporzionata a "gratis" rende utile mostrare quanto manca alla soglia ([Shampanier, Mazar e Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254), livello C, esperimenti di laboratorio).

**Vale per noi?** Sì, e forse più che per la media: su una bottiglia da 15-26 € la spedizione pesa tra il 38% e il 67%.

**Rischio:** mostrare "10 €" su una bottiglia da 15 € può far uscire qualcuno prima. Chi però lo scopre nel carrello esce comunque, e con meno fiducia. La riga sulle 6 bottiglie serve a spostare la scelta verso ordini più grandi (ipotesi, E).

**Come verificarlo:** in GA4, tasso di passaggio da "add_to_cart" a "begin_checkout" a "purchase" e valore medio dell'ordine, 4-6 settimane prima e dopo. Il traffico probabilmente non basta per un test A/B affidabile, quindi è un segnale debole.

### 3. Togliere la fascia promozionale da schede, carrello e pagine interne

**Cosa:**
- Lasciare sulle pagine interne **una sola riga sottile** con le due informazioni utili: "Spedizione gratuita in Italia da 170 € · Spediamo in Europa, USA, Canada, Australia".
- Spostare in home e nella pagina Offerte il banner dell'omaggio, il banner B2B e il badge eShoppingAdvisor.
- Tenere un solo titolo H1 per pagina: oggi "OFFERTISSIMA!" è un H1 ripetuto ovunque.

**Perché:** su telefono il prodotto oggi parte dopo più di una schermata di banner (stima dall'HTML). Chi arriva da Google su una scheda cerca quella bottiglia. Livello E: ipotesi fondata sul progetto, non su uno studio.

**Vale per noi?** Sì: la fascia è nell'HTML di tutte e 9 le pagine.

**Rischio:** meno visibilità per le offerte. Si compensa con la voce "Offerte" nel menu (c'è già) e con la home.

**Come verificarlo:** in Clarity, profondità di scorrimento e clic su "Aggiungi al carrello" da telefono, prima e dopo.

### 4. Permettere l'acquisto senza registrazione e chiamare le cose col loro nome

**Cosa:**
- Attivare l'acquisto come ospite e renderlo l'opzione più evidente. Proporre di creare l'account **dopo** l'ordine ("salva i tuoi dati per la prossima volta").
- Rinominare "B2B" in "Accedi" e aggiungere una voce separata "Area professionisti (B2B)".
- Sostituire gli avvisi del carrello con una casella nel checkout "Mi serve la fattura" che apre i campi Partita IVA, codice SDI e PEC.

**Perché:** il 18% di chi abbandona lo fa perché il sito chiede di creare un account, e il 62% dei siti non rende abbastanza visibile l'acquisto come ospite ([Baymard, checkout](https://baymard.com/research/checkout-usability), livello B).

**Vale per noi?** Sì. La registrazione non verifica l'età, quindi non serve a quello. Basta la dichiarazione di maggiore età già presente nelle Condizioni, più la consegna a un maggiorenne.

**Rischio:** alcuni plugin (B2B, prezzi riservati) potrebbero dipendere dall'account. Il flusso B2B resta com'è, cambia solo quello dei privati.

**Come verificarlo:** tasso di completamento del checkout in GA4 e numero di ordini di clienti nuovi.

### 5. Riscrivere le condizioni di recesso e reso secondo la legge

**Cosa:**
- Correggere i cinque punti della tabella nella parte 2: rimborso in 14 giorni con le spese di consegna standard incluse, stesso mezzo di pagamento, nessuna esclusione per gli sconti, nessuna trattenuta delle commissioni, foro del consumatore.
- Semplificare la procedura: via "comunicazione sottoscritta" e "ABI, CAB, CIN" (serve al più l'IBAN, e solo se il cliente accetta il bonifico).
- Riassumere la politica in 3 righe chiare sotto il pulsante e nel checkout: "Hai 14 giorni per ripensarci, rimborso entro 14 giorni".
- Far rivedere il testo a un legale.

**Perché:** obbligo di legge ([art. 56](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html), [art. 59](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html), [art. 66-bis](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-iv/art66bis.html) del Codice del Consumo, livello A). Il 13% degli abbandoni è legato alla politica resi (Baymard, livello B).

**Vale per noi?** Sì, il sito vende a consumatori.

**Rischio:** qualche rimborso in più delle spese di consegna. È un costo che la legge impone comunque.

**Come verificarlo:** confrontare numero di resi e costo dei rimborsi dei 6 mesi prima e dopo.

### 6. Verificare e sistemare il consenso ai cookie (livello A)

Aprire il sito da una connessione italiana, in finestra anonima. Se il banner non compare o se i pixel di Meta, TikTok, Bing, LinkedIn e Clarity partono prima della scelta, correggere il tag di Cookie-Script in Google Tag Manager (gli indirizzi malformati `…jsgtm.js`) e bloccare i tracciamenti fino al consenso ([Garante, linee guida cookie](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876)). Non porta clienti, ma evita sanzioni. Con il consenso corretto le statistiche contano meno visite: va messo in conto quando si confrontano i numeri prima e dopo.

### 7. Menu da telefono completo e categorie pulite

- Assegnare alla posizione "Handheld" di Storefront un menu per telefono che includa **tutte** le categorie principali: aggiungere Vodka, Tequila & Mezcal, Birre, Gourmet, Rarità, Aperitivi e Vermouth (fonte sul comportamento del menu: [forum WordPress, Storefront](https://wordpress.org/support/topic/secondary-menu-when-handheld/)).
- Eliminare il doppio "FAQ/Faq".
- Nell'elenco categorie: nascondere "_ESAURITI", "Senza categoria" e le regioni vuote; rinominare "1 Lt..." in "Formato litro"; limitare "Novità" agli ultimi 60-90 giorni; mostrare Natale e Pasqua solo in stagione.
- Aggiungere nelle categorie filtri per prezzo, paese/regione, formato e gradazione, e alzare i prodotti per pagina (per esempio 48). Pratica diffusa nel settore (D) e ipotesi (E): da confermare con Clarity e con i dati delle ricerche interne.
- Ricerca con suggerimenti e foto mentre si scrive, tollerante agli errori di battitura. Prima guardare in GA4 le ricerche che non danno risultati (E).

### 8. Esauriti gestiti in modo onesto e utile

- Etichetta "Esaurito" ben visibile.
- Togliere gli esauriti dai prodotti correlati.
- Sulle schede esaurite, un pulsante "Avvisami quando torna" (email o WhatsApp) e 3 alternative disponibili.
- Correggere i prodotti classificati "esauriti" ma acquistabili (Mumm Magnum).
- Nel medio periodo, caricare almeno una giacenza indicativa, per evitare ordini di prodotti che non ci sono.

Livello E: ipotesi basata sui dati del sito (5 correlati su 9 esauriti).

### 9. Scheda prodotto più chiara

- **Scheda sintetica vicino al prezzo:** produttore, formato, gradazione, provenienza, annata. Per i vini "annata: [anno]" oppure "ultima annata disponibile". Per le offerte, dichiarare l'annata spedita. Così il cliente non scopre l'annata a consegna avvenuta.
- **"Informazioni sul prodotto?"** diventa un pulsante secondario (contorno, non pieno), o un link "Chiedi a noi su WhatsApp".
- **Il voto del negozio** (un solo sistema, quello con più recensioni, con voto **e numero** di recensioni) va vicino al pulsante e nel checkout. Togliere gli altri widget alleggerisce anche la pagina.
- **Recensioni sui prodotti:** raccoglierle chiedendole via email dopo la consegna. Un prodotto con 5 recensioni ha una probabilità di acquisto molto più alta di uno senza ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), livello C). Con 4.000 articoli arriveranno soprattutto sui più venduti: il voto del negozio resta il segnale principale.

### 10. Home che dice chi siete e dove andare

In alto, al posto di "OFFERTISSIMA!" e "Home":
- una frase più tre fatti verificabili: "Enoteca a Spoleto dal 1976 [anno da confermare] · 4.000 etichette in magazzino · spedizione in 2-4 giorni con imballo antiurto", con il voto Google;
- 6-8 riquadri di categoria: Whisky, Gin, Rum, Vini dell'Umbria, Champagne, Rarità, Idee regalo;
- poi Offerte, poi 8-12 novità miste;
- il servizio "Non trovi un'etichetta? Scrivici su WhatsApp" in evidenza (oggi è in fondo, solo via email);
- in basso, B2B e negozio fisico con orari e mappa.

Chiudere i commenti sulla pagina Home, o almeno rispondere alla domanda del 2020. Testi concisi e fatti oggettivi rendono la pagina più usabile di quelli promozionali ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), livello B).

### Punti minori (uno per riga)

- Riposizionare il pulsante WhatsApp su telefono (in basso a sinistra o nella barra in basso) e il badge Google, così che non coprano testo e carrello.
- Permettere lo zoom su telefono: il viewport ha `maximum-scale=1`, che su Android blocca l'ingrandimento di etichette e testi. Criterio WCAG 1.4.4. Verificare se l'azienda è soggetta all'European Accessibility Act (esenti solo le microimprese con meno di 10 dipendenti **e** meno di 2 milioni di fatturato: [fonte](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022)).
- Verifica dell'età in italiano ("Sì, ho almeno 18 anni" / "No") e titolo della pagina non sovrascritto con "Age Verification - ".
- Testo alternativo sul banner offerte (oggi `alt=""`, e il testo dell'offerta è dentro l'immagine).
- Offerte: verificare che il "prezzo originale" barrato (per esempio Frescobaldi La Maione 120 → 99 €) sia il più basso degli ultimi 30 giorni ([art. 17-bis Cod. Consumo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art17bis.html), A). Lo "Strega Mignon in offerta" da 3 a 150 € confonde: va mostrato il formato in offerta.
- Prodotti cubani: verificare che i pulsanti PayPal rapidi non compaiano sulle loro schede, visto che PayPal non li accetta.
- Incoerenze da correggere: indirizzo "[indirizzo]" nella privacy contro "1" altrove; "3.000" etichette nella descrizione per Google contro "4.000" in home; "© 2015" nel footer.
- Catalogo Esclusive 2026: trasformarlo in una categoria con prodotti acquistabili (il PDF si può tenere per il B2B) e togliere l'audio dello sfogliatore.
- Velocità: la home pesa 362 KB di solo HTML e carica circa 15 servizi esterni (Google Ads, GA4, Meta, 2 TikTok, Bing, LinkedIn, Clarity, Trustpilot, eShoppingAdvisor, badge Google, PayPal, reCAPTCHA, WhatsApp). Misurarla con PageSpeed Insights su telefono ed eliminare ciò che non si usa. Tra velocità da telefono e conversioni c'è una correlazione ([Deloitte 2020](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html), livello C, osservazionale).

---

## Come misurare i risultati

Il sito ha già gli strumenti per misurare: GA4 con gli eventi e-commerce (view_item è tracciato), Google Ads e Microsoft Clarity (registrazioni delle sessioni e mappe di calore).

1. **Prima di cambiare qualcosa:** salvare 4 settimane di questi numeri, separati tra telefono e computer: view_item → add_to_cart → begin_checkout → purchase, tasso di conversione, valore medio dell'ordine.
2. **Clarity:** filtrare le sessioni sulle schede prodotto e cercare il riquadro reCAPTCHA, i "clic di rabbia" e le uscite dal carrello.
3. **Dopo ogni gruppo di modifiche:** confrontare 4-6 settimane. Con i volumi di un negozio di queste dimensioni un test A/B difficilmente dà risultati affidabili: è un confronto prima/dopo, da leggere con prudenza (stagionalità di Natale!).

## Fonti consultate e limiti

**Dal sito (le prove più forti per questo caso):** tutti i file della copia, in particolare `01/02/03-prodotto.html` (reCAPTCHA, pulsanti, correlati), `00-home.html` (fascia comune, menu, tracciamenti, badge), `05-categoria.txt/html` (esauriti), `06-carrello.txt` (avvisi), `07-condizioni.txt` (spedizioni, registrazione, recesso), e gli screenshot.

**Esterne:**
- Baymard: [abbandono carrello](https://baymard.com/lists/cart-abandonment-rate), [checkout](https://baymard.com/research/checkout-usability), [scheda prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux) (B)
- [NN/g, come si legge sul web](https://www.nngroup.com/articles/how-users-read-on-the-web/) (B)
- [Spiegel Research Center, recensioni](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/) (C)
- [Shampanier, Mazar e Ariely, effetto "gratis"](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254) (C)
- [Deloitte, velocità](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html) (C)
- Documentazione [WooCommerce PayPal Payments, frodi e reCAPTCHA](https://woocommerce.com/document/woocommerce-paypal-payments/fraud-and-disputes/); bug [#4749](https://github.com/woocommerce/woocommerce-paypal-payments/issues/4749) e [#4229](https://github.com/woocommerce/woocommerce-paypal-payments/issues/4229) (C)
- Tema Storefront: [_base.scss](https://github.com/woocommerce/storefront/blob/trunk/assets/css/base/_base.scss), [_layout.scss](https://github.com/woocommerce/storefront/blob/trunk/assets/css/base/_layout.scss), [forum WordPress sul menu handheld](https://wordpress.org/support/topic/secondary-menu-when-handheld/)
- Codice del Consumo, [art. 56](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html), [art. 59](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html), [art. 66-bis](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-iv/art66bis.html), [art. 17-bis](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art17bis.html); [Garante, linee guida cookie](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876) (A)
- [Callmewine, spedizioni](https://www.callmewine.com/contact/spedizioni) (D, un solo concorrente)

**Non ho approfondito:**
- come funzionano davvero checkout e ricerca (non sono nella copia);
- se in Italia ci sono obblighi specifici sul modo di verificare l'età nella vendita online di alcolici;
- studi su filtri e pagine elenco (le raccomandazioni su filtri e ricerca sono ipotesi o pratica diffusa);
- misura reale della velocità;
- SEO e area B2B;
- confronto più ampio sulle soglie di spedizione gratuita.

Posso continuare su uno di questi punti.
