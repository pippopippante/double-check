# [nome azienda]: analisi del sito per portare più clienti

**Sito:** [sito] (copia salvata del 26/09/2026)
**Pagine analizzate:** Home, Cookie policy, La cantina (salvata come "chi-siamo"), Contatti. Per ognuna ho usato HTML, testo e screenshot desktop e telefono.

## Cosa fa l'azienda e cosa deve ottenere il sito

[nome azienda] è un'attività familiare aperta dal 1975 a San Giovanni di Baiano (Spoleto). Ha tre linee:
1. **ristorante e pizzeria**, con braceria e una cantina da oltre 200 etichette;
2. **hotel** con camere, piscina e colazione (codice CIN presente);
3. **eventi**: matrimoni, battesimi e comunioni, feste in musica, eventi aziendali, con 5 sale banchetti.

Per questo il sito deve portare tre tipi di "conversione":
- **prenotazione del tavolo** (oggi passa da TheFork o dal telefono);
- **prenotazione della camera** (dal menu "Prenota");
- **richiesta di preventivo per un evento**. È il cliente che vale di più: un matrimonio vale quanto centinaia di coperti.

Quasi tutto il pubblico arriva da telefono: persone di passaggio che cercano "ristorante/pizzeria Spoleto", turisti che cercano un hotel, famiglie che cercano una sala per una cerimonia.

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|-------|--------------|
| 1 | **Parte alta della home (hero + barra orari/contatti), soprattutto da telefono** | È la prima cosa che vede quasi ogni visitatore. Qui si decide se chiama, prenota o se ne va. |
| 2 | **Percorsi di prenotazione: tavolo (TheFork), camera ("Prenota"), telefono e WhatsApp** | È il punto in cui l'interesse diventa un cliente. Ogni ostacolo qui fa perdere prenotazioni. |
| 3 | **Pagina Contatti e modulo di richiesta** | È il canale per eventi e cerimonie e per chi ha domande. Oggi è il punto più debole. |
| 4 | **Sezioni eventi/cerimonie e segnali di fiducia (recensioni, foto, menù)** | Gli eventi sono il fatturato più alto per cliente. Chi sceglie dove festeggiare vuole prove: foto, recensioni, capienze. |

La pagina Cookie policy non conta per le conversioni. Il **banner cookie**, invece, sì: nasconde contenuti chiave (vedi sotto). La pagina Cantina è un buon contenuto di supporto e la uso come esempio al punto 4.

---

## 1. Parte alta della home

### Cosa si vede oggi
- **Desktop:** a sinistra un video del casale, al centro "1975 · Gusto, tradizione e innovazione", a destra una bistecca. Sotto c'è una barra con orari, telefono e indirizzo. Nella parte alta **non c'è nessun pulsante**: né "Prenota un tavolo", né "Prenota camera", né "Chiama".
- **Telefono:** lo screenshot è alto **16.000 px**. In apertura il banner cookie copre metà dello schermo. Dopo la barra orari ci sono **migliaia di pixel vuoti o bianchi** (riquadri video bloccati, sezioni che non compaiono).
- L'`<h1>` della pagina è solo **"1975"**, ripetuto 3 volte (una per ogni versione responsive). Il titolo della pagina (`<title>`) invece è buono: "Hotel, Ristorante, Pizzeria a Spoleto | Cucina tipica".
- Il video YouTube centrale è bloccato dal consenso cookie e mostra solo il riquadro grigio **"Fai clic per accettare i cookie marketing e abilitare questo contenuto"**. Si vede sia su desktop sia su telefono.
- Nella home salvata, su desktop, ci sono **grandi aree bianche**: sotto la pizzeria, fra la pizzeria e gli eventi, sotto gli eventi. I blocchi Matrimoni/Battesimi/Feste, Hotel/Camere/Sale/Piscina e Territorio ci sono nel testo ma non si vedono negli screenshot. Potrebbe essere l'effetto delle animazioni al passaggio (Divi) che non partono durante la cattura. Anche così, è un rischio concreto su telefoni lenti o con il blocco delle animazioni. Va verificato su dispositivi reali.

### Raccomandazioni (in ordine)
1. **Mettere 2-3 pulsanti d'azione nella parte alta**, visibili senza scorrere su telefono: **"Prenota un tavolo"** (TheFork), **"Prenota una camera"** e **"Chiama"** (`tel:[telefono]`). Su telefono conviene una **barra fissa in basso** con Chiama · WhatsApp · Prenota. Oggi la stessa funzione la svolge un widget Chaty flottante, poco evidente.
2. **Rifare l'H1** perché dica cosa siete e dove: ad esempio *"Hotel, Ristorante e Pizzeria a Spoleto dal 1975"*. Il "1975" resta come elemento grafico e l'H1 va tenuto unico.
3. **Togliere dalla home il video YouTube** bloccato dai cookie, oppure mostrare al suo posto una **foto con pulsante play** (il placeholder `maxresdefault.webp` esiste già). Sostituirlo con un video ospitato sul sito o con una galleria di foto. Un riquadro grigio con un testo sui cookie è il primo "contenuto" che molti visitatori vedono, ed è un pessimo biglietto da visita.
4. **Verificare ed eliminare gli spazi vuoti** su telefono: disattivare le animazioni d'ingresso da mobile e ridurre i blocchi che restano vuoti. La home da mobile deve stare in circa 5-6 schermate, non 20.
5. **Rendere cliccabili telefono, email e indirizzo** in tutta la barra orari e nel footer. Oggi il numero è testo semplice (nell'HTML non c'è nessun link `tel:` fuori dal widget), l'email è scritta "info[@]…" e non si clicca, e l'indirizzo non apre Google Maps.
6. **Banner cookie più compatto** su telefono, in una striscia in basso, con "Accetta" ben visibile. Oggi i pulsanti sono "Statistiche anonime / Nega / Visualizza preferenze" e **manca un "Accetta tutti" chiaro**. Così quasi nessuno accetta i cookie marketing, e mappa e video restano bloccati per tutti.

---

## 2. Percorsi di prenotazione (tavolo, camera, contatto rapido)

### Cosa si vede oggi
- Il menu ha **due voci "Prenota"**: una sotto "Hotel" e una di primo livello. Portano entrambe a `/prenota/`, quindi non è chiaro se si prenota una camera o un tavolo.
- La prenotazione del **tavolo** passa da **TheFork** (logo + "PRENOTA"), ma solo dal blocco pizzeria della home e dal fondo della pagina Cantina ("PRENOTA CON UN CLICK"). Nella parte alta e nella barra orari del ristorante non c'è.
- Il pulsante **"PRENOTA" nella sezione Eventi aziendali porta a `/eventi-aziendali/`**, cioè a un'altra pagina descrittiva e non a un modulo.
- Il widget Chaty ha già configurati **Telefono, WhatsApp ([telefono]), Instagram, Messenger e Telegram**. Cinque canali sono troppi. Telegram, poi, punta a un account personale ("Leocapocc"): va verificato che sia voluto.
- **L'asporto** è citato nella meta description ("pizza, asporto") ma sul sito non ci sono né un numero dedicato né un modo per ordinare.

### Raccomandazioni (in ordine)
1. **Separare con chiarezza i percorsi** nel menu e nei pulsanti:
   - "Prenota tavolo" → TheFork (widget integrato nella pagina, non solo link esterno);
   - "Prenota camera" → motore di prenotazione con date e ospiti (o link diretto a Booking/al booking engine). Il prezzo "miglior tariffa sul sito" va messo in evidenza;
   - "Richiedi preventivo evento" → modulo dedicato (vedi punto 3).
2. **Pulsante "Prenota tavolo" in ogni pagina ristorante/pizzeria/menù/cantina**, vicino agli orari.
3. **Pizza d'asporto:** aggiungere un blocco "Ordina la pizza d'asporto" con chiamata diretta o WhatsApp e gli orari dell'asporto. Se possibile, un ordine online semplice (anche solo un menù PDF + WhatsApp). È un canale di ricavo che oggi il sito non sfrutta.
4. **Ridurre il widget Chaty a 2 canali** (Chiama + WhatsApp) con testi chiari: "Chiamaci" e "Scrivici su WhatsApp". Mettere WhatsApp anche nella pagina Contatti e nel footer: oggi compare solo nel widget.
5. **Spiegare il motivo del link a TheFork** ("Prenota online, conferma immediata") e, se TheFork ha promozioni, mostrarle.

---

## 3. Pagina Contatti e modulo

### Cosa si vede oggi
- Indirizzo completo e "TEL. & FAX [telefono]". Il numero **non è cliccabile**. Mancano **email, WhatsApp e orari**.
- Il modulo chiede solo **Nome, Email, Messaggio** più un captcha matematico ("14 + 15 ="). **Non c'è un campo telefono**, né uno per il tipo di richiesta, la data o il numero di persone.
- **Manca la casella per il consenso privacy / un link all'informativa privacy.** Nel sito esiste solo la Cookie policy, e il link "privacy statement" del banner è `href="#"`. È un problema di conformità GDPR e anche di fiducia.
- La **mappa Google è bloccata** dal consenso cookie. Su desktop si vede un'immagine sfocata con il riquadro grigio, su telefono un **riquadro bianco vuoto** e poi uno spazio bianco enorme prima del footer.
- Su telefono, il banner cookie copre proprio il modulo.

### Raccomandazioni (in ordine)
1. **Rendere il modulo un vero modulo di richiesta:**
   - campi: Nome, **Telefono**, Email, **Tipo di richiesta** (Tavolo / Camera / Matrimonio / Battesimo-Comunione / Festa / Evento aziendale / Altro), **Data**, **Numero di persone**, Messaggio;
   - **casella privacy obbligatoria** con link a una **Privacy policy** vera (da creare);
   - captcha invisibile (reCAPTCHA è già caricato sul sito) al posto della somma;
   - dopo l'invio, un messaggio di conferma con i tempi di risposta ("Ti ricontattiamo entro 24 ore").
2. **Contatti tutti cliccabili**: Chiama, WhatsApp, Email e "Apri in Google Maps" come pulsanti grandi, adatti al tocco su telefono.
3. **Aggiungere gli orari** di ristorante, pizzeria e reception, e il giorno di chiusura (lunedì). Oggi sono solo in home.
4. **Sostituire la mappa bloccata** con un'immagine statica della posizione + pulsante "Indicazioni stradali" (link a Google Maps, che non ha bisogno di consenso cookie). In breve: come arrivare da Spoleto centro, dalla SS3 Flaminia, parcheggio ampio.
5. Togliere "FAX" (dà un'impressione datata) e correggere il refuso **"RESTORANTE UMBRO"** nel footer, che compare in tutte le pagine.

---

## 4. Eventi/cerimonie e segnali di fiducia

### Cosa si vede oggi
- In home, matrimoni, battesimi/comunioni, feste e news sono **4 riquadri con una riga di testo ciascuno** ("Presenti nei momenti importanti"). Negli screenshot desktop non si vedono.
- La sezione "Eventi aziendali" ha testo + "PRENOTA" (che porta a una pagina, non a una richiesta).
- **Nessuna recensione, voto o citazione** in tutto il sito. TripAdvisor compare solo come invito "Scrivi cosa pensi di noi" in fondo alla pagina Cantina.
- **Mancano capienze delle sale, foto degli allestimenti e fasce di prezzo** (almeno nelle pagine analizzate).
- La pagina **Cantina** è ricca: oltre 200 etichette, Sagrantino, Trebbiano Spoletino, produttori come Caprai, Lungarotti, Tabarrini, più le birre. È un bel contenuto, ma è quasi solo testo e ha un titolo SEO debole ("la cantina - [nome azienda]").
- Nei dati strutturati c'è solo lo schema generico di Yoast. Non c'è markup `Restaurant`/`Hotel` con orari, telefono e rating.

### Raccomandazioni (in ordine)
1. **Pagina/sezione "Cerimonie ed eventi"** con per ogni tipo di evento:
   - foto reali di sale e allestimenti;
   - capienza delle 5 sale e la piscina come location per aperitivi;
   - 2-3 menù di esempio con "prezzi a partire da";
   - pulsante **"Richiedi un preventivo"** che apre il modulo con il tipo di evento già selezionato.
2. **Mostrare le recensioni:** voto medio TripAdvisor/Google/TheFork e 3-4 recensioni brevi in home e nelle pagine eventi. Aggiungere un **badge "Dal 1975 – gestione familiare"** vicino ai pulsanti di prenotazione. Il valore della storia familiare oggi c'è, ma è nascosto nel testo.
3. **Menù sempre aggiornato e leggibile da telefono** (pagina HTML, non solo PDF), con i piatti senza glutine segnalati. I "Prodotti senza glutine" sono un punto di forza che oggi compare solo come icona nel footer.
4. **Dati strutturati** `Restaurant` + `Hotel` (o `LodgingBusiness`) con indirizzo, orari, telefono, `servesCuisine`, link al menù e alla prenotazione. **Titoli SEO** specifici, ad esempio "Cantina: oltre 200 vini umbri, Sagrantino di Montefalco | [nome azienda]".
5. Nella pagina Cantina: foto di bottiglie e cantina, e un pulsante "Prenota una cena con degustazione" (possibile pacchetto).

---

## Priorità riassunte

| Priorità | Intervento | Impegno | Impatto atteso |
|---|---|---|---|
| 1 | Pulsanti Prenota tavolo / Prenota camera / Chiama nella parte alta + barra fissa su telefono | Basso | Alto |
| 2 | Telefono, email e WhatsApp cliccabili ovunque; indirizzo con link a Maps | Molto basso | Alto |
| 3 | Modulo contatti con telefono, tipo di richiesta, data, persone + privacy | Basso | Alto (eventi) |
| 4 | Togliere/sostituire video e mappa bloccati dai cookie; banner con "Accetta" chiaro | Basso | Medio-alto |
| 5 | Eliminare gli spazi vuoti in home da telefono (animazioni) | Medio | Alto |
| 6 | Separare i "Prenota" nel menu; il "Prenota" di Eventi apre il preventivo | Basso | Medio |
| 7 | Pagina cerimonie con foto, capienze, menù e prezzi indicativi | Medio | Alto (valore per cliente) |
| 8 | Recensioni in pagina + dati strutturati + H1 e title migliori | Medio | Medio |
| 9 | Blocco pizza d'asporto con ordine via telefono/WhatsApp | Basso | Medio |
| 10 | Privacy policy vera, refusi ("RESTORANTE"), via il FAX | Molto basso | Fiducia/conformità |

## Limiti dell'analisi
- Nella copia c'erano solo 4 pagine. **Prenota, Hotel, Camere, Menù, Pizzeria e le pagine eventi non erano disponibili**, quindi non ho potuto valutare il motore di prenotazione camere né il menù. Le raccomandazioni su questi punti si basano solo su quello che si vede da home e navigazione.
- Le grandi aree vuote negli screenshot potrebbero dipendere in parte dalla cattura automatica (animazioni non partite). Vanno verificate su telefoni reali prima di intervenire.
