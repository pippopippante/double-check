# Giudizio sulle tre analisi del sito [sito]

Valutazione fatta come la farebbe il titolare della cantina, affiancato da un esperto severo. Ogni affermazione importante è stata controllata nella copia salvata (testi .txt, HTML, screenshot).

## Verifiche principali

| Affermazione | Chi | Esito |
|---|---|---|
| Il pulsante "Acquista" in home porta a `/negozio/` (00-home.html r. 2933), mentre il menu porta a `/shop/` | A, C | **Vero**. B dice che `/negozio/` è vuota, ma non si accorge che ci porta il pulsante principale della home. |
| `/negozio/` è vuota, ha titolo "Shop", è indicizzata (`index, follow`) e ha il canonical su se stessa | A, B, C | **Vero** (04-categoria.txt e .html, screenshot). |
| Il catalogo "Bottiglia singola" ha 15 vini | A | **Falso**: sono 14 (B e C dicono giusto). Errore piccolo. |
| Annate incoerenti: Araminto 2019 nell'URL e nella meta description ma 2020 in pagina; Pettinata 2022 nell'URL, nel title e nella meta ma 2024 in pagina; og:image del Soviano "2017" | A, B, C | **Vero**. C nota correttamente anche che la meta del Soviano è giusta (2021). |
| og:image "Araminto-Silver": probabile medaglia non raccontata | A | **Vero** (il nome del file c'è; che sia una medaglia è un'ipotesi ragionevole). |
| Correlati senza prezzo; sotto la Pettinata compaiono Araminto 2010 e Soviano 2005 da 100 € | A, B, C | **Vero**. |
| Titolo "Caratteristiche dei vigneti" ma sotto nulla sui vigneti | B, C | **Vero**. |
| Costo della spedizione sotto le 6 bottiglie mai indicato; §6.3 rimanda a `/guida-all'-acquisto` non linkata | A, B, C | **Vero**. |
| Termini §5.2 e §13.7: rimborso entro 30 giorni (per legge sono 14, art. 56 Cod. Consumo) | A | **Vero**, e solo A lo segnala. |
| Due §10.7 nei termini; 07 e 08 identici | A | **Vero**. |
| Venditore "[nome azienda]", sede a [indirizzo] (Gualdo Cattaneo), stessa P.IVA; recesso con raccomandata A/R; clausole su audiovisivi e software; 90 giorni | B | **Vero**. Il recesso non è "solo" per raccomandata: si può mandare anche un'email, che però va confermata con raccomandata o PEC entro 48 ore, quindi la sostanza regge. |
| Recensioni: lo stesso testo firmato sia da [nome] sia da [nome] | A | **Vero** (09-contatti.txt r. 160-169). È un errore di attribuzione vero e proprio, visto solo da A. |
| Recensioni ripetute nel carosello | A, B, C | **Vero**. |
| Tre URL per le degustazioni | — | Nella home ce ne sono in realtà **tre**: `/degustazioni/`, `/experiences/degustazioni/` e `/le-nostre-degustazioni/` (sul pulsante in alto). Tutte e tre le analisi ne vedono solo due. |
| "Punto vendita → Scopri di più" porta a `/degustazioni#punto-vendita` | A | **Vero**. |
| Nessuna mappa né link "Indicazioni" in Contatti | A (in modo netto), B ("visibile") | **Falso per A, in parte per B**. L'indirizzo è linkato a Google Maps sia nella pagina sia nel footer di ogni pagina, e c'è una mappa incorporata, bloccata però da iubenda finché non si danno i cookie (`suppressedsrc`). Il problema vero, cioè la mappa invisibile senza consenso, non lo nota nessuno. |
| Aggiungere `tel:` e WhatsApp nel footer | A | Sono **già presenti** (09-contatti.html r. 4853-4858): è un consiglio inutile. |
| Sul telefono il banner dei cookie copre il pulsante "Sì, ho più di 18 anni" | B | **Esagerato**: nello screenshot il "Sì" si vede ancora; il banner copre il "No" e il resto della schermata. La sovrapposizione in sé è vera. |
| Il mini-carrello in Contatti mostra 2 bottiglie ma un solo vino da 15 € | B | È coerente: subtotale €30, cioè due bottiglie dello stesso vino. Si può discutere se la quantità sia ben leggibile, ma non c'è nessun errore del sito. |
| Home con tre `<h1>` e schede prodotto con due; titolo della categoria "Bottiglia Singola Archivi" | C | **Vero**. |
| "Nasce nel Maggio del 2005" accanto a "da oltre trent'anni" | C | **Vero**, contraddizione vista solo da C. |
| Il sito è solo in italiano | C | **Falso**: la home linka `/en/` in più punti (c'è TranslatePress). A lo aveva visto (`/en/negozio/`). |
| Nessun modulo di contatto in Contatti | C | **Vero** (nell'HTML non c'è nessun `<form>`). |
| Titoli animati scritti lettera per lettera | B, C | **Vero** (lo si vede nei .txt). |
| Circa 84 fogli di stile e Font Awesome caricato due volte; `free-shipping.css` (Flexible Shipping) e `wt-smart-coupons` installati | A, B | **Vero**. |
| Refuso "nosta" e "©COPYRIGHT 2021" | A, B, C | **Vero**. |
| Verifica dell'età e banner dei cookie sovrapposti su tutte le pagine | A, B, C | **Vero**. |

## Giudizio per analisi

### A
È la più precisa sui problemi che hanno conseguenze legali o toccano la fiducia. Collega il pulsante "Acquista" alla pagina `/negozio/` vuota, con prova precisa (riga dell'HTML, robots, canonical). Trova il rimborso a 30 giorni contrario alla legge e la recensione attribuita a due persone diverse. Le priorità sono ordinate bene, con sforzo, impatto e modo di misurare. Le fonti sono classificate per affidabilità, e le ipotesi sono dichiarate come tali (E), senza gonfiarle.

Gli errori: 15 vini invece di 14; "nessuna mappa" quando l'indirizzo è già un link a Maps; il consiglio di aggiungere `tel:` e WhatsApp nel footer, dove ci sono già. Sull'esperienza d'uso del catalogo (filtri, pulsanti piccoli sul telefono, cosa succede dopo l'aggiunta al carrello) è più debole.

### B
È la più completa sull'esperienza di chi naviga e compra: filtri e descrizioni mancanti nel catalogo, pulsanti piccoli sul telefono, carosello senza "aggiungi al carrello", ritorno alla home dopo l'aggiunta, spazi vuoti, contrasto. Solo B trova l'incongruenza su chi vende ([nome azienda] / Gualdo Cattaneo) e le clausole copiate da un modello (audiovisivi, raccomandata). Le idee commerciali sono concrete: cartoni da 6, buono regalo per la degustazione, collegare i tre canali.

Però non vede che la pagina `/negozio/` vuota è proprio la destinazione del pulsante principale della home, e questo attenua il problema più grave del sito. Ci sono anche piccole esagerazioni (il "Sì" coperto, la quantità nel carrello, la mappa) e manca il rimborso a 30 giorni.

### C
Individua bene il problema numero uno ("Acquista" → pagina vuota, con prova `page-content` vuoto). Ha buoni dettagli tecnici e SEO verificati: `<h1>` multipli, "Archivi", classi `elementor-invisible`, 2005 contro "trent'anni". Sulle degustazioni le proposte sono concrete (link WhatsApp precompilato con il numero vero).

L'errore "sito solo in italiano" produce però un consiglio inutile (aggiungere l'inglese, che esiste già). La newsletter "assente" è discutibile, perché ci sono ancore `#newsletter`. Non vede le questioni legali dei termini (rimborso, venditore) né l'attribuzione sbagliata delle recensioni. La parte di esperienza d'uso è buona, ma meno ampia di quella di B.

**Sicurezza**: nessuna delle tre dà consigli dannosi o illegali. A e B raccomandano di far rivedere i termini da un professionista, e A tiene il controllo dell'età al checkout e alla consegna.

## Problemi importanti trovati da una sola analisi (verificati)

- **Solo A**:
  - rimborso del recesso entro 30 giorni (§5.2, §13.7), contro i 14 previsti dalla legge;
  - stesso testo di recensione firmato da [nome] e da [nome], un rischio per la credibilità e per la direttiva Omnibus;
  - `/negozio/` indicizzata con canonical su se stessa;
  - "Punto vendita" che porta alla pagina delle degustazioni;
  - immagine di anteprima "Araminto-Silver" che fa pensare a una medaglia non valorizzata.
- **Solo B**:
  - nei termini il venditore è "[nome azienda]" con sede a [indirizzo] (Gualdo Cattaneo), diversa dalla sede della cantina mostrata sul sito;
  - recesso da confermare con raccomandata A/R;
  - clausole su audiovisivi e software;
  - carosello della home senza "aggiungi al carrello";
  - pulsanti "Aggiungi al carrello" piccoli nella griglia sul telefono;
  - plugin dei coupon già installato, utile per collegare cantina e shop.
- **Solo C**:
  - contraddizione tra "nasce nel 2005" e "da oltre trent'anni";
  - tre `<h1>` in home e due nelle schede;
  - titolo della categoria "Bottiglia Singola Archivi";
  - nessun modulo di contatto o richiesta per le degustazioni;
  - le categorie WooCommerce (bianchi, rossi, spumanti, riserve) esistono già ma non si usano come filtri.
- **Nessuna delle tre**:
  - la mappa in Contatti resta vuota finché non si accettano i cookie;
  - in home c'è un terzo indirizzo per le degustazioni, `/le-nostre-degustazioni/`.

## Classifica

**A > B > C.** A collega con prove precise il guasto più grave (il pulsante "Acquista" che porta a una pagina vuota) e trova due problemi che nessun'altra vede e che espongono la cantina a rischi legali e di credibilità (rimborso a 30 giorni, recensione attribuita a due persone), con priorità chiare e misurabili; ha qualche errore minore (conteggio dei vini, mappa, footer). B è la migliore sull'esperienza d'uso e sulla trasparenza del venditore, ma non lega la pagina vuota al pulsante principale. C è solida e tecnica, ma l'errore sulla versione inglese e la mancanza di tutta la parte legale la mettono ultima.

PUNTEGGI A=4,5,5,5,4,5,4 B=4,5,4,4,4,5,5 C=4,5,5,4,4,5,4 CLASSIFICA=A>B>C
