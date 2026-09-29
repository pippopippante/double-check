# [nome azienda] ([nome azienda], Spoleto): analisi del sito per vendere di più

Analisi fatta **solo** sulla copia salvata il 26/09/2026 (9 pagine: home, 3 schede prodotto, pagina "Catalogo Esclusive 2026", categoria "Esauriti", carrello, condizioni di vendita, privacy). Le fonti esterne sono indicate con il loro link e con un livello di affidabilità: **A** = obbligo di legge o prove replicate; **B** = ricerca di settore su larga scala (Baymard); **C** = singolo studio; **E** = mia ipotesi da verificare.

## Cosa fa l'azienda e cosa deve fare il sito

[nome azienda] / [nome azienda] distribuisce bevande da 50 anni. Ha un negozio fisico a Spoleto ([indirizzo]), un magazzino con migliaia di etichette e un e-commerce WooCommerce con oltre 4.000 articoli. Spedisce in Italia, in Europa, negli USA, in Canada e in Australia, e ha un'area B2B per bar, ristoranti, enoteche e aziende.

**Il risultato che conta è questo:** più **ordini online** da privati (in Italia e all'estero), poi le **registrazioni B2B** e le visite al negozio.

La base di partenza è buona. L'assortimento è molto profondo (629 gin, 535 whisky, 467 rum, 419 vini umbri), le recensioni sono ottime (badge Google 4,9, Trustpilot, eShoppingAdvisor) e i pagamenti sono moderni: sulla scheda prodotto ci sono PayPal, Apple Pay, Google Pay e il pagamento in 3 rate di PayPal. Il problema non è cosa vendono, ma **quanti ostacoli trova chi vuole comprare**.

---

## Le 4 parti più importanti e perché le ho scelte

1. **La cornice che il visitatore vede su ogni pagina** (verifica età + blocco di banner in alto + titolo della pagina). Tocca il 100% delle visite e decide se il cliente arriva al prodotto e se il sito compare su Google. Oggi contiene i problemi più gravi di tutto il sito.
2. **La scheda prodotto.** È la pagina dove si decide l'acquisto e quella su cui atterra chi arriva da Google cercando una bottiglia precisa.
3. **Carrello, checkout e condizioni di vendita** (spedizione, resi, registrazione). È il punto dove un cliente che ha già deciso abbandona o completa l'ordine. Qui ci sono anche clausole non conformi alla legge.
4. **Navigazione del catalogo** (menu, categorie, ricerca, esauriti, catalogo esclusive). Con 4.000 articoli, trovare in fretta la bottiglia giusta è il servizio principale.

Ho lasciato fuori privacy e B2B come aree a sé: il B2B lo tocco nei punti 1 e 3.

---

## 1. La cornice di ogni pagina

### Cosa ho trovato

- **Il titolo di ogni pagina è "Age Verification - "**, senza nome del prodotto né del negozio (`<title>` in tutti i file HTML, compresi home e schede prodotto). È il titolo che Google mostra nei risultati e che compare nella scheda del browser. Molto probabilmente lo imposta via JavaScript il plugin della verifica età. Google esegue il JavaScript, quindi potrebbe vedere lo stesso titolo. **Da verificare subito in Google Search Console** (Controllo URL → pagina sottoposta a scansione).
- **Blocco di banner ripetuto su ogni pagina, prima del contenuto** (`00-home.html` riga 1162-1177, uguale sulle altre pagine), in quest'ordine:
  - widget Trustpilot;
  - un H1 "OFFERTISSIMA!";
  - un banner 1024×427 ("omaggio Poggiolaccio Cantina Ninni");
  - "WE SHIP TO…";
  - un badge eShoppingAdvisor alto 235 px;
  - un banner B2B 1024×256;
  - "Spedizione gratuita da 170 €".

  Su una scheda prodotto questo significa che, soprattutto sul telefono, **il prezzo e il pulsante "Aggiungi al carrello" finiscono sotto diverse schermate di banner uguali in ogni pagina**. Inoltre ogni pagina ha come primo H1 la parola "OFFERTISSIMA!".
- **Tutte le immagini dei banner hanno `alt=""`**: chi usa uno screen reader non sa cosa offrono.
- **La verifica età** è corretta come contenuto: pulsanti Yes/No e "Ricordami" già spuntato. Sul telefono però **il pulsante verde "Chat" di WhatsApp copre il testo del messaggio** (`00-home-telefono.jpg`, `04-categoria-telefono.jpg`). Il riquadro è rosso semitrasparente con testo scuro, poco leggibile.
- **Sulle schede prodotto è comparso un reCAPTCHA a immagini** ("seleziona gli idranti", `01-prodotto-desktop.jpg` e `01-prodotto-telefono.jpg`). Lo carica la protezione antifrode di PayPal (`ppcpRecaptchaSettings`, `isSingleProduct:1`, in `01-prodotto.html` riga 1990). Nella copia è apparso probabilmente perché il browser automatico è stato scambiato per un bot. Se però capita anche a clienti veri, è un muro prima ancora di vedere il prodotto.
- **Numeri e date che non tornano.** La meta description della home dice "oltre 3.000 etichette", il testo "oltre 4.000 articoli". Il footer dice "© 2015". In fondo alla home c'è un blocco "6 pensieri su Home" con commenti WordPress del 2020-2023 (uno è "Avete il vov", senza risposta).

### Raccomandazioni (in ordine di priorità)

**1.1 Sistemare il titolo delle pagine (priorità massima, costo quasi zero)**
- **Cosa fare:** configurare il plugin della verifica età in modo che non tocchi `<title>`. In alternativa cambiarlo, o farlo lavorare solo via cookie e sovrimpressione. Ogni pagina deve avere un titolo come "Grappa Achillea Papà Marcel La Valdotaine 70 cl | [nome azienda] Spoleto".
- **Perché:** il titolo è il testo che si clicca su Google. Con un titolo identico e vuoto su 4.000 prodotti, le ricerche per nome di bottiglia, cioè il traffico più vicino all'acquisto, vanno ai concorrenti. È una conseguenza diretta di come funzionano i risultati di ricerca (E, ma il controllo in Search Console dà la conferma in un minuto).
- **Come verificarlo:** in Search Console, controllare le impressioni e i clic delle pagine `/prodotto/` prima e dopo, su 4-8 settimane.

**1.2 Togliere il blocco di banner da schede prodotto, categorie e carrello**
- **Cosa fare:**
  - tenere nell'header una sola riga sottile: "Spedizione gratuita in Italia da 170 € · Spediamo in UE, USA, Canada, Australia · ★ 4,9 recensioni";
  - lasciare il banner dell'offerta e quello B2B **solo in home**;
  - spostare i badge Trustpilot ed eShoppingAdvisor in fondo alla pagina o accanto al pulsante d'acquisto, in formato compatto;
  - dare agli H1 il nome del prodotto o della categoria, non "OFFERTISSIMA!".
- **Perché:** il 52% dei siti desktop e il 62% di quelli mobile hanno una pagina prodotto con usabilità mediocre. Una delle aree più critiche è proprio la "sezione acquista" (Baymard, https://baymard.com/blog/current-state-ecommerce-product-page-ux, B). Qui prezzo e pulsante sono spinti giù da contenuti che non riguardano il prodotto. Contenuti in meno da caricare in cima (due iframe di terzi e tre immagini grandi) rendono anche la pagina più veloce. Uno studio Deloitte su 30 milioni di sessioni associa 0,1 s in meno sul mobile a +8,4% di conversioni (https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html, C: correlazione, non esperimento).
- **Vale per noi?** Sì: il problema si ripete su tutte le 4.000 schede.
- **Come verificarlo:** tasso di aggiunta al carrello delle schede prodotto e Core Web Vitals mobile, prima e dopo.

**1.3 Verificare il reCAPTCHA di PayPal**
- **Cosa fare:** nelle impostazioni di WooCommerce PayPal Payments, controllare la "fraud protection" e **disattivare il reCAPTCHA sulla scheda prodotto** (tenerlo, se serve, solo al checkout). Poi provare dal proprio telefono in navigazione anonima, anche da rete mobile.
- **Perché:** un puzzle a immagini prima di vedere il prodotto è un attrito puro. Il 17% di chi abbandona un checkout cita errori o problemi del sito (Baymard, https://baymard.com/lists/cart-abandonment-rate, B). Che capiti a clienti veri è un'**ipotesi (E)** da verificare.

**1.4 Sistemare la verifica età su mobile**
- **Cosa fare:**
  - nascondere il pulsante Chat finché l'utente non ha risposto;
  - usare testo bianco su fondo pieno (non semitrasparente);
  - scrivere "Sì, ho 18 anni" e "No" in italiano, con l'inglese solo per i visitatori stranieri.
- **Perché:** accessibilità di base, cioè contrasto e testo non coperto (WCAG 2.1 AA). Dal 28/06/2025 l'European Accessibility Act si applica agli e-commerce, salvo le microimprese (https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022, A). Va verificato se [nome azienda] rientra nell'esenzione, ma conviene comunque.

**1.5 Pulizia della fiducia**
- **Cosa fare:**
  - uniformare "oltre 4.000 etichette";
  - aggiornare il © in 2026;
  - togliere i commenti WordPress datati dalla home e mostrare al loro posto 3 recensioni recenti da Google o Trustpilot;
  - aggiungere l'`alt` descrittivo ai banner.
- **Perché:** dettagli trascurati fanno sembrare il negozio poco curato, proprio in un settore dove si paga in anticipo per merce fragile (E).

---

## 2. La scheda prodotto

### Cosa ho trovato (`01/02/03-prodotto`)

- **Punti forti:** descrizioni scritte bene e originali (profumo, gusto, formato, gradazione), prezzo chiaro, pagamenti rapidi (PayPal, Apple Pay, Google Pay) direttamente sulla scheda.
- **Recensioni (0)** su tutte e tre le schede. L'azienda ha però ottime recensioni come negozio (4,9) che la scheda non mostra vicino al pulsante.
- **Mancano le informazioni che fanno decidere:**
  - quanto costa la spedizione;
  - quando arriva ("2/4 giorni lavorativi" è scritto solo nelle condizioni);
  - che le bottiglie viaggiano in imballo di polistirolo;
  - che si può ritirare in negozio (non risulta da nessuna parte);
  - la disponibilità reale. Le condizioni ammettono che le quantità non sono caricate: "si potrebbero ordinare 1 milione di pezzi".
- **Annata e foto:** il carrello avverte che la foto può non corrispondere all'annata o all'etichetta e che, in quel caso, si trattengono le spese di spedizione. Il cliente però lo scopre **nel carrello**, non sulla scheda dove sceglie.
- **Prodotti correlati poco coerenti:** sull'amaro "Antigelo per bipedi" (lattina da 1 L) i correlati sono Gin Oxley, Rum Flor de Caña e Gin Bulldog, scelti perché "da 1 litro" e non perché simili. Alcuni correlati hanno "Leggi tutto" invece di "Aggiungi al carrello" senza spiegare perché: in genere sono esauriti, ma non c'è scritto.
- **Categorie interne visibili:** "_NOVITA", "1 Lt...".
- **Dati strutturati:** la home ha diversi blocchi schema.org, la scheda prodotto ne ha uno solo. Da verificare con lo strumento "Test dei risultati avanzati" di Google che ci sia `Product` con `Offer` (prezzo e disponibilità), necessario per mostrare prezzo e disponibilità su Google.

### Raccomandazioni

**2.1 Un riquadro "consegna e garanzie" sotto il pulsante d'acquisto**
- **Cosa fare:** sotto "Aggiungi al carrello", 3-4 righe fisse:
  > 🚚 Spedizione in Italia 10 € (fino a 2 kg), **gratis da 170 €** · consegna in 2-4 giorni lavorativi
  > 📦 Imballo in polistirolo antiurto: se arriva rotta, la sostituiamo
  > 🏬 Ritiro gratuito in negozio a Spoleto *(se lo fate: è un vantaggio che oggi non è mai dichiarato)*
  > 💬 Vuoi un'annata precisa? Scrivici su WhatsApp prima di ordinare
- **Perché:** il 67% dei siti non mostra la stima di spedizione e costo totale nella scheda prodotto, e il 44% non mostra o non collega bene la politica resi (Baymard, https://baymard.com/blog/current-state-ecommerce-product-page-ux, B). Il primo motivo di abbandono è il costo extra inatteso (40%). Il 20% abbandona per consegna lenta e il 12% perché non riesce a calcolare il totale in anticipo (https://baymard.com/lists/cart-abandonment-rate, B).
- **Vale per noi?** Sì, e con una particolarità: per un ordine piccolo (una bottiglia da 26 €) la spedizione da 10 € pesa per il 38%. Il cliente deve saperlo prima, non scoprirlo al checkout.
- **Come verificarlo:** abbandoni tra carrello e ordine, prima e dopo.

**2.2 Mostrare la reputazione del negozio accanto al pulsante e raccogliere recensioni sui prodotti**
- **Cosa fare:**
  - subito sotto il prezzo, una riga "★ 4,9 su Google · N recensioni" con link;
  - dopo la consegna, un'email automatica che chiede una recensione del prodotto;
  - pubblicare **tutte** le recensioni, anche le negative, e scrivere una nota su come vengono verificate.
- **Perché:** un prodotto con 5 recensioni ha una probabilità d'acquisto del 270% più alta di uno senza, con effetto maggiore sui prodotti costosi (Spiegel Research Center, https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/, C). Nascondere le negative o non dire come si verificano le recensioni è vietato dalla direttiva Omnibus (A).
- **Vale per noi?** Per le bottiglie rare o costose (Tignanello 140 €, rum J.M 2009 230 €) sì. Per un catalogo di 4.000 articoli le recensioni per prodotto cresceranno lentamente, quindi nel frattempo conta di più la reputazione del negozio.

**2.3 Rendere onesta e visibile la disponibilità**
- **Cosa fare:** mostrare "Disponibile in magazzino, spedito in 2-4 giorni" solo se è vero. Per i prodotti non esauriti ma con quantità non caricate, scrivere "Disponibilità da confermare: ti avvisiamo entro 24 h". Sui prodotti esauriti, mettere "Avvisami quando torna" al posto di "Leggi tutto".
- **Perché:** dichiarazioni false sulla disponibilità sono pratiche vietate (Direttiva 2005/29/CE, allegato I, A). Un ordine annullato dopo il pagamento costa più di una vendita persa: rimborso, commissioni, fiducia (E).

**2.4 Correlati per somiglianza e categorie leggibili**
- **Cosa fare:** calcolare i correlati per categoria e fascia di prezzo (altri amari per un amaro) e nascondere le categorie tecniche ("_NOVITA", "1 Lt...") dal testo della scheda.
- **Perché:** i prodotti correlati sono tra le aree con problemi gravi più frequenti (Baymard, link sopra, B).

**2.5 Titoli leggibili**
- **Cosa fare:** passare da TUTTO MAIUSCOLO a lettere normali ("La Valdotaine Grappa Achillea Papà Marcel – 70 cl, 40%").
- **Perché:** il maiuscolo continuo è più lento da leggere (E, pratica tipografica consolidata). Aggiungere il formato al titolo aiuta anche nelle liste.

---

## 3. Carrello, checkout e condizioni di vendita

### Cosa ho trovato (`06-carrello`, `07-condizioni`)

- **Registrazione obbligatoria:** "per acquistare è invece necessario essere registrati" (condizioni, punto 1).
- **Il carrello si apre con due avvisi in maiuscolo** (foto ed etichette, fattura), prima ancora dei prodotti. Il secondo avviso minaccia: "non sarà più possibile emettere la fattura".
- **Spese di spedizione:** tabelle per peso solo in fondo alle condizioni. Italia: 10 € fino a 2 kg. Estero: da 30 € (UE zona 1) fino a 190 € (Australia).
- **Clausole sul recesso non conformi al Codice del Consumo:**
  - "rimborso **entro 30 giorni lavorativi** … **escluse le spese di spedizione** in conformità all'art. 5 D.Lgs 185/1999". Quella legge è superata. L'**art. 56 del Codice del Consumo** impone il rimborso **entro 14 giorni, comprese le spese di consegna iniziali** (standard), con lo stesso mezzo di pagamento usato, e dichiara nulla ogni clausola che limiti il rimborso (https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html, A);
  - "prodotti in super-sconto (dal 40%): non sarà possibile il reso". L'art. 59 esclude il recesso per gli alcolici solo in un caso particolare (prezzo fissato alla firma, consegna dopo 30 giorni, valore legato al mercato), e per i beni sigillati aperti per motivi di igiene. Lo sconto non è un'eccezione prevista (https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html, A);
  - "tratterremo le spese di spedizione" se la foto non corrisponde: se il recesso è esercitato entro 14 giorni, vale sempre l'art. 56.
  - Ammesso invece: chiedere che le bottiglie non siano aperte e far pagare al cliente il **rientro** della merce, se è stato informato.
- **Tono:** esempi come "non mi serve più, non lo voglio più, mi sono sbagliato… et simili" e frasi come "PayPal ovviamente incassa in ogni caso le sue %" comunicano diffidenza verso il cliente.
- **Cose positive da valorizzare:** contrassegno fino a 999 €, 5 metodi di pagamento, imballo in polistirolo, rimborso rapido se il prodotto manca.

### Raccomandazioni

**3.1 Permettere l'acquisto come ospite**
- **Cosa fare:** in WooCommerce → Impostazioni → Account, attivare "Consenti ai clienti di effettuare ordini senza un account". Proporre di creare l'account **dopo** l'ordine, con una sola casella per la password. Per il B2B non cambia nulla.
- **Perché:** il 18% di chi abbandona il checkout lo fa perché il sito richiede un account. Il 62% dei siti non rende l'acquisto come ospite abbastanza visibile (Baymard, https://baymard.com/lists/cart-abandonment-rate, B).
- **Vale per noi?** Sì, soprattutto per chi compra un regalo una tantum e per i clienti esteri.
- **Come verificarlo:** tasso checkout → ordine, prima e dopo. Controllare anche che le iscrizioni alla newsletter non calino, chiedendole come casella facoltativa al checkout.

**3.2 Riscrivere il punto 9 (recesso) e la clausola "super-sconto" secondo il Codice del Consumo (obbligo di legge)**
- **Cosa fare:**
  - rimborso entro 14 giorni dalla comunicazione di recesso, comprese le spese di consegna standard, sullo stesso mezzo di pagamento;
  - togliere l'esclusione per i prodotti in offerta e il riferimento al D.Lgs 185/1999;
  - lasciare a carico del cliente solo il rientro della merce e il requisito della bottiglia integra;
  - aggiungere il modulo tipo di recesso.
  Far rivedere il testo da un legale: questo report non è consulenza legale.
- **Perché:** livello A (art. 56 e 59 Codice del Consumo). La politica resi insoddisfacente è anche un motivo di abbandono per il 13% degli acquirenti (Baymard, B). Una politica chiara e corretta vende più di una restrittiva e illegittima.

**3.3 Carrello: prima i prodotti e il totale, poi gli avvisi, in tono amichevole**
- **Cosa fare:**
  - mostrare il **costo di spedizione calcolato già nel carrello**;
  - aggiungere una barra "Ti mancano 42 € per la spedizione gratuita" (vero, non artificiale);
  - trasformare l'avviso fattura in un campo del checkout: casella "Mi serve la fattura", che apre ragione sociale, P.IVA e SDI/PEC;
  - ridurre l'avviso foto ed etichette a una riga sotto i prodotti.
- **Perché:** il 12% abbandona perché non vede il totale in anticipo e il 40% per costi extra (Baymard, B). Un campo esplicito evita errori meglio di un avviso che il cliente deve ricordarsi di rispettare (E). L'effetto "spedizione gratis" è forte (Shampanier, Mazar & Ariely 2007, https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254, C, esperimenti di laboratorio).

**3.4 Pagina "Spedizioni e resi" separata dalle condizioni legali**
- **Cosa fare:** una pagina breve (tabella costi Italia ed estero, tempi, imballo, cosa fare se arriva rotta, come fare un reso) collegata dalla scheda prodotto e dal footer. Le condizioni legali restano, ma non sono più l'unico posto dove trovare queste informazioni.
- **Perché:** oggi i costi di spedizione sono sepolti al punto 5 di un documento lunghissimo che parte con una risoluzione dell'Agenzia delle Entrate (B, vedi punto 2.1).

**3.5 Controllare il "Chiudi ordine"**
Non ho la pagina del checkout nella copia, quindi non l'ho analizzata. Da verificare con un ordine di prova su telefono:
- quanti campi ci sono (l'ideale secondo Baymard è 12-14);
- se i 5 metodi di pagamento sono spiegati in modo semplice;
- se il blocco PayPal per i prodotti cubani viene comunicato **prima** di arrivare al pagamento.

---

## 4. Navigazione del catalogo

### Cosa ho trovato

- Il **menu** mescola sezioni per tipo (Rum, Whisky, Gin…) con sezioni come "Finest", "Rarità", "OFFERTE" e "B2B". "FAQ" compare due volte ("FAQ" e "Faq"). I sottomenu dei gin hanno nomi creativi ("God save… the Gin", "France… y España!") che non si capiscono al primo sguardo.
- La **barra laterale con tutte le categorie** è ripetuta su ogni pagina, sotto il contenuto sul telefono. Include:
  - categorie interne o scadute: "_ESAURITI (198)", "_NOVITA (1346)", "Senza categoria (1)", "PASQUA (94)" a settembre;
  - **regioni con 0 prodotti** (Basilicata, Calabria, Lazio, Liguria, Molise, Valle d'Aosta). Valle d'Aosta risulta a 0 mentre in home ci sono due grappe valdostane nuove.
- **La categoria "Esauriti" è pubblica** e contiene prodotti con "Aggiungi al carrello" attivo (Champagne Mumm Magnum, `05-categoria.txt`). Delle due, una: o non è esaurito, o si può ordinare un prodotto che non c'è.
- **"Catalogo Esclusive 2026"** è un'ottima leva ("cantine e distillerie che abbiamo in esclusiva per l'Umbria"). È però solo un **sfogliabile PDF** (plugin dFlip, `04-categoria.html` riga 1173): i prodotti non sono cliccabili né acquistabili, e il testo non è indicizzabile.
- In home la sezione "Novità" elenca 26 prodotti in ordine di caricamento, senza un filo conduttore. Dieci sono di [nome azienda] consecutivi.
- La **ricerca** c'è, ma nella copia non ho elementi per valutarne i risultati.

### Raccomandazioni

**4.1 Pulire i numeri e le voci che fanno sembrare il catalogo trascurato**
- **Cosa fare:**
  - nascondere dalla navigazione pubblica le categorie con 0 prodotti, "_ESAURITI", "Senza categoria" e le stagionali fuori stagione (Pasqua a settembre; Natale/Strenne da ottobre sì);
  - togliere il doppio "FAQ";
  - rinominare i sottomenu in modo chiaro ("Gin inglesi", "Gin francesi e spagnoli"), tenendo il tono simpatico nelle descrizioni.
- **Perché:** con nomi chiari si trova prima quello che si cerca. La pratica consolidata di NN/g è usare etichette descrittive (E/B, non verificato in questa sessione). Il costo è minimo.

**4.2 Esauriti: "Avvisami quando torna" invece di una vetrina di prodotti che non si possono comprare**
- **Cosa fare:** tenere online le schede esaurite, perché hanno traffico da Google, ma con:
  - l'indicazione "Esaurito" ben visibile;
  - un modulo "Avvisami quando torna disponibile";
  - 3-4 alternative simili disponibili.

  Correggere i prodotti che risultano sia esauriti sia acquistabili.
- **Perché:** coerenza della disponibilità (A, vedi 2.3). Recuperare una ricerca invece di perderla (E).

**4.3 Trasformare il "Catalogo Esclusive" in una collezione acquistabile**
- **Cosa fare:** una pagina "Esclusive per l'Umbria" con i prodotti veri (foto, prezzo, pulsante), una breve presentazione di ogni cantina o distilleria e il PDF come download per i clienti B2B. Metterla in home e nel menu.
- **Perché:** è un vantaggio che i concorrenti non possono copiare. Oggi resta chiuso in un documento che non vende (E).

**4.4 La home come vetrina "per motivo d'acquisto", non come lista degli ultimi caricati**
- **Cosa fare:** sotto il banner, 4-6 ingressi chiari, per esempio:
  - Idee regalo per fascia di prezzo;
  - Vini umbri (419, il vostro punto forte);
  - Gin (629);
  - Whisky;
  - Rarità e da collezione;
  - Esclusive Umbria.

  Poi "Novità" limitate a 8, con marche diverse. Il testo sui "50 anni" e sul negozio a Spoleto va spostato in alto in versione breve: è il principale motivo di fiducia.
- **Perché:** ipotesi (E) basata sull'assortimento reale (conteggi delle categorie nella barra laterale). Da verificare con i clic sui blocchi in Analytics.

**4.5 B2B: un invito chiaro**
- **Cosa fare:** il banner B2B oggi porta a "my-account" senza spiegazione. Serve una pagina "Per bar, ristoranti ed enoteche" che dica:
  - cosa si ottiene (listino all'ingrosso, esclusive per l'Umbria, fattura, consegna);
  - come registrarsi e in quanto tempo arriva l'approvazione.
- **Perché:** il B2B è l'origine storica dell'azienda. Un modulo senza spiegazioni converte meno di un'offerta chiara (E).

---

## Priorità riassunta (impatto atteso × affidabilità × costo)

| # | Intervento | Costo | Base |
|---|---|---|---|
| 1 | Titolo delle pagine ("Age Verification - ") → nome del prodotto/pagina | Basso | E, verifica in Search Console |
| 2 | Recesso e resi conformi agli art. 56-59 del Codice del Consumo | Basso (testo) | A |
| 3 | Acquisto come ospite | Basso (un'impostazione) | B |
| 4 | Togliere il blocco di banner da schede, categorie e carrello | Basso | B |
| 5 | Riquadro spedizione, tempi, imballo e ritiro sotto il pulsante; spedizione calcolata nel carrello | Medio | B |
| 6 | Verifica reCAPTCHA PayPal sulle schede e sistemazione verifica età su mobile | Basso | E / A (accessibilità) |
| 7 | Disponibilità onesta, esauriti con "avvisami", categorie vuote nascoste | Medio | A / E |
| 8 | Reputazione vicino al pulsante e raccolta recensioni per prodotto | Medio | C / A |
| 9 | Esclusive Umbria acquistabili, home per motivo d'acquisto, pagina B2B | Medio-alto | E |

## Limiti di questa analisi

Ho consultato circa 7 fonti esterne:
- Baymard sul checkout e sulla pagina prodotto;
- Deloitte sulla velocità;
- Spiegel sulle recensioni;
- Shampanier et al. sull'effetto "gratis";
- Codice del Consumo art. 56 e 59 (Brocardi);
- European Accessibility Act.

Non ho visto:
- la pagina del checkout, la ricerca interna, la pagina B2B e le pagine FAQ (non sono nella copia);
- i dati reali (Analytics, Search Console, tassi di abbandono).

Non ho fatto un confronto strutturato con i concorrenti online di alcolici (per esempio Tannico, Vino.com, Whisky.it). **I punti marcati E sono ipotesi da verificare con i dati del sito**, che per questo negozio restano la prova più forte.
