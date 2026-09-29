# [nome azienda]: analisi del sito e raccomandazioni

Sito: [sito] (copia salvata del 26/09/2026: home, contatti, "la cantina", cookie policy).
Chi è l'azienda: **hotel + ristorante + pizzeria + sale per banchetti ed eventi** (matrimoni, battesimi/comunioni, feste, eventi aziendali), gestione familiare dal 1975, a San Giovanni di Baiano (Spoleto).

**Cosa porta clienti a quest'azienda**: prenotazioni di tavoli (ristorante/pizzeria), prenotazioni di camere e **richieste di preventivo per eventi e cerimonie**. Queste ultime sono poche ma valgono molto per ciascun cliente. Chi visita il sito vuole di solito una di tre cose: *mangiare qui* (orari, menù, prenotare, come arrivare), *dormire qui* (camere, prezzi/disponibilità) oppure *organizzare un evento* (sale, capienza, contatto). Il sito funziona se ognuna di queste persone arriva all'azione giusta in pochi tocchi, soprattutto dal telefono.

> Nota sul metodo: la pagina salvata come "02-chi-siamo" in realtà è la pagina **La cantina** (`/la-cantina/`). Pagine come `/prenota/`, `/menu`, `/hotel/`, `/matrimoni/` ed `/eventi-aziendali/` non sono nella copia: dove ne parlo, ragiono solo sui link che portano lì e non su come sono fatte. Negli screenshot molte sezioni della home risultano **vuote** (grandi spazi bianchi): l'HTML mostra che sono elementi con animazione allo scorrimento (classe `et_animated`, oltre 35 in home) che nella fotografia non si sono attivati. Un visitatore vero di solito li vede, ma lo tratto comunque come un rischio (punto 3).

---

## 1. Le parti più importanti e perché le ho scelte

| # | Parte | Perché conta per l'obiettivo |
|---|---|---|
| A | **Il percorso "Prenota / Contatta"** (pulsanti PRENOTA, telefono, WhatsApp, e-mail, TheFork) | È il punto in cui la visita diventa cliente. Oggi è sparso in 5 canali diversi, alcuni non cliccabili e alcuni che portano nel posto sbagliato. |
| B | **La pagina Contatti e il modulo di richiesta** | È l'unico modulo del sito ed è dove arrivano le richieste più preziose (eventi, gruppi, camere). Sulla mappa si vede un'immagine che non c'entra. |
| C | **La home, soprattutto su telefono** | È la pagina che smista tre pubblici diversi (tavolo, camera, evento). Su mobile il banner dei cookie copre lo schermo, i pulsanti principali non portano da nessuna parte e parte del contenuto dipende da animazioni. |
| D | **Come l'azienda appare su Google e la fiducia** (dati strutturati, recensioni, mappa) | Un ristorante-hotel locale trova gran parte dei clienti con ricerche tipo "ristorante Spoleto" o "hotel con piscina Spoleto". Il sito non aiuta Google a capire orari e categoria e non mostra le recensioni che ha. |

Ho escluso la cookie policy (serve per legge, non vende) e ho trattato la pagina Cantina solo di passaggio: è buona come contenuto e ha già un pulsante di prenotazione.

---

## 2. Cosa ho trovato nei file (problemi specifici)

Li elenco prima delle raccomandazioni perché sono concreti e verificabili.

1. **I tre pulsanti principali della home non portano da nessuna parte.** Nelle tre diapositive iniziali ("DAL 1975") c'è un pulsante "RISTORANTE" con `href=""` (`00-home.html` righe 468, 579, 693): cliccandolo si ricarica la home.
2. **Il telefono non è cliccabile nel testo della pagina.** "[telefono]" compare in home (riquadro orari), nel footer di ogni pagina e in Contatti, ma senza link `tel:`. L'unico `tel:` è dentro il widget flottante Chaty. Chi è sul telefono deve copiare il numero a mano. Il numero è anche scritto tutto attaccato ("[telefono]") e quindi è difficile da leggere e da dettare.
3. **L'e-mail non è cliccabile** ed è scritta "[email]": su mobile va ricopiata correggendo la chiocciola.
4. **"PRENOTA" significa quattro cose diverse**:
   - nel menù in alto: `/prenota/` (compare due volte, anche sotto HOTEL; non si capisce se serve a prenotare un tavolo o una camera);
   - nella sezione pizzeria/hotel della home: **TheFork** (sito esterno, si apre in un'altra scheda);
   - nella sezione "organizza i tuoi meeting aziendali": `/eventi-aziendali/`, cioè una pagina descrittiva e non un modulo;
   - sulla pagina Cantina: "PRENOTA CON UN CLICK".
   Chi vuole organizzare un evento aziendale e clicca "PRENOTA" non prenota nulla. Chi vuole una camera e clicca il PRENOTA vicino all'hotel rischia di finire su TheFork, che serve per i tavoli.
5. **Il modulo Contatti è generico**: solo Nome, E-mail e Messaggio, senza telefono, data, numero di persone o tipo di richiesta. Le etichette sono solo segnaposto dentro i campi, c'è un controllo "14 + 15 =" senza spiegazione e il pulsante dice "INVIA". Per una richiesta di matrimonio o di banchetto costringe a ricevere una prima mail e poi a fare altri giri di domande.
6. **La mappa in Contatti mostra una zona che non è Spoleto.** Finché non si accettano i cookie di marketing, al posto di Google Maps compare l'immagine standard del plugin dei cookie (`complianz-gdpr/assets/images/placeholders/google-maps-minimal-1280x920.jpg`): una mappa generica di pianura con laghi, con sopra la scritta "Fai clic per accettare i cookie marketing". Lo stesso succede col video YouTube in home. Il banner offre "Statistiche anonime / Nega / Visualizza preference" e non ha un modo diretto per sbloccare la mappa, quindi è probabile che la maggior parte dei visitatori veda la mappa sbagliata (ipotesi: non ho i dati sulle scelte di consenso).
7. **Su telefono il banner dei cookie copre gran parte del primo schermo** (screenshot `00-home-telefono.jpg` e `03-contatti-telefono.jpg`: copre titolo, indirizzo e modulo).
8. **Il titolo principale (H1) della home è "1975"**, ripetuto tre volte (righe 447, 558, 672). Non dice cosa è il posto né dove si trova. Il `<title>` invece è buono ("Hotel, Ristorante, Pizzeria a Spoleto | Cucina tipica | [nome azienda]").
9. **Nessun dato strutturato da attività locale**: nel JSON-LD c'è solo `Organization`/`WebPage`/`WebSite` e mancano `Restaurant`, `Hotel` e `openingHoursSpecification`.
10. **Le recensioni ci sono ma non si vedono.** Il sito ha i loghi TheFork e TripAdvisor e il pulsante "SCRIVI COSA PENSI DI NOI", ma non mostra nessun voto, numero di recensioni o frase di clienti.
11. **Promesse che il sito non mantiene**: la meta description parla di "Agriturismo" e di "asporto", ma nel testo visibile della home l'asporto non compare mai: chi vuole ordinare una pizza da portare via non trova né come né quando farlo.
12. **Refusi ripetuti su tutte le pagine**: "RESTORANTE UMBRO" nel footer dei servizi, "Visualizza preference" nel banner, "SCOPRI DI PIÚ" con l'accento sbagliato (Ù).
13. **Il WhatsApp del widget usa `web.whatsapp.com`** (`is_use_web_version: 1`). Da computer va bene. Il link consigliato da WhatsApp è `wa.me/<numero>`, che apre l'app sul telefono. Da verificare con un test reale (ipotesi E).
14. **Nel riquadro orari mancano gli orari della pizzeria e gli orari/check-in dell'hotel**: c'è solo "RISTORANTE". Non si capisce se la pizzeria segue gli stessi orari.

---

## 3. Raccomandazioni, in ordine di priorità

Ordine = impatto atteso × affidabilità della prova × facilità.

### Priorità 1: Rendere prenotare e contattare immediato e senza ambiguità (parte A)

**Cosa**:
- Rendere cliccabili **ovunque** il telefono (`<a href="tel:[telefono]">[telefono]</a>`, scritto con gli spazi) e l'e-mail (`mailto:`). Su mobile aggiungere una barra fissa in basso con tre pulsanti: **Chiama · WhatsApp · Prenota**, al posto dell'attuale bolla flottante o insieme a essa.
- Sostituire l'unico "PRENOTA" con **tre azioni con nomi espliciti**, sempre uguali in tutto il sito:
  - **"Prenota un tavolo"** → TheFork (o il sistema scelto), valido per ristorante, pizzeria e cantina;
  - **"Camere: verifica disponibilità"** → booking engine, se c'è, oppure il modulo al punto 2 con le date;
  - **"Richiedi un preventivo per il tuo evento"** → modulo eventi (punto 2), da matrimoni, battesimi, feste e meeting aziendali.
- Correggere i tre pulsanti "RISTORANTE" con `href=""` nella home: farli diventare "Prenota un tavolo" o puntarli a `/ristorante/`.
- Cambiare il link del widget WhatsApp in `https://wa.me/[telefono]`, con un messaggio già scritto tipo "Ciao, vorrei informazioni per…".

**Perché**: il testo del pulsante deve dire cosa succede, non un generico "Invia"/"Continua" (convenzione NN/g, livello B: [nngroup.com/articles/how-users-read-on-the-web](https://www.nngroup.com/articles/how-users-read-on-the-web/), dal pacchetto testi-web). Per gli hotel, Baymard ha osservato che quasi tutti gli utenti cercano subito la funzione di prenotazione nella home e si irritano anche per ritardi di pochi secondi ([baymard.com/blog/travel-accommodations-booking-search](https://baymard.com/blog/travel-accommodations-booking-search), livello B). Il resto viene dai file del sito (problemi 1-4, 13).
**Vale per noi?**: sì. Il pubblico è misto (tavolo/camera/evento), quindi un solo "PRENOTA" è per forza ambiguo. Lo studio Baymard riguarda grandi hotel e OTA: per un hotel piccolo senza booking engine basta adattarlo con un pulsante evidente "Verifica disponibilità" che apre un modulo con le date.
**Come verificarlo**: contare prima e dopo (1-2 mesi) i clic su `tel:`, `wa.me`, TheFork e gli invii del modulo, con eventi analytics o almeno chiedendo ai clienti "come ci avete trovato/contattato". Con questi volumi un A/B test non darebbe risultati affidabili: si confronta il prima con il dopo.

### Priorità 2: Un modulo "Richiedi preventivo evento / camere" fatto per chi lo compila (parte B)

**Cosa**: in Contatti (e in fondo a ogni pagina evento) mettere un modulo breve con **etichette visibili sopra i campi**:
1. Tipo di richiesta (menu a tendina: Tavolo per gruppi · Camera · Matrimonio · Battesimo/Comunione · Festa/compleanno · Evento aziendale · Altro)
2. Data (anche indicativa), `type="date"`
3. Numero di persone (o di notti per le camere)
4. Nome
5. Telefono **o** e-mail (almeno uno dei due: per un evento molti preferiscono essere richiamati)
6. Messaggio (facoltativo)

Il pulsante deve dire **"Invia la richiesta"**. Sotto va scritto cosa succede dopo, per esempio "Ti rispondiamo entro 24 ore; per urgenze chiama lo [telefono]" (il tempo va deciso dalla struttura: deve essere una promessa che riescono a mantenere). Se il calcolo "14 + 15" serve contro lo spam, meglio un campo nascosto antispam o reCAPTCHA invisibile (reCAPTCHA è già tra i servizi dichiarati nella cookie policy). Se si tiene il calcolo, va scritto per esteso ("Quanto fa 14 + 15? (controllo antispam)").

**Perché**: NN/g consiglia moduli brevi, etichette sopra i campi invece del testo segnaposto, una sola colonna e i campi facoltativi indicati chiaramente ([nngroup.com/articles/web-form-design](https://www.nngroup.com/articles/web-form-design/), livello B). Chiedere data, persone e tipo già nella prima richiesta è un'ipotesi (E): toglie uno o due scambi di mail prima del preventivo, cioè il momento in cui chi organizza un evento contatta anche la concorrenza.
**Vale per noi?**: sì. Il modulo attuale è l'unico punto scritto per le richieste di valore più alto (5 sale banchetti, piscina, matrimoni). I campi in più vanno bene solo se servono davvero a preparare il preventivo: niente campi "per completezza".
**Come verificarlo**: numero di richieste al mese e percentuale di richieste a cui si può rispondere subito con un preventivo, senza dover chiedere altri dati.

### Priorità 3: Home e mobile, far vedere subito cosa è il posto e cosa si può fare (parte C)

**Cosa**:
- **Primo schermo**: al posto di "1975" come H1 usare un titolo che dica cosa e dove, per esempio "Hotel, Ristorante e Pizzeria a Spoleto, dal 1975", e sotto **le tre azioni** della priorità 1. Il riquadro con orari, telefono e indirizzo già presente è una buona idea: va tenuto, rendendo cliccabili telefono e indirizzo (link a Google Maps) e aggiungendo gli orari della pizzeria e check-in/check-out dell'hotel.
- **Banner dei cookie su mobile**: ridurlo a una striscia in basso che non copra titolo e pulsanti e correggere "preference" → "preferenze". Va mantenuta la scelta libera tra accettare e rifiutare, con la stessa evidenza, come chiedono le linee guida del Garante: niente trucchi per far accettare.
- **Animazioni allo scorrimento**: toglierle da testi e pulsanti (orari, "Scopri di più", PRENOTA) e lasciarle al massimo sulle foto. Se possibile, farle partire una sola volta.
- **Sezioni della home in ordine di valore**: Ristorante/Pizzeria → Hotel (camere, piscina) → Eventi e cerimonie (con il pulsante "Richiedi un preventivo", non "PRENOTA" verso una pagina descrittiva) → Territorio.
- Se l'asporto esiste davvero: una riga "Pizza da asporto: chiama lo [telefono] (orari…)". Se non esiste più, toglierlo dalla meta description.

**Perché**: NN/g ha osservato che le animazioni allo scorrimento sui testi fanno aspettare gli utenti, li spazientiscono e danno l'impressione che il sito sia lento; consiglia di usarle solo per contenuti secondari e una sola volta ([nngroup.com/articles/scroll-animations](https://www.nngroup.com/articles/scroll-animations/), livello B). Gli utenti scorrono la pagina e leggono circa il 20-28% delle parole: titoli e primi elementi fanno quasi tutto il lavoro ([nngroup.com/articles/how-users-read-on-the-web](https://www.nngroup.com/articles/how-users-read-on-the-web/), livello B). Il resto viene dai file (problemi 1, 7, 8, 11, 14, screenshot home telefono).
**Vale per noi?**: sì. Il sito è in gran parte vetrina e chi arriva da telefono cerca soprattutto orari, telefono e come prenotare. Il fatto che negli screenshot le sezioni risultino vuote dimostra che il contenuto dipende da JavaScript e dallo scorrimento.
**Come verificarlo**: frequenza di rimbalzo e profondità di scorrimento su mobile prima e dopo, clic sulle tre azioni del primo schermo, e un test pratico: cinque persone col telefono a cui si chiede di "prenotare un tavolo per sabato sera" o "chiedere un preventivo per una comunione", cronometrando.

### Priorità 4: Mappa, Google e recensioni (parte D)

**Cosa**:
- **Mappa**: sostituire l'immagine di mappa generica (che mostra un'altra zona) con un'**immagine statica della vera posizione** o una foto dell'ingresso, più un pulsante **"Apri le indicazioni in Google Maps"** (semplice link `https://www.google.com/maps/dir/?api=1&destination=...`, che non richiede consenso ai cookie perché non incorpora nulla). Aggiungere 2 righe su come arrivare: da Spoleto centro, dall'uscita della superstrada, parcheggio ampio.
- **Dati strutturati**: aggiungere JSON-LD `Restaurant` (con `servesCuisine`, `menu`, `openingHoursSpecification` inclusa la chiusura del lunedì e dei pranzi di martedì e mercoledì) e `Hotel`/`LodgingBusiness`, con indirizzo, telefono e coordinate. Controllare che orari e dati siano identici sul profilo Google Business.
- **Recensioni visibili**: mostrare in home il voto e il numero di recensioni TheFork/TripAdvisor/Google, con link alla fonte, e 2-3 frasi vere di clienti (una su ristorante, una su camere, una su un evento). Solo recensioni reali e tutte collegate alla fonte, senza selezionare solo quelle da 5 stelle in modo ingannevole.

**Perché**: Google indica che i dati strutturati `LocalBusiness` (con il sottotipo più specifico, per esempio Restaurant o Hotel) servono a mostrare orari e informazioni nei risultati di Ricerca e Maps ([developers.google.com/search/docs/appearance/structured-data/local-business](https://developers.google.com/search/docs/appearance/structured-data/local-business), livello B, documentazione ufficiale). Google afferma anche che le attività con informazioni complete e corrette hanno più probabilità di comparire nei risultati locali, che dipendono da pertinenza, distanza e notorietà ([support.google.com/business/answer/7091](https://support.google.com/business/answer/7091), livello B). Che mostrare le recensioni aumenti le prenotazioni per *questo* locale è un'ipotesi (E): non ho aperto studi specifici sulla ristorazione in questa sessione.
**Vale per noi?**: sì per mappa e dati strutturati: il locale è in frazione (San Giovanni di Baiano), non in centro, quindi "come arrivare" conta più del solito. Per le recensioni vale se i voti sono buoni: se non lo sono, prima si lavora sul servizio.
**Come verificarlo**: Google Search Console (ricerche locali, clic) e statistiche del profilo Google Business (richieste di indicazioni, chiamate), confrontando prima e dopo. Test dei dati strutturati con lo strumento "Risultati multimediali" di Google.

### Priorità 5: Pulizia e rifiniture (rapide, basso rischio)

- Correggere "RESTORANTE" → "RISTORANTE", "preference" → "preferenze", "PIÚ" → "PIÙ" (template comune: si corregge una volta per tutte le pagine).
- Numero di telefono formattato "[telefono]" ovunque. "TEL. & FAX" → "Telefono" (il fax non serve a chi cerca un ristorante).
- **Pagina Cantina**: è un bel contenuto (oltre 200 etichette, Sagrantino, Trebbiano Spoletino). Due aggiunte: una frase di abbinamento con i piatti della casa e il pulsante "Prenota un tavolo" in alto, non solo in fondo. Correggere "Guinnes" → "Guinness" e "Weihnstephan" → "Weihenstephaner".
- Il blocco sui fondi POR FESR va tenuto (probabilmente è un obbligo del bando), ma in fondo al footer come adesso: non va spostato più in alto.

---

## 4. Riepilogo priorità

| Priorità | Intervento | Sforzo | Impatto atteso |
|---|---|---|---|
| 1 | Telefono/e-mail cliccabili, barra Chiama·WhatsApp·Prenota su mobile, tre "Prenota" con nomi chiari, pulsanti vuoti corretti | Basso | Alto |
| 2 | Modulo preventivo eventi/camere con data, persone, tipo e telefono | Basso-medio | Alto (sulle richieste di maggior valore) |
| 3 | Primo schermo della home, banner cookie su mobile, meno animazioni sui testi, asporto | Medio | Medio-alto |
| 4 | Mappa vera + indicazioni, dati strutturati Restaurant/Hotel, recensioni visibili | Medio | Medio |
| 5 | Refusi, formato del numero, pagina Cantina | Molto basso | Basso (fiducia) |

---

## 5. Limiti di questa analisi

Ho consultato 6 fonti esterne: NN/g sulla lettura web, sui moduli e sulle animazioni allo scorrimento, Baymard sulla prenotazione negli hotel, e la documentazione Google su dati strutturati e ranking locale. A queste si aggiunge l'analisi diretta dei file del sito (HTML, testi, screenshot).
**Non ho approfondito**:
- come sono fatte le pagine `/prenota/`, `/menu`, `/hotel/`, `/camere/` e le pagine eventi, che non sono nella copia. Il menù in particolare è decisivo per un ristorante (va controllato che non sia un PDF pesante e che abbia i prezzi);
- la velocità reale del sito (c'è un video `.mp4` nella parte alta della home e diversi plugin: servirebbe una misura con PageSpeed/Lighthouse);
- le versioni in inglese, spagnolo e francese (`/en/`, `/es/`, `/fr/`), importanti per i turisti stranieri dell'hotel;
- studi specifici sul comportamento di chi prenota ristoranti e cerimonie (per esempio quanto conta vedere il menù o le foto delle sale): le raccomandazioni che ne dipendono sono indicate come ipotesi (E).
