# Giudizio sulle analisi A e B – [nome azienda]

Il giudizio si basa sulla copia salvata (home, cookie policy, cantina, contatti). Ho controllato HTML, testi e screenshot.

## Verifica delle affermazioni principali

### A
| Affermazione | Esito |
|---|---|
| Tre pulsanti "RISTORANTE" con `href=""` (righe 468, 579, 693 della home) | **Vera**: il pulsante c'è ma non porta da nessuna parte |
| Nessun link `tel:`/`mailto:` nelle pagine, l'unico `tel:` è nel widget Chaty | **Vera** |
| Email scritta "info [@] …" | **Vera** |
| "PRENOTA" porta a 4 destinazioni diverse (/prenota/ due volte nel menù, TheFork, /eventi-aziendali/, "Prenota con un click" nella Cantina) | **Vera** |
| Modulo con soli Nome/Email/Messaggio, segnaposto, "14 + 15 =", "Invia" | **Vera**: le etichette ci sono nell'HTML ma si vedono solo i segnaposto |
| La mappa in Contatti è l'immagine generica di Complianz e mostra un'altra zona (pianura con laghi) | **Vera**: si vede nello screenshot desktop, è un errore grave e poco evidente |
| Il banner cookie copre il primo schermo su telefono | **Vera** |
| H1 = "1975" ripetuto 3 volte, `<title>` buono | **Vera** |
| JSON-LD solo Organization/WebPage/WebSite | **Vera** |
| Loghi TheFork e TripAdvisor, nessun voto mostrato | **Vera** (TripAdvisor solo nella Cantina) |
| La meta description cita "Agriturismo" e "asporto", che nel testo non compaiono | **Vera** |
| Refusi RESTORANTE, preference, PIÚ, Guinnes, Weihnstephan | **Veri** |
| WhatsApp di Chaty su `web.whatsapp.com` (`is_use_web_version:1`) | **Vera**, e A la indica correttamente come ipotesi da verificare |
| Oltre 35 `et_animated` in home | **Vera** (circa 47) |
| Orari solo del ristorante | **Vera** |

Non ho trovato errori di fatto.

### B
| Affermazione | Esito |
|---|---|
| Screenshot home da telefono alto 16.000 px, con grandi vuoti | **Vera** |
| Nella parte alta "non c'è nessun pulsante" | **Imprecisa**: c'è il pulsante RISTORANTE, ma con `href=""`. B non si accorge del link vuoto |
| H1 "1975" ×3, title buono | **Vera** |
| Video YouTube bloccato dai cookie, esiste il placeholder `maxresdefault.webp` | **Vera** |
| Due voci "Prenota" nel menù, entrambe verso /prenota/ | **Vera** |
| "PRENOTA" di Eventi aziendali porta a /eventi-aziendali/ | **Vera** |
| Chaty con 5 canali, Telegram su un account personale "Leocapocc" | **Vera**: è un buon dettaglio |
| Nessun `tel:` fuori dal widget, email "info[@]" | **Vera** |
| Banner senza un "Accetta tutti" chiaro | **Vera** nella sostanza: il pulsante che accetta (`cmplz-accept`) si chiama "Statistiche anonime". Però B cita "Visualizza preferenze" mentre sul sito c'è scritto "preference", e così non segnala il refuso |
| Nessuna casella privacy nel modulo, link "privacy statement" `href="#"` | **Vera**: nel modulo non c'è consenso e il link è nascosto con il segnaposto `{title}` |
| Mappa: "su desktop un'immagine sfocata" | **Imprecisa**: non è sfocata. È la mappa di un'altra zona, e B non se ne accorge. Su telefono il riquadro bianco è vero |
| Contatti: "Mancano email, WhatsApp e orari" | **In parte falsa**: l'email c'è nel footer della stessa pagina (non cliccabile). WhatsApp e orari mancano davvero |
| Title della Cantina "la cantina - [nome azienda]" | **Vera** |
| Nessuna recensione, TripAdvisor solo come "Scrivi cosa pensi di noi" | **Vera** |
| "Quasi tutto il pubblico arriva da telefono" | **Non dimostrata**: B la presenta come un fatto |
| "Senza glutine solo come icona nel footer" | **Quasi vera**: nella Cantina c'è anche la birra senza glutine |

## Voti

| Criterio | A | B | Nota |
|---|---|---|---|
| 1. Correttezza | 5 | 4 | B ha 3-4 imprecisioni (mappa "sfocata", email "mancante", "nessun pulsante", citazione del banner) |
| 2. Concretezza | 5 | 4 | A cita righe, classi, URL e numeri. B è concreto ma aggiunge parti generiche (menù senza PDF, pacchetto degustazione, "miglior tariffa sul sito") |
| 3. Importanza | 4 | 4 | Entrambi puntano su prenota/contatto, modulo eventi, mobile e cookie. A trova i link vuoti e la mappa sbagliata, B il problema GDPR del modulo e la pagina cerimonie con capienze e prezzi |
| 4. Utilità pratica | 5 | 4 | A ha 5 priorità con cosa, perché e come verificarlo. B ha una lista di 10 voci con qualche sovrapposizione e ordini un po' incoerenti (priorità 5 "impatto alto" dopo la 4) |
| 5. Solidità delle motivazioni | 4 | 3 | A distingue fonti e ipotesi e adatta Baymard al caso piccolo. B afferma senza prove ("quasi tutto il pubblico da telefono", "quasi nessuno accetta i cookie") |
| 6. Sicurezza | 5 | 4 | A richiama esplicitamente la stessa evidenza tra accetta e rifiuta (Garante) e l'uso di recensioni vere. B chiede un "Accetta ben visibile" senza avvertire che rifiuto e accettazione devono avere pari evidenza, e questo può portare a un banner non conforme. Il consiglio sulla privacy invece è corretto |

## Problemi importanti trovati solo da A (verificati)
- I tre pulsanti "RISTORANTE" dell'hero hanno `href=""` e non portano da nessuna parte.
- In Contatti la mappa segnaposto mostra un'altra zona geografica, cosa che può fuorviare chi cerca il locale.
- Il PRENOTA della home porta a TheFork, sito esterno aperto in una nuova scheda, vicino alla sezione hotel: chi cerca una camera rischia di confondersi.
- Il WhatsApp del widget usa `web.whatsapp.com` invece di `wa.me`.
- La meta description promette "Agriturismo" e "asporto", ma nel sito non ci sono (B segnala solo l'asporto).
- Mancano dati strutturati Restaurant/Hotel con orari (B lo dice più brevemente).
- Refusi nella Cantina (Guinnes, Weihnstephan) e "Visualizza preference" nel banner.

## Problemi importanti trovati solo da B (verificati)
- Nel modulo contatti manca il consenso privacy e non esiste una privacy policy (il link del banner è `href="#"`): è un rischio di conformità GDPR.
- Il pulsante "accetta" del banner si chiama "Statistiche anonime" e quindi non si capisce cosa fa (B lo coglie in parte).
- Il widget Chaty ha 5 canali, e Telegram punta a un account personale ("Leocapocc").
- Il video YouTube è bloccato e mostra solo il riquadro grigio, che è il primo "contenuto" della home (A lo cita solo di passaggio).
- Manca una pagina cerimonie con capienze delle sale, foto degli allestimenti e prezzi indicativi.
- Il title della pagina Cantina è debole.

## Preferenza
A è più precisa: non ha errori di fatto e scopre problemi concreti che B non vede, come i link vuoti e la mappa di un'altra zona.
A dà anche un piano in 5 priorità con motivazioni misurate e un modo per verificare ogni intervento. B invece fa affermazioni gonfiate e ha qualche imprecisione.
B porta però due spunti validi che ad A mancano: il problema privacy/GDPR del modulo e l'account Telegram personale. Non bastano a ribaltare il giudizio.

PUNTEGGI A=5,5,4,5,4,5 B=4,4,4,4,3,4 PREFERENZA=A
