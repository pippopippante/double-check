# [nome azienda] ([sito]): analisi per portare più clienti

*Analisi fatta solo sulla copia salvata il 26/09/2026 (9 pagine: home, 3 box, 2 categorie, carrello, 2 pagine di condizioni). Le fonti esterne sono indicate con il loro livello di affidabilità: A = obbligo di legge o prove replicate, B = ricerca di settore su larga scala, C = singolo studio, D = pratica dei concorrenti, E = ipotesi ragionata.*

## Che cosa fa l'azienda e qual è l'obiettivo

È una bottega fisica nel centro storico di Spoleto ([indirizzo]) che vende online, su Shopify, prodotti tipici umbri: salumi, formaggi, tartufo, olio, vino, pasta, legumi, dolci. Il prodotto di punta sono le **box**, confezioni pronte da 35 a 80 € (Pranzo Umbro, Selezione di Norcia, Antipasto Umbro, Spoleto in Tavola, Tavola Umbra), più i tris di vini.

Per il sito il risultato che conta è quindi l'**ordine online**, e più di tutto l'ordine di una box. Ci sono due obiettivi secondari: **far entrare in negozio** i turisti di passaggio a Spoleto e trasformare chi ha comprato in negozio in cliente che riordina online.

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|-------|--------------|
| 1 | **Pagina prodotto delle box** (01, 02, 03) | È qui che si decide l'acquisto, e le box sono il prodotto con lo scontrino più alto e quello più adatto al regalo. La home le mette al centro ("Box Special"). |
| 2 | **Spedizione, costi e condizioni** (07, 08, pagina spedizioni nel footer) | Nel sondaggio Baymard su chi ha abbandonato il checkout, il **40%** lo ha fatto per costi extra, il 20% per consegna lenta, il 19% per poca fiducia e il 13% per la politica resi ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B). Per il cibo fresco spedito, dubbi come "arriva integro?" e "quanto costa?" pesano ancora di più. |
| 3 | **Home e navigazione** (00, 04, 05) | È la porta d'ingresso. Deve portare subito alle box e ai prodotti, e dire chi siamo e perché fidarsi. |
| 4 | **Fiducia e contatti** (recensioni, dati aziendali, negozio fisico) | È un negozio piccolo e poco conosciuto fuori Spoleto: la fiducia è la leva principale. Un prodotto con 5 recensioni ha una probabilità d'acquisto più alta del 270% rispetto a uno senza, e l'effetto è più forte sui prodotti costosi ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C). |

Il carrello e il checkout contano, ma il checkout è quello standard di Shopify (con PayPal, Apple Pay e carte, visibili nel footer) e dalla copia non si può analizzare. Il carrello salvato era vuoto. Dunque lì i margini di intervento stanno soprattutto nel punto 2.

---

## Problemi concreti trovati nel sito (i più urgenti)

Sono errori specifici di questo sito. Valgono più di qualsiasi principio generale e quasi tutti si correggono in poche ore.

1. **Il prezzo della Box Selezione di Norcia non torna.** La box costa **45 €** e secondo la descrizione contiene *"PROSCIUTTO CRUDO DI NORCIA IGP – trancio 1,7kg circa"*, più ceci neri, salame da 300 g e condipasta (02-prodotto.txt). Ma in home e in categoria il **solo prosciutto** di Norcia IGP, *"Trancio 1,4kg Circa"*, costa **45 €** (00-home.txt, 05-categoria.txt). Le spiegazioni possibili sono due: la descrizione è sbagliata (il pezzo nella box è molto più piccolo, e allora chi lo riceve si sente ingannato, fa reclamo e lascia una recensione negativa) oppure la box è venduta in perdita. **Da verificare subito.**
2. **Due numeri di telefono diversi**: [telefono] nel footer, [telefono] nei Termini e condizioni (07). E tre nomi diversi: "[nome azienda]", "[nome azienda]", e l'indirizzo scritto sia "[indirizzo]" sia "[indirizzo]". Per un cliente che non ci conosce, dati incoerenti sono un segnale d'allarme.
3. **Link vuoti in home**: i tre riquadri "Vieni a trovarci / Scopri la Bottega delle Meraviglie", "Vivi Spoleto" e "Fermati un attimo / Prenditi 15 minuti", e anche il pulsante **"Tutti gli oli"**, hanno `href=""` (00-home.html, righe 1103-1148 e 2557). Si clicca e non succede nulla, o si ricarica la home.
4. **Le box non sono nel menu.** Il menu ha 7 categorie (Salumi & Formaggi … Dolci), ma la collezione `/collections/box-selezione`, che raccoglie il prodotto principale, si raggiunge solo dal carosello in home.
5. **Il riquadro recensioni è vuoto.** Le schede prodotto contengono ancora `shopify-product-reviews-badge` (es. 02-prodotto.html, riga 1090), che appartiene all'app "Product Reviews" di Shopify, **chiusa il 6 maggio 2024** ([Digismoothie](https://www.digismoothie.com/blog/product-reviews-app-by-shopify-removed), [Ilana Davis](https://www.ilanadavis.com/blogs/articles/shopify-product-reviews-app-unavailable-may-2024)). Risultato: su nessun prodotto si vede una recensione.
6. **Condizioni di vendita scadute o in contraddizione tra loro** (dettagli nella sezione 2): citano il D.Lgs. 185/1999, abrogato, e il D.Lgs. 196/03 al posto del GDPR. Una pagina fa partire il recesso "dalla data dell'ordine", l'altra "dalla ricezione". Ci sono refusi come "Shoify Payments" e "in tutta. sicurezza".
7. **Il codice interno di magazzino è mostrato al cliente**, in evidenza sotto il prezzo: "VI015/PAS001/SAL007/FUN001", "LEG005/SAL010/". Refusi anche nei nomi dei prodotti: "SALSICCE ESSICCATTE", "produrre di Trevi".

---

## 1. Pagina prodotto delle box

**Cosa si vede oggi** (01-prodotto-desktop.jpg, 02-prodotto-telefono.jpg):
- **Una sola foto** per box, caricata a dicembre 2021 (`?v=1640011264`), e nessuna foto che mostri le dimensioni o come arriva il pacco.
- Il testo accanto al prezzo è l'inizio della descrizione tagliato a metà. Sulla Box Pranzo Umbro comincia con *"Temperatura ideale di servizio: 18-19°C. Percentuale alcool: 15%"*, cioè con un dato tecnico del vino, non con il motivo per comprarla.
- Mancano le informazioni che fanno decidere: **per quante persone** è la box, **in quale occasione** usarla (regalo, cena, aperitivo), **quanto si risparmia rispetto ai singoli prodotti**, **costo e tempi di spedizione**, **resi**, **se va conservata in frigo** (la Box Antipasto contiene una *caciotta fresca pastorizzata*, 03-prodotto.txt).
- Nessuna opzione regalo: biglietto, spedizione a un altro indirizzo, niente prezzo sul pacco.
- Su telefono, sotto "Aggiungi al carrello" c'è un lungo muro di testo tutto maiuscolo e grigio chiaro. Nelle schede correlate il nome del prodotto è scritto in giallo sopra la foto e si legge male.

### Raccomandazioni (in ordine di priorità)

**1.1 Mettere accanto al pulsante d'acquisto le 3 informazioni che bloccano l'ordine**
- **Cosa**: sotto "Aggiungi al carrello", tre righe fisse: *"Spedizione X € · gratis sopra Y €"*, *"Arriva in 1-3 giorni lavorativi con corriere espresso, imballo termico per i freschi"* (solo se è vero), *"Hai un problema con l'ordine? Rimborso o sostituzione"*.
- **Perché**: il 67% dei siti non mostra la stima di spedizione nella pagina prodotto, e questa è una delle lacune più gravi ([Baymard, pagina prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). Costi extra e consegna lenta sono i primi due motivi di abbandono ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B).
- **Vale per noi?**: sì, e forse più che per altri. In nessuna delle pagine salvate compare il costo di spedizione, e con cibo fresco il dubbio "arriverà in buono stato?" è concreto.
- **Come verificarlo**: il rapporto tra aggiunte al carrello e ordini completati nelle analisi di Shopify, prima e dopo.

**1.2 Riscrivere l'apertura di ogni box: occasione, persone, contenuto in elenco**
- **Cosa**: un titolo che dica la promessa (*"Box Pranzo Umbro: un pranzo completo per 4-6 persone"*), poi un elenco puntato breve (*"Montefalco Sagrantino DOCG Scacciadiavoli 75 cl · Pappardelle all'uovo 500 g · Ragù di cinghiale 200 g · Funghi sott'olio al tartufo 200 g"*), poi una riga *"Perfetta come regalo"*. Le schede tecniche (ingredienti, allergeni, temperatura di servizio) restano, ma in una sezione "Dettagli di ogni prodotto" più in basso o in blocchi a comparsa.
- **Perché**: il 79% degli utenti scansiona la pagina invece di leggerla, e un testo conciso e scansionabile migliora l'usabilità in modo netto ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B). Le prime righe portano quasi tutto il peso.
- **Vale per noi?**: sì. Oggi la prima riga visibile è la temperatura di servizio di un vino.
- **Come verificarlo**: tasso di aggiunta al carrello delle schede box.

**1.3 Più foto, compresa una del pacco come arriva**
- **Cosa**: per ogni box 4-5 foto: la box completa, ogni prodotto, il contenuto disposto in tavola (per dare l'idea delle dimensioni), il **pacco confezionato come arriva a casa**.
- **Perché**: il 37% dei siti non ha immagini che diano il senso della scala ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
- **Vale per noi?**: sì. Per chi compra un regalo da 60-80 € la foto del pacco è la risposta a "che figura ci faccio?" (E, ipotesi).
- **Come verificarlo**: tasso di aggiunta al carrello e domande in chat su "com'è la confezione".

**1.4 Opzioni regalo spiegate per bene**
- **Cosa**: una casella "È un regalo" che attiva il biglietto con messaggio, la consegna a un indirizzo diverso e il documento senza prezzi. Spiegare chiaramente cosa comprende ed eventuali costi.
- **Perché**: nella ricerca Baymard sul gifting gli errori principali sono non spiegare le opzioni regalo e non adattare il passaggio dell'indirizzo agli ordini regalo, con il risultato di dubbi e ordini con dati sbagliati ([Baymard, gifting](https://baymard.com/checkout-usability/benchmark/step-type/gifting), B).
- **Vale per noi?**: probabilmente molto. Box di prodotti tipici con vino sono un tipico regalo (Natale, aziende, "porta l'Umbria a qualcuno"). È un'ipotesi (E), da confermare con i dati degli ordini: quante volte l'indirizzo di consegna è diverso da quello di fatturazione?
- **Come verificarlo**: percentuale di ordini con opzione regalo e ordini box nel periodo novembre-dicembre.

**1.5 Mostrare il valore della box, solo se reale**
- **Cosa**: se la somma dei prodotti venduti singolarmente supera il prezzo della box, scriverlo: *"Presi singolarmente: 52 €"*. Se non la supera, non dirlo, e prima correggere il caso Norcia (problema n. 1).
- **Perché**: è un'ipotesi ragionata (E). Va però rispettato l'obbligo sugli annunci di riduzione di prezzo, che devono indicare come prezzo precedente il più basso dei 30 giorni precedenti ([art. 17-bis Codice del Consumo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art17bis.html), A). Per questo va presentato come confronto con i singoli prodotti, non come "sconto".
- **Come verificarlo**: ordini di box rispetto agli ordini di prodotti singoli.

**1.6 Pulizia rapida**
Togliere il codice SKU visibile, correggere i refusi, rendere leggibili i nomi dei prodotti correlati (testo scuro su fondo chiaro, sotto la foto e non sopra). Il contrasto rientra nelle WCAG 2.1 AA, il riferimento tecnico per l'accessibilità, obbligatoria per l'e-commerce dal 2025 salvo per le microimprese ([EAA / D.Lgs. 82/2022](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022), A per chi non è microimpresa).

---

## 2. Spedizione, costi e condizioni

**Cosa si vede oggi**:
- Il costo di spedizione non compare in nessuna delle pagine salvate. C'è un link "Politica sulle spedizioni" nel footer, ma la pagina non è nella copia e quindi non posso dire cosa contiene.
- Nei Termini (07): spedizione *solo in Italia*, corriere espresso, 1-3 giorni lavorativi. **Nessuna parola su come vengono spediti i freschi** (formaggi, salumi) né su cosa succede se il pacco arriva danneggiato.
- Nelle due pagine legali ci sono errori e contraddizioni:
  - l'**Informativa rimborsi** (08) cita *"art. 5 del D.Lgs 185 del 1999"*, una norma sostituita dal Codice del Consumo (D.Lgs. 206/2005);
  - i **Termini** (07) scrivono *"D.L. 206/2005"* e fanno partire i 14 giorni *"dalla data dell'ordine"*, mentre la pagina 08 li fa partire *"dalla ricezione"* e parla anche di *"14 giorni lavorativi"*;
  - fanno decadere il recesso *"per mancanza della confezione esterna e/o dell'imballaggio originale"*;
  - nei Termini il reso si avvia *"dalla tua pagina account personale"*, mentre l'Informativa dice di rispedire all'indirizzo del negozio: due procedure diverse;
  - la privacy cita *"art. 7/13/23 Dlgs.196/03"*, articoli superati dal GDPR;
  - refusi: "Shoify Payments", "in tutta. sicurezza".
- La cosa più importante per il cibo non è detta: **il diritto di recesso è escluso per i beni che rischiano di deteriorarsi o scadere rapidamente e per i beni sigillati per motivi igienici, se aperti** ([art. 59, lett. d-e, Codice del Consumo](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html), A). Il sito promette un reso generico e poi lo nega con clausole confuse. Al cliente non è chiaro né cosa può rendere né cosa gli garantiamo.

### Raccomandazioni

**2.1 Costo di spedizione chiaro, soglia di gratuità calcolata sui margini**
- **Cosa**: una sola regola semplice, scritta in una barra in cima a tutte le pagine, nella scheda prodotto e nel carrello (*"Spedizione gratuita da 59 €"* o simile). La soglia va scelta partendo dal valore medio degli ordini e dai margini: ad esempio poco sopra il prezzo della box più venduta, così una box più un prodotto la superano.
- **Perché**: il 40% di chi abbandona lo fa per i costi extra, e il 12% perché non riusciva a calcolare il totale in anticipo ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B). Le persone reagiscono al "gratis" in modo sproporzionato rispetto a un piccolo costo ([Shampanier, Mazar & Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254), C, esperimenti di laboratorio).
- **Vale per noi?**: sì. I prezzi delle box (35-80 €) sono vicini alle soglie tipiche, quindi la soglia può spingere a riempire il carrello. Il valore esatto va calcolato sui dati reali dell'azienda.
- **Come verificarlo**: valore medio dell'ordine e tasso di completamento del checkout, prima e dopo.

**2.2 Una pagina "Spedizioni e garanzia" chiara, pensata per il cibo**
- **Cosa**: scritta per il cliente e non per l'avvocato. *"Spediamo in tutta Italia in 1-3 giorni lavorativi. Salumi e formaggi viaggiano sottovuoto [e con imballo isotermico, se è vero]. In estate spediamo i freschi solo dal lunedì al mercoledì, per evitare giacenze nel weekend. Se il pacco arriva danneggiato o un prodotto non è integro, mandaci una foto entro 48 ore su WhatsApp e ti rimborsiamo o rispediamo."* Poi, separato: *"Per legge il recesso non si applica ai prodotti deperibili o sigillati e aperti; per vino, olio, pasta e legumi chiusi hai 14 giorni dalla consegna."*
- **Perché**: il 13% di chi abbandona cita la politica resi ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B), e il 44% dei siti non mostra o non collega bene la politica resi ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). Le esclusioni per i deperibili sono di legge ([art. 59](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art59.html), A): conviene dirlo apertamente e compensare con una garanzia su danni e prodotti non integri.
- **Vale per noi?**: sì. La garanzia "foto entro 48 ore" è un'ipotesi (E): costa poco se i pacchi arrivano bene, e toglie il rischio percepito.
- **Come verificarlo**: domande in chat su spedizioni e resi, reclami, tasso di completamento del checkout.

**2.3 Riscrivere Termini, Informativa rimborsi e Privacy con un professionista**
- **Cosa**: allineare le due pagine (14 giorni **dalla consegna**, un'unica procedura di reso), citare il Codice del Consumo e il GDPR, eliminare clausole a rischio come la decadenza del recesso per la sola mancanza dell'imballo originale, correggere nome, telefono e refusi.
- **Perché**: sono obblighi di legge (A). Non è consulenza legale: serve un legale o il modello legale di un'associazione di categoria.
- **Vale per noi?**: sì. Oltre al rischio legale, testi scaduti e pieni di refusi riducono la fiducia di chi li legge prima di pagare.

**2.4 Vino e minori**
Il sito vende vino anche dentro le box. La legge vieta di vendere e somministrare alcolici ai minori di 18 anni e impone di chiedere un documento se la maggiore età non è evidente ([art. 14-ter L. 125/2001, sintesi FIPE](https://www.fipe.it/files/legislativo/dottrina/GUIDA_PRATICA_ALCOl.pdf), A). Come si applichi alla vendita online va verificato con un consulente. Il minimo ragionevole: una dichiarazione di maggiore età al checkout e l'istruzione al corriere di non consegnare a minori.

---

## 3. Home e navigazione

**Cosa si vede oggi** (00-home-desktop.jpg, 00-home-telefono.jpg):
- Il primo schermo è una bella foto della bottega con il titolo *"L'Umbria a casa tua"*, seguito da tre colonne di testo sulla storia. Sul telefono è **un muro di testo piccolo**, e il primo prodotto arriva dopo diversi schermi di scorrimento.
- Poi vengono tre riquadri che non portano da nessuna parte (link vuoti), il carosello box (con prodotti ripetuti), tartufo, citazioni (Caramagna, Confucio), vini e norcineria. **La home è una vetrina lunga, non un percorso verso l'acquisto.**
- Il menu non ha "Box e regali". La categoria "Tutti i prodotti" (04) ha 5 pagine da 12 prodotti in ordine alfabetico, senza filtri o ordinamenti visibili. Sul telefono le schede sono foto a tutta larghezza in cui nome e prezzo non si leggono (04-categoria-telefono.jpg).
- La frase *"Prodotti tipici umbri a KM 0 direttamente a casa tua!"* è un'affermazione discutibile se il prodotto viene spedito in tutta Italia.

### Raccomandazioni

**3.1 Primo schermo: cosa vendiamo e il pulsante per comprarlo**
- **Cosa**: sopra la foto, un titolo concreto e un pulsante: *"Salumi, tartufo, olio e vino da piccoli produttori umbri, scelti nella nostra [nome azienda]. Spediti in 1-3 giorni."* + **[Scopri le box]** + **[Tutti i prodotti]**. Subito sotto, le 5 box con foto, prezzo e numero di persone. La storia dei "30 anni di ristorazione" va condensata in due righe con foto dei titolari, e il testo lungo spostato in una pagina "Chi siamo".
- **Perché**: le persone scansionano, e titoli che dicono qualcosa di concreto funzionano meglio degli slogan ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B).
- **Vale per noi?**: sì. Il testo sulla storia è un buon elemento di fiducia, ma oggi viene *prima* del prodotto e su telefono lo spinge molto in basso.
- **Come verificarlo**: percentuale di visitatori della home che aprono una scheda prodotto o una categoria.

**3.2 "Box e regali" come prima voce del menu, e categorie leggibili su telefono**
- **Cosa**: aggiungere "Box & Regali" in testa al menu (desktop e telefono). Nelle categorie, su telefono due prodotti per riga con nome e prezzo in testo scuro *sotto* la foto, più l'ordinamento (più venduti, prezzo).
- **Perché**: le box sono il prodotto principale e oggi sono irraggiungibili dal menu (problema n. 4). Nomi e prezzi leggibili sono la base dell'usabilità delle liste prodotto; il testo sopra la foto viola anche il contrasto minimo delle WCAG (A per chi è soggetto all'EAA).
- **Come verificarlo**: visite alla collezione box e ordini di box.

**3.3 Sistemare i link vuoti e dare uno scopo ai riquadri**
- **Cosa**: "Vieni a trovarci" → una pagina *Il negozio* con indirizzo, orari, mappa e foto. "Vivi Spoleto" → la stessa pagina, o una guida breve "cosa assaggiare a Spoleto" con prodotti collegati. "Prenditi 15 minuti" → degustazioni in bottega, se esistono. "Tutti gli oli" → `/collections/olio`.
- **Perché**: sono errori, non scelte. Il negozio fisico è un vantaggio che i siti solo online non hanno, e il turista che è passato a Spoleto è il cliente più probabile per riordinare online (E, ipotesi da verificare chiedendo in negozio "come ci ha conosciuto" o con un codice sconto dato in cassa).

**3.4 Togliere il "KM 0" o precisarlo**
Per chi riceve il pacco a Milano non è a km 0. Meglio un fatto verificabile: *"da produttori entro X km da Spoleto"*. Il linguaggio promozionale vago riduce la credibilità ([NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).

---

## 4. Fiducia e contatti

**Cosa si vede oggi**:
- Nessuna recensione (vedi sopra: il riquadro dell'app chiusa è vuoto).
- Nessuna partita IVA o ragione sociale visibile nelle pagine salvate, nessuna foto delle persone. Il nome del negozio, il telefono e l'indirizzo sono incoerenti.
- Il punto forte, cioè un negozio vero nel centro di Spoleto con 30 anni di ristorazione alle spalle, c'è ma è sepolto nel testo.
- La chat ("Chatta con noi") c'è ed è un buon segno. Esiste anche un modulo WhatsApp (whatsapp.v4 caricato nell'HTML), ma su telefono il pulsante della chat copre parte del testo.

### Raccomandazioni

**4.1 Installare un'app di recensioni e raccoglierne attivamente dopo la consegna**
- **Cosa**: sostituire l'app chiusa con una attiva (Shopify indica come alternative gratuite Judge.me o AirReviews, [Digismoothie](https://www.digismoothie.com/blog/product-reviews-app-by-shopify-removed)), togliere il riquadro vuoto e inviare una richiesta di recensione 7-10 giorni dopo la consegna. Mostrare in home anche le recensioni Google del negozio, se sono buone.
- **Perché**: con 5 recensioni la probabilità d'acquisto sale del 270%, con effetto più forte sui prodotti costosi, e un voto tra 4,0 e 4,7 convince più di un 5,0 perfetto ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C).
- **Vincoli di legge**: niente recensioni false, niente filtri che nascondono le negative, e una nota su *come* vengono verificate (direttiva Omnibus 2019/2161, A). Rispondere alle negative: lo fa solo l'11% dei siti ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
- **Vale per noi?**: sì. È l'intervento con più leva per un marchio poco noto.
- **Come verificarlo**: numero di recensioni al mese e ordini sulle schede con recensioni rispetto a quelle senza.

**4.2 Dati aziendali coerenti e ben visibili**
- **Cosa**: un solo nome commerciale (es. "[nome azienda] – [nome azienda]"), un solo telefono (con link per chiamare e link WhatsApp), indirizzo corretto, orari del negozio, ragione sociale e partita IVA nel footer.
- **Perché**: il 19% di chi abbandona non si fida a inserire la carta ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B). Dati incoerenti alimentano proprio questo dubbio. Per i siti di commercio elettronico l'indicazione della partita IVA è un obbligo generale (A, da far confermare dal commercialista).

**4.3 Mettere le persone e il negozio al centro**
- **Cosa**: una sezione breve con foto dei titolari e del bancone, *"Ogni box la prepariamo noi a mano in bottega"* (se è vero), e i nomi dei produttori (la cantina Scacciadiavoli è già citata; aggiungere il norcino di Trevi, il produttore dei ceci neri di Spoleto e così via).
- **Perché**: è un'ipotesi (E). I fatti concreti (chi produce, dove) sono più credibili degli slogan ([NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B), e distinguono dai grandi e-commerce di prodotti tipici.

**4.4 Raccogliere email con un motivo concreto**
Oggi nel footer c'è solo "Inserisci la tua email", senza nessun motivo per farlo. Meglio: *"Ti avvisiamo quando arriva il tartufo fresco e quando apriamo gli ordini per Natale"*. È un'ipotesi (E), utile per trasformare in clienti ricorrenti sia chi compra online sia chi è passato in negozio.

---

## Piano d'azione in ordine di priorità

| Priorità | Azione | Sforzo | Impatto atteso |
|---|---|---|---|
| 1 | Verificare e correggere il prezzo o la descrizione della Box Norcia | Minimo | Alto (rischio reclami e perdita economica) |
| 2 | Costo di spedizione e soglia di gratuità visibili in tutto il sito e nelle schede | Basso | Alto (primo motivo di abbandono) |
| 3 | Un solo telefono e un solo nome, dati aziendali nel footer | Minimo | Medio-alto (fiducia) |
| 4 | "Box & Regali" nel menu, link vuoti riparati | Minimo | Medio-alto |
| 5 | App recensioni attiva + richiesta automatica dopo la consegna | Basso | Alto (cresce nel tempo) |
| 6 | Pagina "Spedizioni e garanzia" per il cibo + Termini e condizioni riscritti | Medio | Alto (fiducia + obbligo di legge) |
| 7 | Schede box riscritte (occasione, persone, elenco) + 4-5 foto + opzioni regalo | Medio | Alto, soprattutto prima di Natale |
| 8 | Primo schermo della home orientato all'acquisto; categorie leggibili su telefono | Medio | Medio |
| 9 | Pagina "Il negozio" + raccolta email con motivo | Basso | Medio (clienti ricorrenti) |
| 10 | Pulizia: SKU nascosti, refusi, contrasto, "KM 0" | Minimo | Basso-medio |

**Tempi**: oggi è il 26 settembre. I punti 1-7 andrebbero completati **entro fine ottobre**, per arrivare pronti alla stagione dei regali di Natale, quando le box dovrebbero vendere di più (E, da verificare sugli ordini degli anni scorsi).

---

## Limiti di questa analisi

- Ho consultato circa 10 fonti: Baymard (abbandono carrello, pagina prodotto, gifting), NN/g (lettura sul web), Spiegel Research Center (recensioni), Shampanier et al. (spedizione gratuita), Codice del Consumo (art. 17-bis e art. 59), EAA, norme sugli alcolici ai minori, documentazione sulla chiusura dell'app recensioni di Shopify.
- **Non ho potuto vedere**: la pagina "Politica sulle spedizioni" (non è nella copia), il checkout, le pagine "Chi siamo" e "Contatti" se esistono, i dati di vendita e traffico. La velocità del sito non è misurabile dalla copia salvata.
- **Non ho approfondito**: l'analisi dei concorrenti (altri e-commerce di prodotti umbri), la vendita all'estero (oggi si spedisce solo in Italia), la SEO. Le meta description delle box, per esempio, cominciano con il vino o i ceci invece che con il nome della box. Posso proseguire su uno di questi temi.
- Le indicazioni legali non sono consulenza legale: vanno fatte confermare da un professionista.
