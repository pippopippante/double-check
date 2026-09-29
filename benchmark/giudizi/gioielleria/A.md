# [nome azienda] ([nome]): analisi del sito per portare più clienti

Analisi fatta **solo** sulla copia salvata il 26/09/2026 (8 pagine: home, shop, catalogo 2020, carrello, condizioni di vendita, privacy, fotostoria, contatti). Le fonti esterne le ho aperte in questa sessione e sono citate con il link. Ogni prova ha un livello di affidabilità: **A** legge o risultati replicati, **B** ricerca su larga scala (Baymard, Nielsen Norman Group), **C** singolo studio, **D** pratica dei concorrenti, **E** ipotesi/ragionamento.

## Chi è l'azienda e cosa deve fare il sito

È un **laboratorio orafo artigianale** in [indirizzo] a Spoleto, con un marchio d'autore ([nome]). Le collezioni (Destiny, Flexi, Light) sono di pietre colorate e c'è una linea di pezzi unici. Il laboratorio va alle fiere di settore (Vicenza Oro, Inhorgenta) e ha un piccolo shop WooCommerce (20 prodotti, da 350 € a 695 €). Offre anche un servizio distintivo: la **Fotostoria**, cioè la documentazione con foto e video della lavorazione del gioiello del cliente, poi consegnata su USB insieme al certificato.

Quindi il sito ha tre modi per portare clienti, in ordine di valore probabile:
1. **Visite in negozio e richieste di gioielli su misura o pezzi unici**: sono gli scontrini alti. La Fotostoria esiste per questo.
2. **Vendite online** dei pezzi a prezzo fisso.
3. **Contatti B2B** (rivenditori incontrati in fiera). Qui non li tratto perché il sito non ha niente di specifico per loro.

I gioielli sono un acquisto molto "ragionato" e il digitale pesa soprattutto nella fase di ricerca: la maggioranza dei clienti si informa online e poi compra di persona (fenomeno "research online, purchase offline", [Wikipedia con fonti](https://en.wikipedia.org/wiki/Research_online,_purchase_offline), livello C). Per questo, secondo me, il sito va giudicato sia su "quanto vende" sia su "quanto facilita una visita o una telefonata" (E, da verificare con i dati di Analytics/telefonate dell'azienda).

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Contatti / "come venire a trovarci"** (pagina Contatti + footer + Fotostoria) | È da qui che passano le richieste su misura e le visite in negozio, il canale di maggior valore. È anche l'ultima tappa di chi ha già deciso. |
| 2 | **Shop e percorso d'acquisto** (listing, carrello) | È l'unico punto in cui il sito vende direttamente. |
| 3 | **Condizioni di vendita** | Decidono se un cliente si fida a spendere 350-700 € a distanza. In più oggi contengono clausole contrarie alla legge: è un rischio concreto e costa poco sistemarle. |
| 4 | **Home** | È la pagina più vista. Deve dire in pochi secondi chi siete e cosa fare dopo (comprare, venire, chiedere). Oggi non lo fa, e mostra segni di abbandono. |

Ho escluso la Privacy (è un testo iubenda standard e non incide sulle conversioni) e la pagina Catalogo 2020 come pagina a sé (è rotta, ne parlo dentro la Home).

---

## 1. Contatti e canale "negozio / su misura"

### Cosa ho trovato
- **Il telefono non è cliccabile.** Nell'HTML di tutte le pagine non c'è nessun link `tel:`: il numero [telefono] compare solo come testo (in `00-home.html` il numero è ripetuto due volte di fila nel footer). Da telefono, per chiamare bisogna copiare il numero a mano.
- **Non ci sono orari di apertura** in nessuna pagina. La parola "orari" compare solo nel testo legale iubenda. Chi vuole passare in negozio non sa quando trovarlo aperto.
- **Non c'è un invito a venire in negozio o a prendere un appuntamento.** Nel sito non compaiono mai le parole "appuntamento", "prenota", "su misura" o "personalizza". Eppure l'azienda è un laboratorio che realizza gioielli su richiesta: lo dice la stessa Fotostoria ("non ci limitiamo a realizzare i tuoi desideri").
- **La Fotostoria è solo una pagina di login.** Presenta il servizio più distintivo del laboratorio, ma l'unica azione possibile è "Accedi" con username e password. Manca un pulsante del tipo "Voglio un gioiello con Fotostoria / Richiedi un preventivo". In home, il suo "SCOPRI" porta proprio a questa pagina senza uscita (`06-chi-siamo.txt`).
- **Il modulo contatti** ha 6 campi più la casella privacy. Obbligatori: nome, cognome, oggetto e messaggio. L'email **non** è obbligatoria (quindi può arrivare un messaggio senza nessun recapito). Il pulsante dice un generico "Invia" e non si indica in quanto tempo arriva la risposta ("nel più breve tempo possibile").
- La mappa c'è (Google Maps embed in `07-contatti.html`), ma cerca "[nome azienda]" per nome e non per indirizzo.
- **Non c'è WhatsApp**, che in Italia è il canale più naturale per mandare la foto di un gioiello da rifare o da modificare (E).
- Nell'intestazione della pagina l'indirizzo compare come "SEDE LEGALE", non come negozio o laboratorio visitabile.

### Raccomandazioni

**1.1. Rendere il telefono cliccabile ovunque e aggiungere WhatsApp**
- **Cosa**: usare link `tel:[telefono]` in footer e contatti, togliere il doppione, aggiungere un link `wa.me` ("Scrivici su WhatsApp, anche con una foto"). Su telefono, un pulsante fisso "Chiama / WhatsApp".
- **Perché**: secondo NN/g gli utenti considerano il telefono essenziale per fidarsi e non vogliono un modulo come unica via di contatto ([NN/g, Contact Us pages](https://www.nngroup.com/articles/contact-us-pages/), B). La parte su WhatsApp è un'ipotesi (E).
- **Vale per noi?**: sì, anzi di più. Chi compra un gioiello costoso o su misura vuole parlare con una persona.
- **Come verificarlo**: misurare i clic sui link tel e WhatsApp come eventi in Analytics e contare le chiamate ricevute prima e dopo.

**1.2. Pubblicare orari e un invito chiaro a visitare il laboratorio**
- **Cosa**: una sezione "Vieni in laboratorio" con orari, indirizzo del negozio (non solo "sede legale"), mappa sull'indirizzo, 1-2 foto del banco di lavoro e un pulsante "Prenota una consulenza". Gli stessi orari vanno inseriti nel Profilo dell'attività su Google.
- **Perché**: gli orari sono tra le informazioni che gli utenti si aspettano in una pagina contatti ([NN/g](https://www.nngroup.com/articles/contact-us-pages/), B). Per i gioielli si cerca online e si compra di persona ([ROPO](https://en.wikipedia.org/wiki/Research_online,_purchase_offline), C).
- **Come verificarlo**: chiedere in negozio "come ci ha trovato?" per 2-3 mesi e contare le richieste di appuntamento.

**1.3. Trasformare la Fotostoria da login a porta d'ingresso per il su misura**
- **Cosa**: tenere il login in piccolo, in un angolo. Sopra, spiegare in 3 passaggi come funziona (idea → lavorazione documentata → scrigno con certificato e USB), mettere 2-3 foto o video di esempio e il pulsante **"Richiedi il tuo gioiello su misura"**. Il pulsante apre un modulo breve (nome, email o telefono, cosa desideri, budget indicativo facoltativo, allegato foto).
- **Perché**: il testo deve dire cosa fare e mettere prima ciò che decide ([NN/g, come si legge sul web](https://www.nngroup.com/articles/how-users-read-on-the-web/), B). Il valore del servizio come leva di vendita è un'ipotesi (E).
- **Vale per noi?**: è l'elemento più distintivo del laboratorio rispetto a una gioielleria qualsiasi. Oggi non genera nessuna richiesta.
- **Come verificarlo**: contare le richieste arrivate dal modulo Fotostoria.

**1.4. Sistemare il modulo contatti**
- **Cosa**: un solo campo "Nome", email **obbligatoria** oppure telefono (almeno uno dei due), "Oggetto" sostituito da una scelta semplice (Informazioni su un gioiello / Su misura / Riparazione / Rivenditori), pulsante "Invia richiesta" e la promessa "Rispondiamo entro 1 giorno lavorativo" (solo se è vera).
- **Perché**: NN/g consiglia 3-5 campi, di chiedere solo il necessario e di dire quando arriva la risposta ([NN/g](https://www.nngroup.com/articles/contact-us-pages/), B). Il pulsante deve dire cosa succede ([testi-web, NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).
- **Come verificarlo**: guardare la percentuale di invii sul totale delle visite alla pagina Contatti.

---

## 2. Shop e percorso d'acquisto

### Cosa ho trovato (`01-categoria.txt`, `03-carrello.txt`, screenshot)
- **Lo shop contiene solo 20 prodotti, tutti di una linea base** (anelli piccoli, orecchini grandi). Le collezioni messe in evidenza in home (Destiny, Flexi, Light) e i Pezzi unici non risultano acquistabili dallo shop. Non posso però verificare se nelle loro pagine ci sono prezzi o pulsanti, perché quelle pagine non sono nella copia salvata.
- **Le scritte dell'interfaccia sono in inglese** su un sito in italiano: "Add to cart", "Showing 1–12 of 20 results", "Default sorting", "Your cart is currently empty", "Return to shop", "View Cart", "Subtotal".
- **C'è un errore di battitura** in un nome prodotto: "Orecchini Grandi Con **Citrinio**".
- **Tutte le immagini dei prodotti hanno `alt=""`**, quindi niente descrizione per i lettori di schermo né per Google Immagini. Per un prodotto così visivo, conta.
- **Il listing non dice niente su spedizione, tempi o resi.** Le condizioni dicono solo che le spese sono "a carico del Cliente" e "calcolate in funzione del peso, del volume e della destinazione", e che l'evasione avviene "di norma entro 15 giorni".
- **Nei nomi dei prodotti mancano metallo e caratura** (oro? argento? che titolo?). Sono l'informazione base per decidere su un gioiello da 350-700 €. Le schede prodotto non sono nella copia, quindi non so se le specifiche sono lì.
- Nota: il mini-carrello con "2 × Anelli Piccoli con ametista" e il messaggio "removed" nel carrello sono quasi certamente effetti della fotografia automatica del sito, non problemi del sito.

### Raccomandazioni

**2.1. Mostrare spedizione, tempi di consegna e resi vicino al prezzo e nel carrello**
- **Cosa**: una riga fissa sotto il pulsante d'acquisto, del tipo "Spedizione assicurata X € (o gratuita sopra Y €) · Pronto in N giorni · Reso entro 14 giorni", con i dati veri. Aggiungere anche "Oppure ritiralo in laboratorio a Spoleto".
- **Perché**: il 40% di chi abbandona il checkout lo fa per costi extra, il 20% per consegna lenta, il 13% per la politica resi e il 12% perché non riesce a vedere il totale in anticipo. Il 67% dei siti non mostra la spedizione nella pagina prodotto ([Baymard, checkout](https://baymard.com/research/checkout-usability) e [Baymard, pagina prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
- **Vale per noi?**: sì, e ancora di più perché il prodotto è costoso. Il ritiro in negozio collega lo shop al canale fisico (E).
- **Come verificarlo**: guardare il tasso carrello → ordine in WooCommerce prima e dopo. Con pochi ordini il dato sarà solo indicativo.

**2.2. Tradurre in italiano tutte le scritte dello shop e correggere gli errori**
- **Cosa**: attivare la traduzione italiana di WooCommerce/ShopEngine (Loco Translate o il file .po), correggere "Citrinio" e scrivere testi `alt` descrittivi (es. "Anello in oro [tipo] con ametista ovale, [nome azienda]").
- **Perché**: un'interfaccia mezza in inglese su un sito italiano dà un'impressione di trascuratezza e riduce la fiducia, proprio dove si paga (E). Il testo alternativo è un requisito base di accessibilità (WCAG 1.1.1). Se l'azienda supera la soglia di microimpresa, per l'e-commerce è anche un obbligo di legge ([EAA, D.Lgs. 82/2022](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022), A).
- **Costo**: poche ore di lavoro.

**2.3. Scrivere le specifiche che decidono l'acquisto**
- **Cosa**: in ogni scheda indicare metallo e titolo, peso, misure della pietra, taglie disponibili (per gli anelli: guida alle misure e possibilità di ridimensionamento in laboratorio), una foto indossata o in scala, e confezione e certificato.
- **Perché**: le aree con più problemi gravi nelle pagine prodotto sono scheda tecnica, spedizione/resi e immagini "in scala" (il 37% dei siti non le ha) ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
- **Da verificare**: le schede prodotto non sono nella copia salvata. Prima di intervenire, controllare cosa c'è già.

**2.4. Rendere "contattabili" anche i pezzi che non si vendono online**
- **Cosa**: le collezioni e i pezzi unici che non si vogliono vendere online devono avere comunque "Prezzo su richiesta / Chiedi informazioni su questo pezzo" (WhatsApp o modulo precompilato con il nome del pezzo), e magari "Vederlo in laboratorio".
- **Perché**: oggi la parte più attraente del catalogo non porta né a un acquisto né a un contatto (E, tenendo conto che non ho visto quelle pagine). Si collega alla raccomandazione 1.3.
- **Come verificarlo**: contare le richieste per singolo pezzo.

---

## 3. Condizioni di vendita

Il testo (`04-condizioni.txt`) sembra un modello generico mai adattato e contiene **clausole contrarie al Codice del Consumo**. Oltre al rischio legale, chi lo legge prima di spendere 500 € trova motivi per non fidarsi. Non è consulenza legale: fatelo rivedere a un legale, ma i punti sotto sono verificati sul testo di legge.

### Cosa ho trovato e cosa dice la legge

| Clausola attuale | Cosa prevede la legge | Livello |
|---|---|---|
| Recesso "**esclusivamente** mediante lettera raccomandata A/R", niente email | Il consumatore può recedere con il modulo tipo **o con qualsiasi altra dichiarazione esplicita** (art. 54 Cod. Consumo, [Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art54.html)) | A |
| Il reso va spedito "entro e non oltre **48 ore**" dall'autorizzazione | Il consumatore ha **14 giorni** dalla comunicazione di recesso per restituire il bene (art. 57, [Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art57.html)) | A |
| "Si riserva il diritto di non accettare la restituzione di prodotti privi del codice di autorizzazione reso" | Non si può condizionare il diritto di recesso a una procedura aggiuntiva del venditore (conseguenza degli artt. 54 e 57) | A |
| Foro competente "in via esclusiva il **Foro di Caserta**" (l'azienda è a Spoleto) | Per il consumatore il foro è **inderogabilmente** quello della sua residenza (art. 66-bis, [Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-iv/art66bis.html)) | A |
| Vizi palesi da denunciare "a pena di decadenza, entro **15 giorni**"; "le garanzie sono quelle fornite dal produttore"; difetti da comunicare "entro due mesi" con raccomandata | Il **venditore** risponde dei difetti di conformità che si manifestano entro **2 anni** dalla consegna. Il D.Lgs. 170/2021 ha **eliminato** l'onere di denuncia entro due mesi per i contratti dal 2022 ([Legal Team, D.Lgs 170/2021](https://legal-team.it/codice-del-consumo-le-modifiche-apportate-dal-d-lgs-170-del-2021/); [Brocardi art. 133](https://www.brocardi.it/codice-del-consumo/parte-iv/titolo-iii/capo-i/art133.html)) | A |

Il termine di recesso di "15 giorni lavorativi" dalla ricezione è di per sé **più favorevole** dei 14 giorni di legge (art. 52, [Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html)), quindi non è un problema. Lo sono le modalità che lo accompagnano.

**Incoerenze che minano la fiducia** (non legali ma visibili):
- La premessa dice che il sito pubblica "**cataloghi prodotti di fornitori terzi**". Contraddice tutto il resto del sito ("laboratorio e ogni fase produttiva dei gioielli" a Spoleto).
- Cita funzioni che non esistono: "Archivio ordini – Wish List", "Invita un amico", newsletter, "manuali di istruzioni", "prodotti sigillati".
- Nell'art. 2 la registrazione implica l'accettazione della newsletter. Il consenso al marketing dovrebbe essere separato e facoltativo (GDPR). Va verificato con il legale.
- L'indirizzo è senza numero civico ("[indirizzo], [indirizzo]").

### Raccomandazioni

**3.1. Riscrivere le condizioni (priorità alta, costo basso)**
- **Cosa**: recesso con email, modulo online o qualsiasi dichiarazione, con il modulo tipo allegato; 14 giorni per restituire; foro del consumatore; garanzia legale di 2 anni del venditore, senza decadenze a 15 giorni; eliminare le parti su "fornitori terzi" e sulle funzioni inesistenti; indirizzo completo.
- **Perché**: sono obblighi di legge (A). La politica resi pesa sull'abbandono nel 13% dei casi ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B).

**3.2. Aggiungere una pagina "Spedizioni, resi e garanzia" in linguaggio semplice**
- **Cosa**: 5-6 punti chiari (costo e corriere assicurato, tempi, come si fa il reso, garanzia, certificato di autenticità, ridimensionamento anelli), collegata da scheda prodotto, carrello e footer.
- **Perché**: il 44% dei siti non mostra o non collega bene la politica resi dalla pagina prodotto ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). I testi devono essere concisi e scansionabili ([NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).

---

## 4. Home

### Cosa ho trovato (`00-home.txt`, screenshot desktop e telefono)
- **Sembra abbandonata.** L'evento più recente in "Eventi & Novità" è **Vicenza Oro – Gennaio 2025**, ma la copia è del settembre 2026. Uno degli eventi è intitolato "Vicenza Oro 2023" e nel testo dice "dal 20 al 24 Marzo **2022**". L'ultima modifica della pagina è di marzo 2023 (`article:modified_time`).
- **I cataloghi non funzionano.** I tre pulsanti "SFOGLIA IL CATALOGO" portano a Catalogo 2020, Catalogo 2013 e un terzo. La pagina Catalogo 2020 mostra solo "**ERROR: Set a Valid Document Source.**" (`02-categoria.txt`). Nel 2026 sono cataloghi di 6 e 13 anni fa.
- **La sezione "ABOUT US" è vuota**: c'è il titolo e una colonna senza contenuto (`00-home.html` riga 1676). Anche il titolo è in inglese.
- **Il primo schermo non ha un invito all'azione.** C'è uno slider con il logo e il banner dei cookie. Poi arrivano due blocchi di testo sulla storia di Spoleto, con dati come i Longobardi, la lista UNESCO e il ducato del 568-774 d.C. Niente dice "laboratorio orafo, gioielli su misura, vieni a trovarci, compra online". Sotto c'è un video a tutta larghezza.
- Su telefono la home è lunghissima (la copia è alta 16.000 px) e il testo iniziale è su due colonne strette.
- **Mancano la meta description e lo schema da negozio locale.** Nelle pagine c'è solo lo schema Yoast generico (WebPage, WebSite): niente `JewelryStore`/`LocalBusiness` con indirizzo, orari e telefono. Il titolo ripete "[nome azienda]" due volte.
- Ci sono versioni EN e DE (hreflang), un bene per i turisti di Spoleto. Non ho potuto vederle.

### Raccomandazioni

**4.1. Togliere subito ciò che è rotto o datato**
- **Cosa**: eliminare i link ai cataloghi 2013/2020, oppure caricare un catalogo attuale in PDF che funzioni. Nascondere la sezione ABOUT US vuota. Mostrare gli eventi solo se aggiornati, altrimenti togliere il blocco o sostituirlo con "Ci trovi anche a Vicenza Oro" senza date.
- **Perché**: contenuti vecchi ed errori fanno sembrare chiusa l'attività (E, ma molto probabile). Gli errori sono tra le cause di abbandono citate da Baymard (17% per "errori o crash del sito", [Baymard](https://baymard.com/lists/cart-abandonment-rate), B, riferito al checkout).
- **Costo**: un'ora.

**4.2. Dare alla home un primo schermo che dica chi siete e cosa fare**
- **Cosa**: un titolo concreto sopra la foto, per esempio "Gioielli con pietre colorate, creati a mano nel nostro laboratorio di Spoleto". Sotto, tre pulsanti: **Acquista online**, **Richiedi un gioiello su misura** (porta alla Fotostoria rinnovata, raccomandazione 1.3) e **Vieni in laboratorio** (orari e mappa). La storia di Spoleto va ridotta a 2 righe o spostata in una pagina "Il laboratorio".
- **Perché**: il 79% degli utenti scansiona la pagina e si leggono circa il 20-28% delle parole. Contano la prima frase e i titoli; i testi oggettivi funzionano meglio di quelli promozionali ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B).
- **Vale per noi?**: sì. Il legame con Spoleto è un buon elemento di marca, ma oggi occupa lo spazio che dovrebbe dire cosa si vende e come averlo.
- **Come verificarlo**: guardare i clic sui tre pulsanti e la percentuale di visitatori della home che raggiungono shop, contatti o Fotostoria.

**4.3. Portare in home le recensioni (la pagina "Dicono di noi")**
- **Cosa**: mostrare 3-4 recensioni reali, anche le meno perfette, con link al Profilo Google, e chiedere attivamente una recensione dopo ogni consegna.
- **Perché**: con 5 recensioni la probabilità di acquisto sale di molto rispetto a nessuna recensione, e l'effetto è maggiore sui prodotti costosi. Il voto più convincente è tra 4,0 e 4,7, non 5 ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C). È vietato filtrare le negative o spacciare recensioni non verificate (direttiva Omnibus, A).
- **Nota**: la pagina "Dicono di noi" non è nella copia, quindi non so cosa contenga oggi.

**4.4. SEO locale di base**
- **Cosa**: aggiungere lo schema `JewelryStore` (indirizzo, telefono, orari, geo), una meta description per pagina e un titolo senza doppioni (es. "Laboratorio orafo a Spoleto – Gioielli con pietre colorate | [nome]").
- **Perché**: è pratica standard (D) e aiuta chi cerca "gioielleria Spoleto" a trovarvi con orari e indirizzo. L'impatto preciso non l'ho verificato (E).

---

## Priorità complessiva

Ordine per impatto atteso × affidabilità della prova × costo.

| # | Azione | Impatto | Prova | Costo |
|---|---|---|---|---|
| 1 | Riscrivere le condizioni di vendita (recesso, foro, garanzia, "fornitori terzi") | Fiducia + rischio legale | A | Basso |
| 2 | Togliere dalla home il catalogo rotto, la sezione vuota e gli eventi datati | Evitare l'effetto "sito abbandonato" | E/B | Bassissimo |
| 3 | Telefono cliccabile, WhatsApp, orari, "vieni in laboratorio" | Contatti e visite (canale di maggior valore) | B | Basso |
| 4 | Fotostoria come porta d'ingresso per il su misura, con pulsante di richiesta | Richieste su misura | B/E | Medio |
| 5 | Spedizione, tempi e resi accanto al prezzo; ritiro in negozio | Vendite online | B | Basso |
| 6 | Shop in italiano, correggere "Citrinio", testi alt | Fiducia, accessibilità | A/E | Basso |
| 7 | Primo schermo della home con titolo chiaro e 3 azioni | Orientamento, clic verso gli obiettivi | B | Medio |
| 8 | Specifiche prodotto complete; "chiedi info" su collezioni e pezzi unici | Vendite e contatti | B/E | Medio |
| 9 | Recensioni Google in home e richiesta dopo ogni consegna | Conversione | C | Basso, continuo |
| 10 | Modulo contatti più corto e con promessa di risposta | Contatti | B | Basso |
| 11 | Schema JewelryStore, meta description | Visibilità locale | D/E | Basso |

**Come misurare:** prima di cambiare qualcosa, attivare in Analytics gli eventi per i clic su tel e WhatsApp, l'invio dei moduli, il carrello e gli ordini. Con i volumi di una gioielleria locale un test A/B non darebbe risultati affidabili: meglio confrontare prima e dopo, sapendo che è un segnale debole, e chiedere in negozio "come ci ha trovato?".

## Limiti di questa analisi
- Ho consultato circa 10 fonti: Codice del Consumo (artt. 52, 54, 57, 66-bis, 133 e D.Lgs. 170/2021), Baymard (checkout, pagina prodotto), NN/g (pagine contatti, lettura sul web), Spiegel (recensioni), ROPO. Una pagina McKinsey sul settore gioielli non si è caricata e non l'ho usata.
- **Non ho visto**: schede prodotto, checkout, pagine Collezioni, Pezzi unici, Lavorazione, Le pietre, Dicono di noi, Video e le versioni EN/DE. Alcune raccomandazioni (2.3, 2.4, 4.3) vanno verificate su quelle pagine.
- **Non ho approfondito**: velocità del sito (la home carica un video a tutta pagina e il player YouTube), confronto con gioiellerie artigiane concorrenti, conformità del banner cookie. Se servono, posso continuare su uno di questi.
