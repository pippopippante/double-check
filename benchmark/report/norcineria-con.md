# [nome azienda] ([sito]): analisi del sito per portare più clienti

*Analisi fatta solo sulla copia salvata del 26/09/2026 (9 pagine: home, 3 schede prodotto, shop, categoria "Confezioni Natalizie", shop con prodotto nel carrello, Chi siamo, Contatti). Il checkout vero e la pagina "pagamenti-spedizioni-recesso" non sono nella copia, quindi non li ho potuti valutare.*

## Che cosa fa l'azienda e cosa deve fare il sito

[nome azienda] ([nome] e Linda) produce salumi e formaggi a Campi di Norcia e ha un **punto vendita a Spoleto**. Il sito è un negozio WooCommerce con 33 prodotti: salumi (a peso variabile, da 14 € a 180 €), formaggi, legumi e salse umbre e **due confezioni natalizie (50 € e 95 €)**. Promette spedizioni con corriere espresso.

Il sito può portare clienti in tre modi, dal più al meno importante:
1. **Ordini online** (soprattutto regali e confezioni di Natale, spediti in tutta Italia).
2. **Ordini per telefono o messaggio**: il sito stesso spinge a chiamare o scrivere su Facebook.
3. **Visite al negozio di Spoleto e a Campi**, da parte di turisti e gente del posto.

**Il momento conta.** La copia è del 26 settembre: mancano 2-3 mesi al periodo in cui si vendono le confezioni natalizie, lo scontrino più alto del catalogo. Quasi tutte le raccomandazioni qui sotto andrebbero fatte **entro fine ottobre**.

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché è decisiva |
|---|---|---|
| 1 | **Schede prodotto** (confezioni natalizie e salumi) | È qui che la persona decide se comprare. Per un prodotto alimentare, da regalo e a peso variabile, le domande che bloccano l'acquisto sono tante (quanto pesa, quanto costa al kg, quanto dura, quando arriva) e oggi restano senza risposta. |
| 2 | **Spese di spedizione, tempi di consegna e carrello** | Secondo Baymard la prima causa di abbandono del carrello sono i costi extra inaspettati. Sul sito il costo di spedizione non compare in nessuna pagina della copia. |
| 3 | **Home page** | È la pagina da cui arrivano quasi tutti. Oggi è una galleria di foto della cantina e ha un solo pulsante verso lo shop, in fondo. Non mostra né un prodotto né un prezzo. |
| 4 | **Contatti e punto vendita di Spoleto** | Una parte dei clienti compra per telefono o in negozio. I numeri di telefono compaiono solo nella pagina Contatti, e l'indirizzo di Spoleto non compare in nessuna delle pagine salvate. |

Ho lasciato fuori "Chi siamo": è breve ma fa il suo lavoro. La sua forza (la storia, la cantina, il camino, la puntata di *Unti e Bisunti*) va però spostata più vicino all'acquisto (vedi punti 3.1 e 1.4).

---

## Problemi trovati nel sito stesso (prima di qualsiasi principio generale)

Sono errori concreti che minano la fiducia o fanno perdere vendite:

- **Il sito si contraddice sull'origine della carne.** La stessa home dice "carni … **esclusivamente Umbre**" (in alto) e poco dopo "carni … **esclusivamente italiane**". *Chi siamo* dice "provenienza esclusivamente Umbra". Per un produttore che vende qualità e territorio, è la contraddizione più grave. (00-home.txt righe 29 e 37)
- **Il sito si contraddice sull'estero.** La home dice "Consegne … in Italia **e all'estero**", mentre Contatti dice "Effettuiamo spedizioni in tutto il **territorio nazionale**". (00-home.txt r. 31, 08-contatti.txt r. 55)
- **Il costo di spedizione non si vede da nessuna parte.** C'è solo un link a "pagamenti-spedizioni-recesso", e solo nella pagina Contatti. Non compare nelle schede prodotto né nel mini-carrello (che mostra solo "Subtotale").
- **Alcuni testi sono in inglese** in un sito tutto italiano: il pulsante arancione "**Questions? Request a Call Back**" in ogni scheda prodotto, l'etichetta "**Out of stock**" accanto a "Esaurito" e le "**bags** natalizie".
- **Nella scheda di una confezione natalizia i prodotti correlati sono esauriti.** Sotto la confezione da 50 € compaiono "Formaggio di pecora stagionato – Out of stock" e "Salamella al Cinghiale – Esaurito". (02-prodotto.txt)
- **Refusi visibili**: "Scopri **si** più", "prodotti **l'interno** della confezione", "realizzati in modo **artigianali**", "la stagionatura **più** raggiungere i quattro mesi", "VISITA LA NOSTRA PAGINA **SOCIALI**", il tag "**stenne**" (strenne).
- **Lo shop offre "Ordina per valutazione media", ma non c'è nessuna recensione.**
- **Nella home il video non si vede** finché non si accettano i cookie di marketing: al suo posto c'è un riquadro grigio.
- **Le due confezioni natalizie hanno la stessa meta description** e la confezione da 50 € ha come titolo "Bags di Natale con Prodotti artigianali" invece del suo nome.
- **Su mobile il banner dei cookie copre la foto, il prezzo e il pulsante "Aggiungi al carrello"** in tutte le pagine (vedi gli screenshot *-telefono.jpg), perché occupa circa metà dello schermo.

---

## Raccomandazioni in ordine di priorità

L'ordine tiene conto dell'impatto atteso, dell'affidabilità delle prove e dell'urgenza legata al Natale.

### Priorità 1: mostrare costo e tempi di spedizione prima del checkout

**Cosa**
- Accanto a "Aggiungi al carrello", in ogni scheda prodotto, aggiungere una riga fissa: *"Spedizione con corriere espresso in 24/48h: X € (gratis sopra Y €). Prodotti sottovuoto."*
- Mostrare la stessa informazione nel mini-carrello, sotto il subtotale, insieme a quanto manca alla spedizione gratuita.
- In home e nella categoria Confezioni Natalizie indicare la **data ultima per ordinare e ricevere prima di Natale** (per esempio "Ordina entro il 16 dicembre"). La data deve essere reale: una scadenza finta è vietata.
- Mettere d'accordo la home e la pagina Contatti sull'estero: o si spedisce all'estero (e allora si dice dove e a quanto) o si toglie la frase.

**Perché**
- Tra chi abbandona il checkout, il 40% lo fa per costi extra troppo alti, il 20% per consegna troppo lenta e il 12% perché non riesce a calcolare prima il costo totale. Il 67% dei siti non mostra la stima di spedizione nella scheda prodotto. Fonti: Baymard, [abbandono del carrello](https://baymard.com/lists/cart-abandonment-rate) e [scheda prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux). Livello **B**.
- La parola "gratis" ha un peso sproporzionato rispetto a un piccolo costo. Fonte: [Shampanier, Mazar & Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254). Livello **C** (esperimenti di laboratorio). Prima di fissare la soglia Y bisogna fare i conti con il margine e con lo scontrino medio: una soglia vicina a 95 € farebbe della confezione grande quella "con spedizione gratis".
- Scadenze false sono vietate (allegato I, punto 7 della Direttiva 2005/29/CE; [AGCM, caso Deghi](https://www.agcm.it/media/comunicati-stampa/2026/6/PS13027)). Livello **A**.

**Vale per noi?** Sì, e forse più che per la media. Chi compra salumi da regalo deve sapere se arrivano in tempo e integri, e un costo di spedizione scoperto solo all'ultimo passo pesa molto su un ordine da 20 €.

**Come verificarlo**: guardare in Analytics il tasso carrello → ordine e le visite alla pagina spedizioni, prima e dopo, e contare quante chiamate chiedono "quanto costa spedire". Con i volumi di un piccolo negozio un A/B test non darebbe risultati affidabili, quindi basta un confronto prima/dopo.

### Priorità 2: completare le schede prodotto con le risposte che mancano

**Cosa**

1. **Mostrare il prezzo al kg** sui prodotti venduti a peso. Esempi: prosciuttino di cinghiale "400 g minimo – 20 €" diventa "≈ 50 €/kg"; per le varianti del Prosciutto di Norcia (28,50–180 €) indicare peso e €/kg di ciascuna.
2. **Confezioni natalizie**:
   - una foto per confezione con **tutti i pezzi disposti ed etichettati** (oggi c'è un cesto);
   - il **peso totale**: circa 1,9 kg per la confezione da 50 € e circa 3,6 kg per quella da 95 €, calcolato dagli elenchi nelle schede;
   - una riga su **cosa hai in più** con la confezione da 95 €: Bastardone 350 g, capocollo 350 g e guanciale 1 kg in più, a 45 € di differenza;
   - **biglietto d'auguri** e **spedizione a un indirizzo diverso**, se sono possibili: sono le domande tipiche di chi regala.
3. In ogni scheda, un blocco uguale per tutti: **conservazione e durata** (sottovuoto, quanto dura in frigo e fuori), **allergeni**, **spedizione e resi** (per un alimentare il recesso ha delle eccezioni: dirlo chiaramente).
4. **Tradurre in italiano** "Questions? Request a Call Back" in "Hai domande? Ti richiamiamo noi" e "Out of stock" in "Esaurito". Scrivere "confezioni" invece di "bags".
5. **Togliere i prodotti esauriti dai correlati** (in WooCommerce: nascondere gli esauriti dal catalogo). Sotto le confezioni natalizie mostrare l'altra confezione e i singoli prodotti presenti nel cesto.
6. **Correggere i refusi** elencati sopra.

**Perché**
- Il prezzo per unità di misura è obbligatorio accanto al prezzo di vendita (art. 14 del Codice del Consumo, [testo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art14.html)). Livello **A**. Inoltre l'81% dei siti non lo mostra: si guadagna anche chiarezza (Baymard, B).
- Le aree con più problemi gravi nelle schede prodotto sono le specifiche, spedizione e resi e i prodotti correlati; il 44% dei siti non mostra o non collega bene la politica resi. Fonte: [Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux). Livello **B**.
- Gli utenti scorrono la pagina invece di leggerla (79% scorre, 16% legge parola per parola), e un testo conciso, scansionabile e oggettivo migliora l'usabilità. Fonte: [NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/). Livello **B**. Per questo servono **fatti in elenco** (peso, €/kg, durata) e non altri aggettivi come "prelibati" o "sapientemente".
- Testi in inglese, refusi e prodotti esauriti in vetrina come fattori di sfiducia: questa è un'**ipotesi (E)**, coerente con il fatto che lo stile promozionale riduce la credibilità secondo NN/g.

**Vale per noi?** Sì. Le schede del prosciuttino e delle confezioni sono già buone sul racconto (camino, cantina, ricetta del carpaccio), ma non rispondono a quanto costa al kg, quanto dura e quando arriva.

**Come verificarlo**: confrontare prima e dopo il tasso scheda → carrello per le due confezioni e contare le domande ricevute per telefono o Messenger.

### Priorità 3: rifare la home come vetrina, non come galleria

**Cosa**
1. **Nella prima schermata**: una frase che dice chi siete e cosa si può fare ("Salumi e pecorini fatti a Campi di Norcia. Spediamo in tutta Italia in 24/48h."), un pulsante "**Vai allo shop**" e, in stagione, un secondo pulsante "**Confezioni di Natale – da 50 €**".
2. **Subito sotto**: 4-6 prodotti più venduti con foto, prezzo e pulsante (le due confezioni, il salame norcino di suino rustico, il prosciutto di Norcia IGP, il pecorino, le lenticchie di Castelluccio IGP).
3. **Poi le prove di qualità, in punti brevi**: niente conservanti né coloranti, carni umbre da allevamento brado, stagionatura in cantina e al camino di legna, la puntata di *Unti e Bisunti*. Ridurre le 6 foto della cantina a 1-2.
4. **Correggere la contraddizione Umbre/italiane**, scegliendo la frase vera e usandola uguale su tutto il sito.
5. **Video**: al posto del riquadro grigio mettere una miniatura con il link a YouTube o Facebook, che si vede anche senza accettare i cookie.
6. **In fondo**: indirizzo e orari dei negozi di Campi e Spoleto, telefono e link alla pagina spedizioni. Oggi il footer contiene solo la P.IVA e i credit dell'agenzia.

**Perché**
- La struttura segue quello che gli utenti fanno davvero: scorrono e decidono dalle prime righe (NN/g, sopra, livello **B**).
- Avere l'offerta e i prodotti in prima schermata è una convenzione di tutti gli e-commerce alimentari (livello **D**). Conviene seguirla perché è ciò che si aspetta chi arriva, non perché "lo fanno tutti".
- La contraddizione sull'origine è un problema di fiducia e anche di correttezza dell'informazione al consumatore. Qual è la frase giusta lo sa solo l'azienda.

**Vale per noi?** Sì. Oggi, da mobile, il primo prodotto con prezzo compare solo dopo 3-4 schermate, passando per lo shop (vedi 00-home-telefono.jpg). La storia artigiana è un punto di forza e va tenuta, ma **dopo** aver mostrato che si può comprare.

**Come verificarlo**: guardare la percentuale di visite alla home che passano allo shop o a una scheda prodotto, e la frequenza di rimbalzo della home da mobile.

### Priorità 4: rendere facile ordinare per telefono o messaggio e trovare il negozio di Spoleto

**Cosa**
1. Mettere **telefono cliccabile e indirizzo** nell'header o nel footer di tutte le pagine. Oggi i link `tel:` esistono solo nella pagina Contatti. Aggiungere un pulsante **WhatsApp** se l'azienda lo usa già.
2. **Punto vendita di Spoleto**: la pagina esiste ma è nascosta sotto "Dove Siamo", che porta a Campi di Norcia, e nessuna delle pagine salvate riporta l'indirizzo. Serve una voce di menu "Negozi" con **indirizzo, orari, mappa e foto** di tutti e due i punti vendita, e una scheda Google Business Profile aggiornata per ciascuno. A Spoleto i turisti che hanno assaggiato in negozio sono i clienti online più probabili dopo: nel negozio si può mettere un biglietto con il sito e l'offerta di spedizione.
3. **Modulo di contatto più corto**: tenere nome, email o telefono, messaggio e consenso privacy. Togliere "Cognome" e "Motivo". Sostituire la somma anti-spam con un sistema invisibile (honeypot). Chiamare il pulsante "**Invia richiesta**" invece di "INVIA". Su mobile il modulo è stretto dentro la pagina e va reso a tutta larghezza.
4. **Regali aziendali**: aggiungere una pagina o un blocco "Strenne per aziende" con un modulo per preventivo (quantità, budget, data). Il tag "stenne" nella scheda indica che il tema è già nei pensieri dell'azienda. Questa è un'**ipotesi (E)**: va verificata guardando quante richieste B2B arrivano oggi per telefono.

**Perché**
- Ogni campo in più del modulo aggiunge fatica; Baymard indica 12-14 campi come ideale per un checkout intero, e un modulo di contatto dovrebbe averne molti meno. Livello **B** per il principio, **E** per il numero esatto sul contatto.
- Sulla posizione di telefono e negozi l'ipotesi (E) si basa sui dati del sito stesso: le schede prodotto rimandano a "telefono" e "Messenger" per gli ordini, quindi il telefono è un canale di vendita a tutti gli effetti.

**Come verificarlo**: contare i clic su `tel:` e WhatsApp e i moduli inviati; chiedere in negozio "come ci ha trovato?" per 4 settimane.

### Priorità 5: un banner cookie che non copra l'acquisto

**Cosa**: su mobile trasformare il banner in una barra in basso (circa 25-30% dello schermo) con "Accetta" e "Rifiuta" della **stessa evidenza** e la X per chiudere, così foto, prezzo e pulsante restano visibili. Oggi "Nega" è un semplice testo, mentre "Accetta" è un pulsante scuro.

**Perché**: rendere il rifiuto facile quanto l'accettazione è quanto chiedono le autorità privacy europee e il Garante italiano. Livello **A** per l'obbligo, ma il dettaglio del caso va controllato con chi cura la privacy del sito: non l'ho verificato in questa sessione. Che il banner copra la metà superiore di ogni scheda da mobile si vede negli screenshot (fatto osservato).

**Come verificarlo**: confrontare la frequenza di rimbalzo da mobile prima e dopo.

### Priorità 6: recensioni vere

**Cosa**: dopo ogni consegna mandare un'email per chiedere una recensione (WooCommerce ha già le recensioni verificate "acquirente verificato"), mostrare anche quelle negative e rispondere. Finché le recensioni non ci sono, togliere l'ordinamento "Valutazione media". Anche le recensioni già presenti su Google o Facebook si possono collegare dal sito.

**Perché**: un prodotto con 5 recensioni ha molte più probabilità di essere comprato di uno senza, e l'effetto è più forte sui prodotti costosi. Fonte: [Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/). Livello **C**. È vietato filtrare le negative o dichiarare recensioni verificate senza verificarle (direttiva Omnibus 2019/2161). Livello **A**.

**Come verificarlo**: guardare il tasso scheda → carrello sui prodotti con recensioni rispetto a quelli senza, dopo 2-3 mesi.

---

## Riepilogo rapido

| Priorità | Intervento | Sforzo | Entro |
|---|---|---|---|
| 1 | Costo e tempi di spedizione nella scheda e nel carrello, data ultima per Natale, chiarire Italia o estero | basso | fine ottobre |
| 2 | Schede prodotto: €/kg (obbligo), foto e pesi delle confezioni, conservazione e resi, testi in italiano, niente esauriti nei correlati, refusi | medio | fine ottobre |
| 3 | Home: offerta e prodotti in alto, prove di qualità in breve, correggere "Umbre/italiane", video visibile | medio | novembre |
| 4 | Telefono e negozi su ogni pagina, pagina Negozi con Spoleto, modulo più corto, pagina strenne aziendali | medio | novembre |
| 5 | Banner cookie compatto e con scelte di pari evidenza | basso | subito |
| 6 | Raccolta recensioni dopo l'ordine | basso | continuativo |

## Limiti di questa analisi

Ho consultato circa 8 fonti: Baymard (checkout, scheda prodotto), NN/g (lettura sul web), Spiegel Research Center (recensioni), Shampanier et al. (spedizione gratuita), il Codice del Consumo (art. 14, prezzo al kg), la Direttiva 2005/29/CE e l'AGCM (scadenze false), la direttiva Omnibus (recensioni).

Non ho approfondito:
- le regole precise del Garante sul banner cookie;
- il checkout reale e la pagina spedizioni, che non sono nella copia;
- i dati di traffico e di vendita, che l'azienda ha e che contano più di tutto il resto;
- un'analisi dei concorrenti (altre norcinerie di Norcia che vendono online).

Se serve, posso continuare su uno di questi punti.
