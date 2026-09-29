# Giudizio sulle tre analisi del sito [nome azienda]

*Punto di vista: il titolare di [nome azienda] affiancato da un esperto severo. Ogni affermazione importante è stata controllata sulla copia salvata (testi .txt, HTML, screenshot).*

## Verifiche fatte sui file

| Affermazione | Chi la fa | Esito |
|---|---|---|
| `<title>` = "Age Verification - " in tutte le 9 pagine | A, B, C | **Vero** (riga 25 di ogni HTML). |
| reCAPTCHA a immagini sulle schede prodotto, dal plugin PayPal (`isSingleProduct":"1"`) | A, B, C | **Vero** (01 desktop e telefono, 02 desktop; `01-prodotto.html` r. 1990). |
| Sul telefono il pulsante "Chat" copre il testo del popup età | A, B, C | **Vero** (`00-home-telefono.jpg`). |
| Blocco di banner ripetuto prima del contenuto su ogni pagina (Trustpilot, H1 "OFFERTISSIMA!", banner 1024×427, eShoppingAdvisor 235 px, banner B2B 1024×256, "Spedizione gratuita") | B, C | **Vero** (`00-home.html` r. 1162-1177, ripetuto). Ogni pagina ha due H1, i banner hanno `alt=""`. **A non lo vede.** |
| "OFFERTISSIMA!" senza un'offerta collegata | A | **Falso**: è un link a `/offerte-speciali/` seguito da un banner promozionale. |
| La home ha 25 / 26 / 28 novità | A / B / C | Sono **28**: solo C ha ragione. 10 [nome azienda] consecutivi: vero. |
| Meta description "oltre 3.000", testo "oltre 4.000"; "© 2015" e "© 2026" | A, B | **Vero**. |
| "6 pensieri su Home", "Avete il vov" senza risposta | A, B, C | **Vero**. |
| Registrazione obbligatoria per acquistare | A, B | **Vero** (condizioni, punto 1). C non ne parla. |
| Recesso: rimborso "entro 30 giorni lavorativi… escluse le spese di spedizione… D.Lgs 185/1999"; niente reso sui "super-sconto (dal 40%)" | B | **Vero** (condizioni r. 132 e 267). Sono clausole in contrasto con gli artt. 56-59 del Codice del Consumo. Solo B lo segnala. |
| Tono ostile: "non mi serve più… et simili", "PayPal ovviamente incassa…" | B | **Vero** (r. 269). |
| Disponibilità non caricata: "anche 1 milione di pezzi" | A, B | **Vero** (r. 122). |
| Solo "Ritiro con vostro corriere: € 0", nessun ritiro in negozio | A, B, C | **Vero** (r. 143). |
| Tariffe: 10 € fino a 2 kg, 12 € da 2 a 5 kg; UE da 30 €, USA da 65 €, Australia da 190 € | A, B, C | **Vero**. |
| Chat WhatsApp configurata con i dati d'esempio "John Doe", "Hello! I'm testing the Social Chat plugin" | A | **Vero** nella configurazione (`01-prodotto.html` r. 1867). Da verificare cosa veda il cliente. |
| Sidebar: prima voce "_ESAURITI (198)", regioni a (0), "Senza categoria", "PASQUA (94)" | A, B, C | **Vero**. Le regioni a 0 sono **6**, non nove come dice C. |
| Categoria Esauriti: "Champagne Mumm Magnum" con "Aggiungi al carrello" | B, C | **Vero** (`05-categoria.txt`). |
| Correlati: nelle 3 schede 1-2 correlati su 3 hanno "Leggi tutto" | C (B in parte) | **Vero** (Alexander, Cattier; Marzadro, Bertagnolli; Bulldog). |
| Correlati dell'"Antigelo per bipedi": Gin Oxley, Rum Flor de Caña, Gin Bulldog (tutti da 1 L) | A, B | **Vero**. |
| "Informazioni aggiuntive" contiene solo il peso (1,60 kg) | C | **Vero** (`01-prodotto.html` r. 1466). |
| Liste: 16 prodotti per pagina, ordinamento sì, filtri no | A, C | **Vero**: non c'è alcun widget filtro nelle pagine salvate. |
| Esclusive 2026 solo come flipbook PDF | A, B, C | **Vero** (una riga di testo, poi il plugin dFlip). |
| Apple Pay, Google Pay, PayPal "paga in 3 rate" sulla scheda | B, C | **Vero** (`applepay`, `googlepay`, `paylater` nell'HTML). |
| GA4 tramite GTM già installato | C | **Vero** (GTM-PMNTZS). |
| Banner B2B che porta a "my-account" senza spiegazioni | B, C | **Vero**. |
| Carrello con due avvisi in maiuscolo, titolo "Cart", carrello vuoto senza suggerimenti | A, B, C | **Vero**. |

## Valutazione di ciascuna analisi

### A
Ben scritta, pratica e ordinata. Dà percorsi precisi nelle impostazioni (WooCommerce → Account e privacy, Ritiro locale, PayPal Payments) e ha una tabella delle priorità chiara. È l'unica a scoprire nell'HTML la chat WhatsApp configurata con i dati di prova, e dà giustamente molto peso all'acquisto come ospite e al titolo delle pagine.
**Punti deboli:**
- Non si accorge del blocco di banner che, su ogni scheda, spinge prezzo e pulsante sotto la prima schermata del telefono. È un problema di esperienza d'uso centrale.
- Dice che "OFFERTISSIMA!" non porta a nessuna offerta, ma è un link.
- Sbaglia il conteggio delle novità (25 invece di 28).
- Parla di resi e "penali" senza accorgersi che le clausole di recesso sono illegittime.
- Proporre di trasformare la verifica età in una barra che non copre la pagina, per un sito di alcolici, è un consiglio da valutare con cautela.

### B
È l'analisi più completa sui problemi che contano. È l'unica a trovare le clausole di recesso non conformi al Codice del Consumo, citate testualmente e tutte verificate: rimborso in 30 giorni lavorativi, spese di spedizione escluse, legge del 1999 superata, niente reso sui prodotti in super-sconto. Questo è un rischio legale e insieme un freno alla fiducia. Coglie anche il blocco di banner, la registrazione obbligatoria, il tono diffidente delle condizioni, l'incoerenza di prodotti esauriti ma acquistabili e il B2B senza spiegazioni. Rimanda a un legale, quindi i consigli sono prudenti.
**Punti deboli:**
- È lunga e carica di citazioni (Deloitte, Spiegel "+270%", Ariely) che al titolare servono poco. Alcuni collegamenti sono tirati, come l'allegato I della direttiva applicato alla disponibilità.
- Non chiede i filtri nelle categorie, che per 4.000 articoli sono essenziali.
- Conta 26 novità invece di 28.
- La sezione "Cosa fare" è buona, ma l'ordine d'intervento è meno immediato di quello di A.

### C
È la più attenta all'esperienza di chi naviga:
- la testata che sul telefono spinge il prodotto sotto la piega;
- i correlati esauriti in tutte e tre le schede;
- gli attributi che contengono solo il peso, quindi niente filtri possibili;
- le 1.346 "novità" che non sono novità;
- gli esauriti da mostrare dopo i disponibili;
- i due H1;
- il campo fattura segnato come "facoltativo" ma di fatto obbligatorio.

Nota correttamente che GA4 è già installato, quindi i risultati si possono misurare. Dichiara con onestà i limiti degli screenshot.
**Punti deboli:**
- Non parla mai della registrazione obbligatoria, uno dei principali motivi di abbandono che si toglie con un'impostazione.
- Non vede il problema legale del recesso.
- Minimizza il titolo "Age Verification" affermando senza prove che "di solito Age Gate esclude i bot".
- Scrive "nove regioni a 0" invece di sei.

## Voti (1-5)

| Criterio | A | B | C |
|---|---|---|---|
| 1. Correttezza | 4 | 4 | 4 |
| 2. Concretezza | 5 | 5 | 5 |
| 3. Importanza | 4 | 5 | 3 |
| 4. Utilità pratica | 5 | 4 | 4 |
| 5. Solidità delle motivazioni | 4 | 4 | 4 |
| 6. Sicurezza | 4 | 5 | 5 |
| 7. Esperienza d'uso | 4 | 4 | 5 |

## Problemi importanti trovati da una sola analisi (verificati)

**Solo A**
- La chat WhatsApp è configurata con i dati d'esempio del plugin ("John Doe", "Support", "Hello! I'm testing the Social Chat plugin…"). Se il cliente li vede, è un segnale di trascuratezza proprio nel canale di contatto principale.
- Il potenziale delle "Strenne" (458 articoli) come leva da ottobre in poi.

**Solo B**
- Le clausole di recesso sono illegittime: rimborso in 30 giorni lavorativi, spese di consegna escluse, riferimento al D.Lgs 185/1999 abrogato, niente reso sui prodotti scontati dal 40%. Il rischio è legale oltre che di fiducia.
- Il tono diffidente delle condizioni ("non mi serve più… et simili", "PayPal ovviamente incassa le sue %").
- Le categorie interne ("_NOVITA", "1 Lt...") sono visibili nella scheda prodotto. Valle d'Aosta risulta a 0 prodotti mentre in home ci sono due grappe valdostane.

**Solo C**
- Gli attributi dei prodotti contengono solo il peso: prima dei filtri bisogna popolarli. I filtri li chiede anche A, ma senza individuare questa causa.
- In tutte e tre le schede i correlati sono in maggioranza esauriti.
- Ci sono 1.346 prodotti nella categoria "novità".
- Negli elenchi gli esauriti sono mescolati ai disponibili.
- GA4/GTM è già attivo per misurare i risultati.

## Classifica

**B > A > C.**
- **B** è la prima perché, oltre ai problemi di conversione condivisi (titolo, reCAPTCHA, banner, acquisto come ospite, spedizione sulla scheda), è l'unica a segnalare un rischio legale concreto e verificato nelle condizioni di vendita.
- **A** è la più facile da mettere in pratica, con istruzioni precise e una scoperta unica (la chat di prova). Però non vede il blocco di banner e contiene qualche piccolo errore.
- **C** è la migliore sull'esperienza di navigazione e sui filtri, ma dimentica la registrazione obbligatoria e minimizza il titolo, due interventi a costo zero con grande impatto.

PUNTEGGI A=4,5,4,5,4,4,4 B=4,5,5,4,4,5,4 C=4,5,3,4,4,5,5 CLASSIFICA=B>A>C
