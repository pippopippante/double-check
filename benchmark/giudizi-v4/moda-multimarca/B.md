# [sito] analisi per vendere di più online

*Analisi della copia del sito salvata il 26/09/2026. Le pagine sono 9: home, 3 schede prodotto, 2 liste prodotti, carrello vuoto, Spedizioni e Resi. Ho usato solo i file salvati (HTML, testo e screenshot). Carrello pieno e checkout non sono nei file e non li ho potuti valutare.*

---

## In breve

[sito] ([nome azienda]) è un negozio multimarca di abbigliamento premium di Spoleto: K-Way, Belstaff, CP Company, Weekend Max Mara, Pinko, Hogan e altri, venduti anche online con Shopify. L'obiettivo del sito è **vendere online**.

La base è buona: schede prodotto curate, taglie a pulsanti con guida alle taglie, consegna in 24/48 ore, cambio taglia gratuito, pagamento a rate e 1.776 recensioni sul negozio. Il problema di fondo è un altro: **gli stessi capi si comprano anche in molti altri negozi online**. Un visitatore sceglie [sito] solo se si fida, se trova in fretta la sua taglia e se costi, tempi e resi sono chiari. Proprio su questi punti il sito ha diversi difetti, quasi tutti economici da correggere.

**Le 5 cose da fare per prime:**

1. **Controllare subito che il sito desktop si veda.** Negli screenshot da computer, schede prodotto e liste sono bianche. Probabilmente è un difetto della cattura, ma se non lo fosse le vendite da desktop sarebbero ferme.
2. **Banner cookie: aggiungere "Rifiuta".** Oggi c'è solo "Accetta", contro le linee guida del Garante, e sul telefono il banner copre metà della scheda prodotto.
3. **Correggere il link WhatsApp del "Personal Shopper".** È presente su ogni scheda prodotto e porta a un numero inesistente perché manca il prefisso 39.
4. **Togliere la taglia già selezionata.** Oggi la S è scelta in automatico: chi preme "Acquista ora" di fretta compra una S senza accorgersene.
5. **Riscrivere la pagina Resi.** Oggi il pacco deve *arrivare* in magazzino entro 14 giorni, mentre la legge dà 14 giorni per comunicare il reso e altri 14 per spedirlo. E il "Reso Gratuito" promesso ovunque vale solo per il cambio taglia.

---

## Chi usa il sito e cosa decide l'acquisto

- **Chi arriva:** soprattutto persone che cercano un capo o un brand preciso, molto spesso dal telefono. Nel sito ci sono i tag di Google Ads, quindi [sito] fa pubblicità: chi arriva da un annuncio atterra quasi sempre su una scheda prodotto o su una lista, non in home. Gli altri canali sono newsletter, Instagram e TikTok.
- **Cosa decide:** lo stesso maglione K-Way si trova sul sito del brand e in molti altri negozi. Il cliente sceglie in base a quattro domande: *mi fido di questo negozio? sono sicuro della taglia? quanto pago in totale e quando arriva? se non va bene, come lo rendo?*
- Le ricerche di Baymard sull'abbandono del carrello vanno nella stessa direzione. Tra chi abbandona durante il checkout: il 40% lo fa per costi extra, il 20% per la consegna lenta, il 19% perché non si fida a dare la carta e il 13% per una politica resi insoddisfacente ([Baymard](https://baymard.com/lists/cart-abandonment-rate), livello B).

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Pagine | Perché conta |
|---|---|---|---|
| 1 | **Scheda prodotto** | 01, 02, 03 | È dove si decide l'acquisto e dove atterra il traffico a pagamento. Ogni difetto qui pesa su ogni vendita. |
| 2 | **Spedizioni e resi** (le pagine e le promesse ripetute su ogni pagina) | 07, 08 + blocchi "servizi" | Rispondono alle obiezioni principali: costi, tempi, resi. Se i prodotti sono uguali a quelli dei concorrenti, il servizio è ciò che distingue [sito]. |
| 3 | **Liste prodotti e filtri** | 04, 05 | 733 novità e 109 accessori: se il cliente non trova il capo nella sua taglia, non arriva mai alla scheda. |
| 4 | **Fiducia e prima impressione** (home + elementi presenti su tutte le pagine: banner cookie, barra promo, recensioni) | 00 + tutte | Decide se il visitatore resta e se si fida a pagare un capo da 100-350 € a un negozio che magari non conosce. |

---

## 1. Scheda prodotto

**Cosa funziona già (da non toccare):**
- taglie a pulsanti e non a tendina (Baymard: il 28% dei siti desktop usa ancora la tendina, [fonte](https://baymard.com/blog/use-buttons-for-size-selection));
- "Guida alle taglie" subito sotto le taglie;
- descrizioni ben scritte, con composizione, lavaggio, vestibilità e domande frequenti per ogni prodotto;
- spedizione e resi riassunti vicino al pulsante d'acquisto;
- colori mostrati come miniature;
- rate con Scalapay e pagamento veloce con PayPal.

### 1.1 La taglia S è già selezionata
Nel maglione K-Way (`03-prodotto.html`) la S risulta selezionata (`checked`) e nel tema è attiva l'opzione "seleziona la prima variante" (`data-select-first-variant="true"`). Chi sceglie il colore e preme "Acquista ora" compra una S senza averla scelta. Baymard ha osservato proprio questo: con una taglia preimpostata alcuni utenti arrivano al pagamento senza aver guardato la taglia e comprano quella sbagliata ([Baymard](https://baymard.com/blog/use-buttons-for-size-selection), B). Per [sito] ogni taglia sbagliata diventa un cambio gratuito, con la spedizione a suo carico, o un reso.
→ **Correzione:** disattivare la preselezione nelle impostazioni del tema. Il tema ha già pronto il testo "Fai una selezione" (`data-preselection-text`). La preselezione resta solo per la taglia unica (TU).

### 1.2 Il pulsante "Personal Shopper" porta a un numero sbagliato
Su ogni scheda (01, 02, 03) c'è il riquadro "Dubbi sulla taglia? Clicca qui per parlare con un Personal Shopper". Il popup che apre contiene il link `https://wa.me/[telefono]`. Senza il 39, WhatsApp legge "33" come prefisso della Francia. Così il cliente con un dubbio sulla taglia, cioè quello già pronto a comprare, finisce su un numero inesistente. Il pulsante WhatsApp verde in basso a destra usa invece il numero giusto (`[telefono]`). Nello stesso popup ci sono anche due refusi: "Whastapp" e "Chiamaci al.".
→ **Correzione:** `https://wa.me/[telefono]`. Il numero va scritto in formato internazionale, senza "+", spazi né zeri iniziali ([regola del link wa.me](https://help.businesschat.io/en/articles/6517838-how-to-build-a-whatsapp-click-to-chat-url-wa-me)). Già che ci siete, si può precompilare il messaggio con il nome del prodotto (`?text=...`), così il personal shopper sa subito di cosa si parla (ipotesi, E).

### 1.3 Mancano le misure del modello e del capo
"Taglia e Fit" dice solo "Regular Fit — vestibilità comoda e lineare". Tra le 10 buone pratiche di Baymard sulle taglie c'è mostrare altezza, misure e taglia indossata dal modello. L'83% dei siti di abbigliamento desktop non dà informazioni sufficienti sulle taglie ([Baymard](https://baymard.com/blog/apparel-size-information), B). Il popup del personal shopper promette "misure in cm e vestibilità": se quelle misure fossero già nella pagina, al cliente basterebbe leggerle invece di dover scrivere.
→ **Correzione:** in "Taglia e Fit" aggiungere "Il modello è alto 185 cm e indossa la M" e, dove possibile, le misure del capo in cm per taglia.

### 1.4 Pulsanti con gerarchia confusa (telefono)
Sotto le taglie ci sono tre riquadri uno sopra l'altro:
- "Dubbi sulla taglia?…" (solo bordo);
- "Aggiungi al carrello" (solo bordo, identico al precedente);
- "Acquista ora" (nero).

Il pulsante per aggiungere al carrello sembra un pulsante di assistenza. "Acquista ora" salta il carrello: è comodo per chi compra un solo capo. Però la spedizione è gratis solo da 100 € e molti accessori costano 33-75 €, quindi questo pulsante favorisce ordini singoli sotto soglia.
→ **Ipotesi (E):** "Aggiungi al carrello" pieno e principale, "Acquista ora" secondario, personal shopper come link di testo con icona WhatsApp vicino alla guida taglie. Da misurare prima/dopo su aggiunte al carrello e valore medio dell'ordine.

### 1.5 Prezzo scontato e rate non coincidono
Il -15% "FLASH WEEK" viene applicato al checkout. Nella scheda il prezzo scontato (€110,50) è solo un'anteprima: nell'HTML il prezzo del prodotto resta 130 € e non è impostato un prezzo barrato. Il riquadro Scalapay calcola le rate sul prezzo pieno: sul maglione "3 rate da 43,33 €" invece di 36,83 €, sul trolley 56,66 € invece di 48,17 €. Il cliente vede due prezzi diversi per lo stesso capo.
→ **Correzione:**
- passare a Scalapay l'importo scontato;
- verificare che carrello laterale e pagina carrello mostrino già il prezzo scontato. Dai file non si vede perché il carrello salvato è vuoto. Se il carrello mostra 130 € fino al pagamento, molti clienti abbandonano pensando che lo sconto non sia stato applicato.

*Sconti e legge:* come prezzo di riferimento va indicato il più basso applicato nei 30 giorni precedenti ([art. 17-bis Codice del Consumo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art17bis.html), A). Per questi capi, caricati l'11/08/2026 e venduti finora a prezzo pieno, la regola sembra rispettata. Non bisogna però ravvicinare troppo le "Flash week": se passano meno di 30 giorni tra una promo e l'altra, il prezzo di riferimento diventa quello scontato.

### 1.6 Manca il costo di spedizione sotto i 100 € e manca una data di consegna
Accanto al pulsante c'è scritto "Spedizione Gratuita per ordini da 100€ in su", ma non quanto si paga sotto soglia (7 € in Italia, indicato solo nella pagina Spedizioni). Secondo Baymard il 67% dei siti non mostra il costo di spedizione nella scheda prodotto, e i costi extra sono il primo motivo di abbandono ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
→ **Correzione:** "Spedizione 7 € · gratis da 100 € · ordina entro le 10:00, consegna prevista entro mercoledì 30/09", con la data calcolata in automatico.

### 1.7 Da verificare subito: su desktop il contenuto non si vede
Negli screenshot desktop di schede, liste, carrello e pagine informative tra menu e piè di pagina c'è solo bianco, mentre sul telefono si vede tutto. Anche in home desktop mancano il testo del banner outlet e il titolo "Dicono di noi". L'HTML spiega il motivo probabile: ogni blocco della scheda è invisibile finché uno script non lo fa comparire con un'animazione ("fade-in-up"). Le animazioni partono a scalare: prezzo a 0,18 s, pulsante d'acquisto a 0,54 s, rate a 0,6 s, schede informative fino a 1,26 s. Molto probabilmente la cattura è avvenuta prima che le animazioni partissero, ma **va controllato in 5 minuti** su Chrome, Safari e Firefox desktop, anche con connessione lenta.
→ **In ogni caso conviene spegnere le animazioni d'ingresso su schede e liste** (ipotesi, E). Ritardano proprio prezzo e pulsante d'acquisto, e se uno script si blocca il contenuto resta invisibile.

**Dettagli minori:**
- Scheda Gift Card: compaiono "Dubbi sulla taglia? … Personal Shopper", "Stagione: Gift Card" e le sezioni "Spedizione Espressa" e "Reso Facile 14 gg", che non hanno senso per un buono digitale.
- Il campo "Colore" mostra un solo pulsante ("Rosso") che ripete le miniature colore subito sopra.

---

## 2. Spedizioni e resi

**Cosa funziona già:**
- consegna in 24/48 ore;
- cambio taglia gratuito;
- reso richiedibile online anche senza account;
- rimborso in 2-3 giorni lavorativi dopo il controllo;
- promesse riassunte vicino al pulsante e nel blocco "I nostri servizi".

### 2.1 Le regole sui resi sono più strette della legge, e "Reso Gratuito" è fuorviante
La pagina Resi (08) dice: *"I prodotti che intendi rendere devono essere … recapitati presso il nostro magazzino entro e non oltre 14 giorni dalla ricezione dell'ordine … oltre i 14 giorni … il reso non verrà accettato"*.
La legge prevede invece:
- 14 giorni dal ricevimento della merce per comunicare il recesso ([art. 52](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html));
- altri 14 giorni dalla comunicazione per rispedire; il termine è rispettato se il pacco parte prima della scadenza, non se arriva ([art. 57](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art57.html)) (A).

La clausola attuale è un rischio legale e fa sembrare il reso più difficile di quanto sia.

Altri due punti:
- **"Reso Gratuito" e "Reso Facile 14 gg"** compaiono come titoli su ogni pagina. Però il reso con rimborso è a carico del cliente, e solo il primo cambio taglia è gratuito. Il 79% degli utenti scorre la pagina senza leggerla parola per parola ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B): legge "Reso Gratuito" e scopre la verità solo quando vuole rendere. Una promessa non mantenuta porta delusione e recensioni negative.
- **Sigillo di garanzia:** se manca, "il reso non verrà accettato". Per legge il consumatore risponde solo della perdita di valore dovuta a una manipolazione oltre il necessario (art. 57): rifiutare del tutto il reso potrebbe non essere compatibile. **Da far verificare a un legale.**

→ **Correzione:**
- pagina Resi in tre blocchi chiari: *Cambio taglia (gratis, come fare)* · *Reso con rimborso (quanto costa, tempi)* · *Condizioni (etichette, sigillo)*, con i termini di legge corretti;
- nel blocco servizi scrivere "Cambio taglia gratuito" al posto di "Reso Gratuito".

### 2.2 Il cambio taglia si fa per email, il reso con rimborso online
È il contrario di quello che serve. In un negozio di abbigliamento il cambio taglia è la richiesta più comune ed è quella da facilitare, perché salva la vendita. Una meta-analisi su 22 studi ([Janakiraman, Syrdal, Freling 2016, Journal of Retailing](https://www.sciencedirect.com/science/article/abs/pii/S0022435915000822); [sintesi](https://www.sciencedaily.com/releases/2016/01/160119141921.htm)) trova che resi più facili e meno costosi aumentano gli acquisti, mentre più tempo per rendere riduce i resi. Livello A (meta-analisi), con un limite: si basa soprattutto su esperimenti, quindi l'effetto sul singolo negozio va misurato.
→ **Correzione:** portare il cambio taglia nella stessa procedura online, con due opzioni: "Richiedi un reso" → *Cambio taglia* / *Reso con rimborso*, e ritiro prenotato in automatico.

### 2.3 Tempi di consegna in contraddizione
- **Scheda:** "Ordina entro le ore 10:00 e ricevi l'ordine nelle successive 24/48 ore".
- **Pagina Spedizioni:** "Una volta accertata la reale disponibilità dei prodotti ordinati, ti invieremo la conferma d'ordine entro 24 ore dal primo giorno lavorativo successivo all'acquisto". Letta così, la consegna in 24/48 ore non è garantita, e il capo potrebbe non essere disponibile (magazzino condiviso con il negozio?).
- **Giorno in più:** la scheda dice "isole 2-3 giorni", la pagina Spedizioni aggiunge un giorno anche per Basilicata, Campania, Calabria e Puglia.

→ **Correzione:** una sola promessa realistica, uguale ovunque. Se il magazzino è condiviso con il negozio fisico, sincronizzare le giacenze e dire chiaramente cosa succede se un capo manca (es. rimborso immediato). La consegna rapida è un vantaggio vero: va protetta, non smentita.

### 2.4 Pagina Spedizioni: errori e un rischio legale
- **Austria e Svizzera non compaiono in nessuna zona.** Un cliente austriaco (paese UE confinante) non sa quanto paga; in teoria ricadrebbe in "tutte le altre destinazioni" a 75 €.
- **La Russia compare in due zone** (40 € e 75 €). C'è un problema più serio: le sanzioni UE vietano di vendere a persone in Russia i beni di lusso dell'Allegato XVIII di valore superiore a 300 € a pezzo ([art. 3h Reg. 833/2014, FAQ della Commissione](https://finance.ec.europa.eu/system/files/2023-07/faqs-sanctions-russia-luxury-goods_en.pdf), A). Secondo le sintesi legali consultate l'allegato comprende abbigliamento e pelletteria, e alcuni capi [sito] superano i 300 € (es. K-Way Siphelle, 350 €). **Da verificare subito con un consulente**, anche per la Bielorussia.
- **Baleari, Azzorre e Madeira** sono nella zona "Extra UE 2" a 75 €, ma fanno parte dell'UE (da verificare con il corriere).
- **Refusi:** "Honk Kong", "Monthe Athos", "kenia", "St kiits and nevis"; inoltre la riga isolata "Tutte le destinazioni non presenti nelle precedenti.".

→ **Correzione:** una tabella zone/prezzi/tempi con un campo "cerca il tuo paese", oppure il costo calcolato in automatico nel carrello.

---

## 3. Liste prodotti e filtri

**Cosa funziona già:**
- menu ben organizzato (NEW IN diviso per uomo/donna, tipo di capo e brand);
- molti filtri: brand, tipo, genere, taglia, stagione, colore, prezzo, disponibilità;
- 7 ordinamenti;
- contatore "Mostrando 20 di 733" con pulsante "Mostra altro";
- taglie disponibili visibili sulla card;
- badge sconto sulla card.

### 3.1 "Nuovi arrivi": 7 dei primi 20 prodotti sono lo stesso maglione
È la pagina a cui porta la barra promo "Scopri le novità". Contiene 733 prodotti uomo e donna mescolati. I primi 20 sono tutti K-Way, e 7 sono lo stesso maglione Sebastien in 7 colori, perché ogni colore è un prodotto separato. Dal telefono, con 2 prodotti per riga, sono 3-4 schermate dello stesso maglione. Chi arriva dalla promo non vede quanto è ampio l'assortimento (26 brand nel filtro).
→ **Correzione (ipotesi, E):**
- una sola card per modello con i pallini colore; il tema li usa già nella scheda prodotto. In alternativa, un ordinamento manuale che alterni brand e categorie;
- in cima alla lista due scelte rapide "Uomo | Donna": il filtro Genere esiste già ma è nascosto nel pannello. Oppure far puntare la barra promo alle pagine novità uomo/donna già usate in home.

### 3.2 Filtro taglie con 70 voci mescolate, filtro colori con 100 voci
Il filtro Taglia elenca 70 valori in un'unica lista: XXS-3XL, taglie numeriche, jeans 24-35, scarpe, cinture 75-110, TU. Le mezze taglie delle scarpe sono scritte "36/5", "41/5" (cioè 36½, 41½), ma esistono anche "41.5" e "43.5": la stessa taglia in due formati. Il filtro Colore ha 100 valori. Baymard consiglia di raggruppare ed etichettare le taglie per tipo: senza gruppi gli utenti sbagliano o rinunciano a filtrare ([Baymard](https://baymard.com/blog/apparel-how-to-format-size-options-in-the-size-filter), B).
→ **Correzione:**
- taglie divise in gruppi: *Abbigliamento* · *Taglie numeriche IT* · *Jeans (vita)* · *Scarpe* · *Cinture*;
- mezze taglie in un solo formato ("41½");
- colori ridotti a circa 15 famiglie;
- nel filtro Tipo correggere "Camice" in "Camicie".

### 3.3 Su desktop i filtri sono nascosti
Anche da computer i filtri stanno dietro al pulsante "Filtra e ordina".
→ **Ipotesi (E):** con centinaia di prodotti, una colonna laterale sempre visibile con almeno Genere, Taglia, Brand e Prezzo farebbe usare di più i filtri. Da misurare prima/dopo.

*(Negli screenshot da telefono molte foto delle liste sono vuote. Probabilmente le immagini si caricano solo quando si scorre e la cattura non le ha attese: non ne traggo conclusioni.)*

---

## 4. Fiducia e prima impressione

**Cosa funziona già:**
- barra Trustindex "Eccellente · 1.776 recensioni" in alto su ogni pagina;
- countdown onesto: la scadenza è fissa (30/09/2026 alle 23:59, ora italiana) e la barra sparisce a fine promo. È così che deve essere: un timer che riparte da capo è una pratica sanzionata ([AGCM, caso Deghi](https://www.agcm.it/media/comunicati-stampa/2026/6/PS13027), A). Va mantenuto così anche nelle prossime promo;
- metodi di pagamento visibili (PayPal, Apple Pay, Klarna, Scalapay e altri);
- dati societari completi.

### 4.1 Banner cookie senza "Rifiuta"
Il banner (iubenda) ha solo "Accetta" e "Scopri di più e personalizza". La X di chiusura esiste nel codice ma è nascosta (`style="display:none!important;"`). Le linee guida del Garante del 10/06/2021 (par. 7.1) chiedono tre cose (A, [Garante](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876)):
- proseguire senza consenso deve essere "immediato, usabile e accessibile" quanto accettare;
- ci deve essere una X di chiusura;
- la X deve avere la stessa evidenza grafica degli altri comandi.

In più, sul telefono il banner copre metà della prima schermata, compresi prezzo e taglie della scheda prodotto.
→ **Correzione:** attivare in iubenda il pulsante "Rifiuta" con la stessa evidenza di "Accetta" (o almeno la X) e rendere il banner più compatto sul telefono. *Nota:* con il rifiuto più facile scenderà la quota di visite misurate da Analytics e Ads. È un calo della misurazione, non delle vendite.

### 4.2 "Dicono di noi..." è vuoto
In home c'è il titolo "Dicono di noi..." e sotto uno spazio bianco: nell'HTML il contenitore è vuoto (`<div></div>`), manca il widget delle recensioni. Annunciare le recensioni e poi non mostrare nulla fa più danno che non annunciarle. Le recensioni reali sono tra le leve con più prove: rispetto a zero recensioni, già 5 recensioni aumentano molto la probabilità d'acquisto, e l'effetto è più forte sui prodotti costosi ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C). [sito] ne ha 1.776.
→ **Correzione:** inserire il widget Trustindex con i testi delle recensioni, comprese le meno positive, e una riga su *come raccogliamo e verifichiamo le recensioni* (obbligatoria per la direttiva Omnibus, A). Più avanti si possono aggiungere recensioni per prodotto, soprattutto su taglia e vestibilità.

### 4.3 Il negozio fisico non si vede
Nel piè di pagina c'è una bella foto del negozio (volte antiche, arredamento curato) senza nessuna didascalia. L'indirizzo compare solo nei dati societari. Molti brand venduti da [sito] vengono contraffatti online. Per un multimarca, "negozio a Spoleto, rivenditore autorizzato" è probabilmente una delle rassicurazioni più forti (ipotesi, E; il 19% di chi abbandona non si fida a dare la carta, [Baymard](https://baymard.com/lists/cart-abandonment-rate), B).
→ **Correzione:** una sezione "Il nostro negozio a Spoleto" in home e nelle pagine di servizio, con foto, indirizzo, orari, mappa e la frase "prodotti originali da rivenditore autorizzato". Se possibile, aggiungere ritiro e reso in negozio.

### 4.4 Una home senza prodotti
La home mostra:
- 2 immagini (Novità uomo / donna) con "Acquista ora" in testo bianco senza sfondo, poco visibile;
- due caroselli di brand;
- il banner outlet;
- i servizi.

Nemmeno un prodotto. Lo spazio per i consigli prodotto dell'app LimeSpot (`<limespot>`) è vuoto.
→ **Ipotesi (E):** aggiungere una fila "Novità della settimana" e una "I più venduti" (l'ordinamento per più venduti esiste già). Da misurare con i clic dalla home verso le schede.

### 4.5 Contatti diversi da pagina a pagina
In home si legge "Tel. e Wa [telefono]", nelle schede "Tel. [telefono] / Wa [telefono]". Vanno unificati.

---

## Raccomandazioni in ordine di priorità

L'ordine tiene conto di impatto atteso, affidabilità della prova e sforzo.

| # | Cosa | Dove | Sforzo | Prova |
|---|---|---|---|---|
| 1 | Verificare che il desktop mostri schede e liste; spegnere le animazioni d'ingresso | tutte | minimo | osservazione sugli screenshot + E |
| 2 | Banner cookie con "Rifiuta" o X, più compatto sul telefono | tutte | minimo | A |
| 3 | Link WhatsApp del Personal Shopper con il prefisso 39 | schede | minimo | errore certo (il numero giusto è già nel sito) |
| 4 | Togliere la taglia preselezionata | schede | minimo (impostazione del tema) | B |
| 5 | Resi: termini di legge, "Cambio taglia gratuito", sigillo verificato da un legale | pagina Resi + blocchi | basso (testi) | A |
| 6 | Mostrare le recensioni vere in "Dicono di noi" + nota su come si verificano | home | basso | C + A |
| 7 | Tempi di consegna coerenti ovunque, costo sotto i 100 €, data prevista | schede, Spedizioni | basso-medio | B |
| 8 | Rate Scalapay sul prezzo scontato; prezzo scontato già nel carrello | schede, carrello | basso | coerenza (E) |
| 9 | Spedizioni: Austria e Svizzera, Russia (sanzioni), zone UE sbagliate, refusi | Spedizioni | basso + legale | A (sanzioni) |
| 10 | Misure del modello e del capo | schede | medio (raccolta dati) | B |
| 11 | Cambio taglia online, nella stessa procedura del reso | Resi | medio | A (meta-analisi) |
| 12 | Filtro taglie a gruppi, colori a famiglie | liste | medio | B |
| 13 | "Nuovi arrivi": una card per modello, scelta Uomo/Donna | liste | medio | E |
| 14 | Pulsanti scheda: carrello come principale, Personal Shopper come link | schede | basso | E |
| 15 | Sezione negozio fisico + prodotti in home | home | medio | E |
| 16 | Filtri laterali su desktop | liste | medio | E |
| 17 | Refusi, scheda Gift Card, contatti unificati | varie | minimo | — |

### Schede delle 5 decisioni principali

**1. Spegnere le animazioni d'ingresso e verificare il desktop**
**Cosa:** controllare su browser desktop reali che schede e liste si vedano; disattivare le animazioni "fade-in-up" su schede e liste.
**Perché:** negli screenshot desktop il contenuto principale manca su 8 pagine su 9; nell'HTML ogni blocco è nascosto finché uno script non lo mostra, con ritardi fino a 1,26 s. È un'osservazione sul progetto; la causa è un'ipotesi (E).
**Vale per noi?:** sì, riguarda tutte le pagine che vendono.
**Rischio:** se è solo un difetto della cattura, l'intervento vale comunque (contenuto subito visibile) e costa pochissimo.
**Come verificarlo:** confrontare in Analytics il tasso di conversione desktop con quello da telefono, prima e dopo.

**2. Banner cookie conforme**
**Cosa:** pulsante "Rifiuta" (o X visibile) con la stessa evidenza di "Accetta".
**Perché:** lo chiedono le linee guida del Garante, par. 7.1 ([link](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876)), A.
**Vale per noi?:** sì, il banner attuale ha solo "Accetta" e la X è nascosta via CSS.
**Rischio:** calo dei dati misurati da Analytics e Ads (non delle vendite reali).
**Come verificarlo:** controllo visivo; quota di consenso nel pannello iubenda.

**3. Taglia non preselezionata + link Personal Shopper corretto**
**Cosa:** nessuna taglia scelta in automatico; link `wa.me/[telefono]`.
**Perché:** con una taglia preimpostata alcuni utenti comprano senza guardarla ([Baymard](https://baymard.com/blog/use-buttons-for-size-selection), B). Il link attuale è sbagliato: lo mostra il sito stesso, dove il pulsante flottante usa +39.
**Vale per noi?:** sì, riguarda tutti i capi con più taglie, cioè quasi tutto il catalogo.
**Rischio:** qualche clic in più prima di comprare (il tema mostrerà "Fai una selezione").
**Come verificarlo:** quota di cambi o resi con motivo "taglia sbagliata"; clic sul Personal Shopper e conversazioni WhatsApp aperte.

**4. Politica resi chiara e conforme**
**Cosa:** termini di legge (14 + 14 giorni, conta la data di spedizione); "Cambio taglia gratuito" al posto di "Reso Gratuito"; cambio taglia online.
**Perché:** [art. 52](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html) e [art. 57](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art57.html) del Codice del Consumo (A); resi facili e poco costosi aumentano gli acquisti ([meta-analisi 2016](https://www.sciencedirect.com/science/article/abs/pii/S0022435915000822), A con limiti).
**Vale per noi?:** sì, abbigliamento con taglie: resi e cambi sono frequenti per natura.
**Rischio:** più cambi da gestire. Si compensa con le misure di taglia in scheda (punto 10).
**Come verificarlo:** tasso di reso e di cambio; conversione della scheda; recensioni che citano i resi.

**5. Recensioni vere in home e costi di spedizione chiari in scheda**
**Cosa:** widget con i testi delle recensioni + nota sulla verifica; in scheda "Spedizione 7 € · gratis da 100 € · consegna prevista entro…".
**Perché:** effetto delle recensioni ([Spiegel](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C); i costi extra sono il primo motivo di abbandono ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B); la nota sulla verifica delle recensioni è obbligatoria (Omnibus, A).
**Vale per noi?:** sì: il negozio ha già 1.776 recensioni, basta mostrarle.
**Rischio:** le recensioni meno positive saranno visibili. È giusto così, e aiuta la credibilità.
**Come verificarlo:** clic dalla home e tasso di aggiunta al carrello, prima e dopo.

---

## Cosa misurare per sapere se funziona

- **Imbuto in Analytics** separato per telefono e desktop: scheda vista → aggiunta al carrello → inizio checkout → acquisto.
- **Motivo dei resi e dei cambi** (quanti sono "taglia sbagliata"): misura l'effetto dei punti 4, 10 e 11.
- **Clic su Personal Shopper e WhatsApp**, e quante conversazioni diventano ordini.
- **Uso dei filtri** (quali, quante volte) prima e dopo la pulizia del filtro taglie.
- **Velocità reale** (PageSpeed Insights e dati di Search Console). Le pagine caricano molti script esterni: 4 tag Google, Brevo, PushOwl, LimeSpot, Trustindex, chat, Scalapay, iubenda, guida taglie, lista desideri, più moment.js con i dati dei fusi orari. Più velocità da telefono si associa a più conversioni ([Deloitte 2020](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html), C, studio osservazionale).

## Dettagli minori (un rigo ciascuno)

- Refusi: "Comunity" (newsletter), "su le ultime novità" (social), "Whastapp", "Chiamaci al.", "Reso gratuito … sempre gratuito", "spediti recapitati".
- La lista "Accessori" arriva dal menu Novità ma ha come titolo "Accessori Uomo": chi viene dalle novità non capisce se sta vedendo solo quelle.
- Con testo bianco su foto senza sfondo, il pulsante "Acquista ora" in home si legge male (contrasto, accessibilità).
- Se [nome azienda] ha almeno 10 dipendenti o almeno 2 milioni di fatturato, il sito deve rispettare le regole europee di accessibilità (European Accessibility Act) ([dettagli](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022), A). Non l'ho verificato.

---

## Fonti e limiti

Ho consultato 12 fonti esterne:
- Baymard: abbandono del carrello, scheda prodotto, taglie a pulsanti, informazioni sulle taglie, filtro taglie;
- NN/g: come si legge sul web;
- Garante Privacy: linee guida cookie;
- Codice del Consumo: artt. 52, 57 e 17-bis;
- meta-analisi sui resi (Janakiraman et al. 2016);
- FAQ della Commissione UE sulle sanzioni per i beni di lusso;
- Spiegel Research Center: recensioni;
- Deloitte: velocità.

Per il formato del link WhatsApp ho usato una guida di terzi: non sono riuscito ad aprire la pagina ufficiale di WhatsApp. La correzione è comunque certa, perché il sito stesso usa il numero con il 39 nel pulsante flottante.

**Non ho approfondito:**
- **checkout e carrello pieno:** non sono nei file;
- **velocità reale:** va misurata dal vivo;
- **concorrenza:** non ho confrontato [sito] con altri multimarca o con i siti dei brand;
- **lista completa dei capi nell'Allegato XVIII** (sanzioni Russia);
- **legittimità della regola sul sigillo di garanzia:** per questo punto e il precedente serve un consulente legale.
