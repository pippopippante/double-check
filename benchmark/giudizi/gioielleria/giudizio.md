# Giudizio sulle analisi A e B – [nome azienda]

Punto di vista: il titolare del laboratorio, affiancato da un esperto severo. Ho controllato ogni affermazione importante sulla copia salvata (8 pagine: testo, HTML, screenshot).

## Verifica delle affermazioni principali

| Affermazione | Chi la fa | Esito |
|---|---|---|
| Nessun link `tel:` in nessuna pagina; numero ripetuto due volte nel footer | A, B | **Vero** (0 `tel:` in tutti gli HTML; footer con "[telefono]" ×2) |
| Nessun orario di apertura; indirizzo presentato come "SEDE LEGALE" | A, B | **Vero** |
| **L'email nel modulo contatti non è obbligatoria** | A ("l'email non è obbligatoria"), B ("Email e Telefono entrambi facoltativi… richiesta a cui è impossibile rispondere") | **Falso per entrambi.** Nell'HTML il campo email ha `wpcf7-validates-as-required` e `aria-required="true"`: il modulo non si invia senza email. Manca solo l'asterisco nell'etichetta (è un difetto minore di chiarezza, non un buco). B insiste di più sull'errore e ci costruisce sopra una priorità "Subito". |
| Mappa Google presente, ma cercata per nome ("[nome azienda]") | A | **Vero** (iframe `maps?q=Spoleto%20Gioielli` in `07-contatti.html`) |
| "In nessuna pagina ci sono… una mappa" | B | **Falso**: la mappa c'è nella pagina Contatti (nell'HTML; nello screenshot non si vede, probabilmente per il caricamento lazy o il blocco dei cookie) |
| Fotostoria = testo + login, nessun invito alla richiesta | A, B | **Vero** |
| Shop: 20 prodotti, 350–695 €, testi in inglese ("Add to cart", "Default sorting", "Your cart is currently empty", "Return to shop", "removed. Undo?") | A, B | **Vero** |
| Refuso "Citrinio" | A, B | **Vero** |
| Immagini prodotto con `alt=""` | A | **Vero** |
| Catalogo 2020: "ERROR: Set a Valid Document Source." | A, B | **Vero** |
| Gli altri cataloghi sono 2013 e 2015 | B (A dice "2013 e un terzo") | **Vero**: link a catalogo-2013/2015/2020. B più preciso. |
| Eventi fermi a Vicenza Oro gennaio 2025; post "Vicenza Oro 2023" con date "Marzo 2022" | A, B | **Vero** |
| `article:modified_time` della home: marzo 2023 | A | **Vero** (2023-03-08) |
| Sezione "ABOUT US" vuota | A, B | **Vero** (solo titolo, poi i tre "SFOGLIA IL CATALOGO") |
| Fiere settembre 2025 e Monaco febbraio 2026 citate solo nei blocchi FESR del footer; blocchi UE più alti del contenuto in carrello/contatti | B | **Vero** (screenshot contatti: Vicenza 05–09/09/2025, Inhorgenta 20–23/02/2026; footer UE lunghissimo) |
| Menu a 12 voci, SHOP 9ª, CONTATTI 10ª | B | **Vero** |
| Pagamento via Nexi XPay/CartaSì; plugin WPML, YITH Ajax Navigation, dFlip installati | B | **Vero** (presenti nell'HTML) |
| La pagina /negozio/ non ha hreflang en/de, le altre sì | B | **Vero** (negozio: solo it + x-default; home: it/en/de) |
| Nessuna meta description; schema solo WebPage/WebSite; titolo home ripete il marchio | A, B | **Vero** |
| Condizioni: recesso "esclusivamente" con raccomandata A/R, email/WhatsApp esclusi | A | **Vero** (art. 9) |
| Reso da spedire "entro e non oltre 48 ore" dall'autorizzazione; restituzione rifiutata senza codice | A | **Vero** (art. 9) |
| Foro competente "in via esclusiva il Foro di Caserta" | A | **Vero** (art. 12), azienda a Spoleto |
| Vizi palesi entro 15 giorni "a pena di decadenza"; "garanzie… fornite dal produttore"; difetti da comunicare entro due mesi con raccomandata | A | **Vero** (art. 6) |
| Premessa: "cataloghi prodotti di fornitori terzi"; funzioni inesistenti ("Archivio ordini – Wish List", "Invita un amico", "manuali di istruzioni", "prodotti sigillati"); newsletter legata alla registrazione; indirizzo senza numero civico | A | **Vero** |
| Nei Termini c'è "evasione entro 15 giorni… non oltre 60" e reso non assicurato a rischio del cliente | B | **Vero**, ma B lo tratta solo come problema di tono e non vede le clausole contrarie alla legge |

Le valutazioni legali di A (artt. 54, 57, 66-bis, garanzia biennale del venditore, eliminazione dell'onere di denuncia entro due mesi) sono corrette nella sostanza. Giusta anche la precisazione che 15 giorni lavorativi per recedere sono più favorevoli dei 14 di legge. A consiglia comunque di far rivedere il testo a un legale.

## Voti

| Criterio | A | B | Motivazione |
|---|---|---|---|
| 1. Correttezza | 4 | 3 | Tutti e due sbagliano sull'email "facoltativa". B aggiunge l'errore sulla mappa "assente" e costruisce un'azione urgente su un buco che non esiste. Per il resto sono molto accurati; B è anche più preciso sui cataloghi 2013/2015. |
| 2. Concretezza | 5 | 5 | Tutti e due citano elementi reali e verificabili. A cita clausole, `alt=""`, la query della mappa, `modified_time`. B cita il menu 12 voci, WPML/YITH/Nexi, gli hreflang dello shop, il footer FESR, i blocchi categoria su mobile. |
| 3. Importanza | 5 | 3 | Solo A individua le condizioni di vendita illegali (recesso solo per raccomandata, reso in 48 ore, foro di Caserta, garanzia scaricata sul produttore, "fornitori terzi"). Per un e-commerce da 350–700 € è il rischio più concreto e più economico da eliminare. B lo manca del tutto e anzi suggerisce solo di "scriverlo in positivo". Entrambi colgono il catalogo rotto, i segni di abbandono, i contatti deboli e la Fotostoria. |
| 4. Utilità pratica | 4 | 5 | B ha un piano più operativo ("Subito / 1 mese / 3 mesi"), con plugin già installati da usare, ordine della home proposto e carrello vuoto. A ha una tabella di priorità chiara ma è più lungo e accademico. Però una delle azioni "Subito" di B (rendere obbligatoria l'email) è inutile. |
| 5. Solidità delle motivazioni | 4 | 3 | A dichiara il livello di ogni prova e distingue le ipotesi (E) dai dati. Qualche percentuale Baymard è riferita al checkout e applicata un po' larga, ma è dichiarato. B afferma senza prove che "i clienti di gioielleria preferiscono di gran lunga WhatsApp", che Klarna/Scalapay sono "molto usati in gioielleria" e che "altrimenti molti non comprano". Sono affermazioni gonfiate. |
| 6. Sicurezza | 5 | 4 | A non dà consigli rischiosi, cita la direttiva Omnibus sulle recensioni e rimanda a un legale. B non dà consigli illegali, ma lascia online clausole contrarie al Codice del Consumo limitandosi a riformularne il tono. Consiglia poi di sfoltire i blocchi UE "se l'obbligo lo consente" (cauto, va bene) e di offrire la spedizione gratuita senza verificarne i costi. |

## Problemi importanti trovati solo da A (verificati)
- **Condizioni di vendita contrarie al Codice del Consumo**: recesso solo per raccomandata A/R, reso entro 48 ore, rifiuto dei resi senza codice di autorizzazione, foro esclusivo di Caserta, decadenza a 15 giorni per i vizi e garanzia "del produttore", onere di denuncia entro due mesi.
- **Incoerenze nei Termini** che minano la fiducia: "cataloghi di fornitori terzi" per un laboratorio artigiano, funzioni inesistenti, newsletter implicita nella registrazione, indirizzo senza civico.
- **Immagini prodotto senza testo alternativo** (`alt=""`).
- **La mappa cerca per nome e non per indirizzo.**
- La home è ferma dal 2023 (`modified_time`).

## Problemi importanti trovati solo da B (verificati)
- **Lo shop è nascosto**: SHOP è la 9ª voce di un menu da 12, in home non c'è nessun invito verso lo shop, CONTATTI è la 10ª voce.
- **Il footer FESR/UE è enorme** (più alto del contenuto in carrello e contatti) e contiene le uniche notizie aggiornate: le fiere di settembre 2025 e febbraio 2026.
- **La pagina /negozio/ non ha versioni en/de** negli hreflang, a differenza delle altre pagine.
- **Plugin già installati da sfruttare** (WPML per la traduzione, YITH per i filtri); con 20 articoli meglio una sola pagina invece di due (12 + 8).
- **Da telefono i blocchi Collane/Anelli/Bracciali/Orecchini occupano ognuno uno schermo**; il banner cookie copre la parte alta.

## Preferenza complessiva: A
A individua il problema più grave e meno visibile, cioè condizioni di vendita illegali che spaventano chi legge e espongono l'azienda, e lo documenta clausola per clausola in modo corretto.
B è più pratico e scova dettagli utili (shop nascosto, footer UE, hreflang), ma ha due errori di fatto (email, mappa) e affermazioni sul comportamento dei clienti non provate.
Per il titolare, il valore aggiunto di A sul rischio legale e sulla fiducia pesa più della migliore organizzazione di B.

PUNTEGGI A=4,5,5,4,4,5 B=3,5,3,5,3,4 PREFERENZA=A
