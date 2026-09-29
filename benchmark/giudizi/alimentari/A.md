# [nome azienda] (Spoleto): analisi del sito per portare più clienti

Sito: [sito], analizzato solo dalla copia salvata il 26/09/2026 (home, "Il negozio", "Contatti": HTML, testo, screenshot desktop e telefono).
Le pagine "Panini imbottiti" e "I prodotti" sono nel menu ma non nella copia, quindi non le ho analizzate.

## Cosa fa l'azienda e cosa conta come "cliente in più"

È una bottega storica di alimentari in [indirizzo], nel centro storico, gestita dalla famiglia [nome azienda]: salumi, formaggi, vini, olio, tartufo, legumi, pane e pizza (anche senza glutine), panini da asporto. Non c'è vendita online. Il sito deve quindi produrre tre cose:

1. **Visite in negozio**: turisti in centro, persone che cercano un panino per pranzo, clienti che vogliono prodotti tipici o regali.
2. **Telefonate / ordini**: l'intestazione dice "Ordinate formaggi, salumi e vini Umbri: [telefono]".
3. **Richieste dal modulo**: la pagina "Il negozio" invita a "prenotare pizze senza glutine" dal modulo contatti.

Dato di contesto: nel 2024 Spoleto ha avuto 311.047 presenze turistiche. Gli stranieri sono stati 28.229 arrivi e 93.095 presenze, circa il 30% delle presenze ([Vivo Umbria su dati Regione Umbria](https://www.vivoumbria.it/i-dati-sul-turismo-in-umbria-2024-spoleto-ha-superato-le-300-000-presenze/), livello B). Una parte importante dei possibili clienti è quindi un turista che guarda il sito **dal telefono, mentre è in giro, forse in inglese**.

## Le 4 parti più importanti e perché

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Il contatto: telefono, modulo e pagina Contatti** | È l'unica conversione misurabile del sito (chiamata, ordine, prenotazione). Se non funziona bene, il sito non produce niente. |
| 2 | **L'esperienza sul telefono** | Chi è in centro a Spoleto e cerca "alimentari", "panino" o "prodotti tipici" usa il telefono. Negli screenshot da telefono si vedono i problemi più gravi. |
| 3 | **Come si viene trovati e scelti su Google (titoli, descrizioni, recensioni, lingua)** | Per un negozio fisico la prima vetrina è il risultato di Google e la scheda Maps, prima ancora del sito. |
| 4 | **La presentazione dell'offerta (home + "Il negozio")** | Deve convincere a entrare: cosa trovo, perché qui, quando è aperto, dov'è. Oggi è un testo generico senza foto reali del negozio. |

---

## 1. Il contatto: telefono, modulo e pagina Contatti

### Cosa ho trovato
- **Il numero di telefono non si può chiamare con un tocco.** Nell'intestazione "[telefono]" porta a `/contatti` (`00-home.html`, riga 568: `<a href="/contatti">[telefono]`). Nel piè di pagina e nella pagina Contatti il numero è solo testo in grassetto. In tutto il sito non c'è nessun link `tel:`. Da telefono, chi tocca "Ordinate…: [telefono]" finisce su un'altra pagina invece di chiamare.
- **Non è chiaro come si ordina.** "Il negozio" dice di prenotare le pizze senza glutine "compilando il modulo contatti". La pagina Contatti dice invece "Per ordinazioni contattate i titolari al numero…". Il modulo, poi, si intitola **"Scoprire le promozioni sui prodotti umbri"**: sembra un'iscrizione alla newsletter, non un modo per ordinare o prenotare.
- Il pulsante del modulo dice solo "Invia". Non c'è un campo per dire cosa si vuole e per quando, e non si dice entro quanto arriva la risposta.
- Il titolo principale della pagina Contatti è "Vendita di salumi tipici con tartufo a Spoleto": una frase scritta per Google che non c'entra con la pagina.
- L'email è `[email]`. Il nome non corrisponde a "[nome azienda]" e il dominio è generico: può far dubbiare chi non conosce la ragione sociale.
- Nel codice della pagina Contatti c'è una mappa Google (riga 908), ma negli screenshot al suo posto c'è un grande spazio bianco (desktop e telefono). Va controllato se la mappa compare davvero, anche per chi rifiuta i cookie.

### Raccomandazioni

**1a. Rendere il numero chiamabile ovunque (`tel:[telefono]`)** (priorità massima, 10 minuti)
- **Perché**: le linee guida NN/g sulle pagine contatti chiedono di mostrare chiaramente il telefono e di non sostituirlo con un modulo; gli utenti si irritano quando sono costretti a compilare un modulo "quando vogliono solo parlare" ([NN/g, Contact Us pages](https://www.nngroup.com/articles/contact-us-pages/), B). Che il numero debba essere un link `tel:` è una convenzione del web da telefono (E, ma a costo quasi zero).
- **Vale per noi?** Sì, ancora di più: il sito stesso invita a ordinare per telefono.
- **Come verificarlo**: contare i tocchi sui link `tel:` negli analytics (evento sul click) e chiedere ai titolari se le telefonate aumentano.
- In più, su telefono: un **pulsante fisso "Chiama"** in basso, e accanto (se i titolari lo usano) **"WhatsApp"**. WhatsApp è un'ipotesi (E): conviene solo se in negozio qualcuno risponde davvero.

**1b. Un solo modo chiaro per ordinare e prenotare** (alta)
- Rinominare il modulo in **"Prenota o ordina"** con: nome, telefono, *cosa desideri* (panini, pizza senza glutine, confezione regalo, altro), *giorno e ora di ritiro*, messaggio. Al massimo 5 campi, come consiglia NN/g ([stessa fonte](https://www.nngroup.com/articles/contact-us-pages/), B).
- Pulsante "Invia richiesta" invece di "Invia": il testo del pulsante deve dire cosa succede (NN/g, [How users read on the web](https://www.nngroup.com/articles/how-users-read-on-the-web/), B, dal pacchetto testi).
- Sotto il pulsante: "Ti richiamiamo entro [X ore] negli orari di apertura. Per ordini in giornata chiama lo [telefono]." NN/g raccomanda di dire entro quanto si risponde su ogni canale (B).
- Rendere uguali il testo di "Il negozio" e quello di "Contatti", così si capisce che si può prenotare sia col modulo sia al telefono.
- L'offerta promozionale resta come casella separata (c'è già: "Ricevi offerte speciali"), non come titolo del modulo.

**1c. Pagina Contatti pulita** (media)
- Titolo: "Contatti, orari e come arrivare". Il testo SEO sul tartufo va spostato o tolto.
- Aggiungere un link di testo **"Apri in Google Maps / Indicazioni"**, che funziona anche se la mappa incorporata non si carica.
- Se possibile, usare un'email col nome del negozio (es. [email]), oppure scrivere "Ditta Elle Esse – [nome azienda]" per spiegare il nome (E).

---

## 2. L'esperienza sul telefono

### Cosa ho trovato (dagli screenshot `*-telefono.jpg`)
- **La pagina è più larga dello schermo**: nel piè di pagina si legge "ALIMENTAR…", "Piazza del M…", "[indirizzo] Spo…", e nella home i riquadri "Regali m…", "Pausa pran…", "Salum…" sono tagliati a destra.
- **Nella pagina Contatti su telefono il modulo non si vede.** Nell'HTML c'è (`<form>` alla riga 742), ma nello screenshot dopo gli orari c'è solo spazio vuoto. È probabile che sia finito fuori schermo a destra, per lo stesso problema di larghezza.
- **La home da telefono è lunghissima** (circa 13.800 px) e ha grandi zone grigie vuote: le immagini non compaiono e restano i riquadri vuoti. Anche su desktop, accanto a "Salumi, funghi e specialità umbre", c'è un grande riquadro grigio vuoto.
- Il banner dei cookie (Cookiebot) copre quasi tutta la prima schermata su telefono. È obbligatorio, ma su telefono occupa più di metà dello schermo.

> Attenzione: alcune di queste cose potrebbero dipendere dal modo in cui è stata fatta la copia (immagini caricate in ritardo). Vanno **controllate su un telefono vero** prima di intervenire. Il testo tagliato a destra e il modulo che manca, però, sono indizi forti di un problema reale di impaginazione.

### Raccomandazioni

**2a. Controllare e correggere l'impaginazione da telefono** (priorità massima)
- Aprire le tre pagine su un telefono vero (iPhone e Android) e controllare tre cose: nessuno scorrimento orizzontale, il modulo Contatti visibile e usabile, le immagini caricate.
- Il sito è fatto con un costruttore di siti (le classi `dm…` dell'HTML sono di Duda, lo strumento usato anche da molti rivenditori di siti per le PMI). Nell'editor c'è una vista "mobile" separata: lì di solito basta riportare le colonne a una sola e togliere le larghezze fisse.
- **Perché**: se il modulo non si vede su telefono, la conversione da telefono è zero. Non serve una fonte per questo. È un difetto, non una scelta (evidenza dai file del progetto).
- **Come verificarlo**: Google Search Console → "Esperienza" / test di usabilità mobile, e un controllo a mano.

**2b. Sostituire i riquadri vuoti con foto vere, leggere** (alta)
- Meglio poche foto (bancone, famiglia, panino, vetrina) compresse bene, invece di sfondi grandi che non si caricano.

---

## 3. Come si viene trovati e scelti su Google

### Cosa ho trovato
- **Il titolo della home, quello che compare su Google, è "Salumeria e gastrostomia | Spoleto, PG | [nome azienda]"** (`00-home.html`, riga 507). "Gastrostomia" è un intervento chirurgico (un'apertura nello stomaco), non "gastronomia". È il primo testo che un possibile cliente legge nei risultati di Google.
- I titoli e le descrizioni delle altre pagine sono ragionevoli ("Negozio di alimentari tipici | Spoleto, PG", "Vendita affettati locali | Spoleto, PG").
- I dati strutturati `LocalBusiness` ci sono, con indirizzo, telefono e orari coerenti con la pagina Contatti. Questo è un punto a favore.
- **Il sito è solo in italiano**, mentre circa il 30% delle presenze turistiche a Spoleto è di stranieri (vedi sopra).
- Non ci sono recensioni né collegamenti alle recensioni. C'è solo l'icona Facebook. Nel piè di pagina "Designed by | Questa azienda è presente anche su e" ha i nomi vuoti: sembra un modello lasciato a metà.

### Raccomandazioni

**3a. Correggere subito "gastrostomia" → "gastronomia"** (priorità massima, 2 minuti)
- Titolo proposto: "[nome azienda] – Salumeria e gastronomia a Spoleto, [indirizzo]". Fonte: il file stesso. È un errore che danneggia l'immagine proprio nel punto più visibile.

**3b. Curare la scheda Google Business Profile** (alta)
- **Perché**: Google dice che il posizionamento locale dipende da pertinenza, distanza e "prominenza". La prominenza cresce con i siti che rimandano all'attività e con il numero di recensioni positive. Google consiglia informazioni complete, orari aggiornati (anche quelli speciali), foto e risposte alle recensioni ([Google, Suggerimenti per migliorare il posizionamento locale](https://support.google.com/business/answer/7091?hl=it), A: fonte ufficiale di chi fa la classifica). Il 2025 Local Consumer Review Survey di BrightLocal (su consumatori USA) trova che solo il 4% non legge mai le recensioni e che l'84% usa Google per leggerle ([BrightLocal 2025](https://www.brightlocal.com/research/local-consumer-review-survey-2025/), B. Il campione è USA: per l'Italia la direzione è probabilmente la stessa, ma i numeri non sono verificati).
- **Azioni**: verificare la scheda, aggiungere foto vere, orari speciali (festivi, Festival dei Due Mondi), rispondere alle recensioni, chiedere una recensione ai clienti soddisfatti (per esempio con un cartello e QR code alla cassa). Mai recensioni comprate o scambiate con sconti non dichiarati: in Italia/UE sono pratiche vietate.
- Sul sito: aggiungere un link "Leggi le recensioni su Google" e 2-3 recensioni vere citate con nome e data (non inventate).

**3c. Una pagina in inglese** (media)
- Basta una pagina "Visit us / Umbrian specialties, sandwiches, gluten-free" con orari, indirizzo, link a Maps, "call us" e le specialità. Non serve tradurre tutto.
- **Perché**: circa il 30% delle presenze turistiche sono straniere (B, dati sopra). Che una pagina in inglese porti più visite è un'ipotesi (E). **Verificarlo** con Search Console (ricerche in inglese che portano al sito) e chiedendo in negozio da dove arrivano i turisti.

---

## 4. La presentazione dell'offerta (home e "Il negozio")

### Cosa ho trovato
- **La home non dice quando il negozio è aperto.** Gli orari (Lun–Sab 7:30–14:15 e 16:00–20:00, Dom 7:30–14:00) sono solo nella pagina Contatti. Eppure l'apertura dalle 7:30 anche la domenica è un punto di forza per turisti e pausa pranzo.
- Il testo è lungo, generico e pieno di superlativi ("i migliori prodotti", "sapori unici e inimitabili", "eccellenze alle quali non potrete resistere"). NN/g ha trovato che il 79% degli utenti scorre la pagina senza leggerla tutta e che il testo **conciso, facile da scorrere e oggettivo** rende molto meglio di quello promozionale ([NN/g, How users read on the web](https://www.nngroup.com/articles/how-users-read-on-the-web/); [Concise, scannable, objective](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).
- **Errori che minano la credibilità di un negozio "esperto del territorio"**:
  - "dai vini di **Monfalcone**": Monfalcone è in Friuli. Quasi certamente si intende **Montefalco** (Sagrantino), la zona di vino più famosa vicino a Spoleto. Da confermare con i titolari.
  - "è **uno** delle botteghe più antiche" → "una delle"; "è **sono** disponibili" → "sono disponibili".
- I pezzi forti veri ci sono, ma sono sepolti nel testo: **bottega storica di famiglia, panini da asporto, prodotti senza glutine (pane e pizza), pizze senza glutine su prenotazione, idee regalo e souvenir, aperto anche la domenica mattina.**
- Non ci sono foto del negozio né della famiglia: solo immagini generiche di salumi (probabilmente d'archivio).
- Non si dice se si fanno **confezioni regalo** o **spedizioni**. Per un turista che ha assaggiato e vuole riordinare da casa, questa è l'occasione mancata più ovvia.

### Raccomandazioni

**4a. Una "barra pratica" in cima alla home** (alta)
- Subito sotto il titolo: **"Aperto oggi 7:30–14:15 / 16:00–20:00 · [indirizzo] · [Chiama] [Indicazioni]"**. Sono le tre domande di chi è in giro: è aperto? dov'è? posso chiamare?
- **Perché**: per chi scorre la pagina, la cosa che decide l'azione deve stare in cima (NN/g, sopra, B). Il contenuto proposto è un'ipotesi ragionata (E).

**4b. Riscrivere l'offerta come elenco di motivi concreti** (media)
- Per esempio, quattro riquadri con foto vere: **Panini da asporto** (con 2-3 esempi e prezzo indicativo, se i titolari vogliono) · **Senza glutine** (pane e pizza, prenotabile) · **Regali e souvenir umbri** (lenticchie di Castelluccio, tartufo, zafferano, Sagrantino) · **Salumi e formaggi al banco** (Norcia, capocollo, coglioni di mulo).
- Usare frasi con fatti ("dal 19xx", "tre generazioni", se vero) invece di superlativi.
- Correggere Monfalcone/Montefalco e i refusi.

**4c. Valutare "spediamo in Italia / confezioni regalo"** (media, da verificare)
- Se il negozio può già spedire o preparare confezioni, basta una sezione "Confezioni regalo e spedizioni: chiamaci o scrivici". Un vero negozio online non serve per partire.
- È un'ipotesi (E). **Verificarla** chiedendo ai titolari quante volte i clienti chiedono di spedire, e misurando le richieste arrivate dal modulo con "spedizione" selezionata.

**4d. Sistemare il piè di pagina** (bassa)
- Togliere "Designed by | Questa azienda è presente anche su e" con i nomi vuoti, oppure completarlo.

---

## Riepilogo in ordine di priorità

| Priorità | Intervento | Sforzo | Base |
|---|---|---|---|
| 1 | Correggere "gastrostomia" nel titolo della home | minuti | file del sito |
| 2 | Numero di telefono chiamabile (`tel:`) ovunque + pulsante "Chiama" fisso su telefono | minuti | NN/g (B) + convenzione (E) |
| 3 | Controllare e correggere l'impaginazione da telefono (pagina troppo larga, modulo non visibile, immagini vuote) | ore | screenshot del sito |
| 4 | Barra "Aperto oggi · indirizzo · Chiama · Indicazioni" in cima alla home | ore | NN/g (B), contenuto E |
| 5 | Modulo trasformato in "Prenota o ordina" (≤5 campi, tempi di risposta), testi coerenti tra le pagine | ore | NN/g (B) |
| 6 | Scheda Google Business Profile + recensioni + link alle recensioni sul sito | continuo | Google (A), BrightLocal (B) |
| 7 | Correggere Monfalcone/Montefalco e i refusi; testo più breve e concreto; foto vere | ore | file del sito, NN/g (B) |
| 8 | Pagina in inglese per i turisti | 1 giorno | dati turismo (B), effetto E |
| 9 | Confezioni regalo / spedizioni (se sostenibili) | da valutare | E, da verificare |
| 10 | Pulire il piè di pagina, email col nome del negozio, titolo della pagina Contatti | minuti | file del sito |

## Come misurare se funziona
- Attivare un analytics con eventi su: clic su "Chiama", clic su "Indicazioni", invio del modulo. Serve il consenso ai cookie analitici, quindi i numeri saranno parziali.
- Google Business Profile → statistiche: chiamate, richieste di indicazioni, visite al sito dalla scheda.
- Chiedere in negozio "come ci ha trovato?" per un mese prima e un mese dopo le modifiche. Con numeri piccoli un test A/B non darebbe risultati affidabili: il confronto prima/dopo è un segnale debole, ma è quello disponibile.

## Limiti di questa analisi
Ho consultato 5 fonti esterne: NN/g sulle pagine contatti e sulla lettura sul web, Google sul posizionamento locale, BrightLocal sulle recensioni, dati sul turismo a Spoleto. **Non ho approfondito**: le pagine "Panini imbottiti" e "I prodotti" (non sono nella copia), la velocità di caricamento reale, la concorrenza locale a Spoleto, e se il negozio abbia già una scheda Google con recensioni (non consultabile senza visitare siti esterni al perimetro). Alcuni problemi da telefono potrebbero dipendere da come è stata fatta la copia: vanno verificati su un telefono vero prima di intervenire.
