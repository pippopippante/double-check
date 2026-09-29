# Analisi del sito [sito] [nome azienda] (Spoleto)

Fonte: copia salvata del sito del 26/09/2026 (10 pagine: HTML, testo, screenshot desktop e telefono). Il sito online non è stato visitato. Ricerca esterna: pacchetti di conoscenza verificati (Baymard, NN/g, Spiegel Research, Deloitte, normativa UE/IT) più 2 fonti aperte in questa sessione.

## Cosa fa l'azienda e cosa deve ottenere il sito

[nome azienda] è una cantina di Spoleto (dal 2005, Trebbiano Spoletino, Grechetto, Sangiovese; circa 15 etichette da 10 a 100 €). Con il sito guadagna in tre modi:
1. **vendita online** (negozio WooCommerce, spedizione gratuita da 6 bottiglie);
2. **visite in cantina**: degustazioni su prenotazione e punto vendita (orari lun-sab);
3. **agriturismo** "Il Molino Antico" (su un sito esterno, ilmolinoantico.com).

Il risultato che conta è quindi: **ordini online + prenotazioni di degustazioni/visite + contatti** (telefono/WhatsApp).

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché |
|---|---|---|
| 1 | **Percorso verso il negozio** (pulsante "Acquista" in home → elenco vini) | È la porta d'ingresso delle vendite online. Se si rompe qui, nulla dopo conta. |
| 2 | **Pagina prodotto** (scheda vino + "Aggiungi al carrello") | È dove si decide di comprare. Secondo Baymard, scheda tecnica, spedizione e resi, recensioni e correlati sono le aree con più problemi gravi. |
| 3 | **Pagina Contatti / degustazioni / punto vendita** | È l'unica pagina fotografata che raccoglie visite, degustazioni e agriturismo, ed è l'unica con le recensioni. Per una cantina di territorio la visita è un canale di vendita a sé. |
| 4 | **Home: primo impatto, fiducia e condizioni di vendita** | È la pagina più visitata. Ci sono anche due sovrapposizioni in apertura, testi datati e condizioni di vendita non a norma, cose che toccano la fiducia su tutto il sito. |

Ho escluso carrello e checkout come area a sé perché nella copia c'è solo il mini-carrello: il checkout non è stato fotografato e quindi non l'ho analizzato.

---

## Raccomandazioni in ordine di priorità

### 1. [URGENTE] Il pulsante principale "Acquista" porta a una pagina di negozio vuota

**Cosa ho trovato**
- In home il pulsante "Acquista" (`00-home.html`, riga 2933) punta a `[sito]`.
- Quella pagina (`04-categoria`) **non contiene nessun prodotto**: dopo il menu c'è subito il footer (vedi `04-categoria-desktop.jpg`, e nell'HTML non c'è nessun elemento prodotto). Il titolo è "Shop - [nome azienda]" ed è **indicizzata** (`robots: index, follow`, canonical su /negozio/). Può quindi comparire anche su Google.
- Il menu invece porta "SHOP" a `/shop/`, un indirizzo diverso. Il catalogo vero si vede in `/categoria-prodotto/bottiglia-singola/` (`05-categoria`, 15 vini con prezzi e pulsanti).

Chi clicca l'invito più visibile del sito trova una pagina vuota: probabilmente lo interpreta come "negozio chiuso" o "sito rotto".

**Cosa**
- Collegare "Acquista" a `/shop/` (o alla categoria che mostra davvero i vini).
- Mettere un redirect 301 da `/negozio/` (e `/en/negozio/`) alla pagina negozio vera, oppure impostare in WooCommerce come "Pagina negozio" quella giusta.
- Controllare anche `/shop/` (non è nella copia): deve mostrare i vini.
- Poi cliccare uno per uno tutti i pulsanti che promettono di comprare ("Acquista", "Visita lo shop", "Acquista i nostri vini", "Torna allo shop").

**Perché**: tra i motivi di abbandono Baymard elenca il 17% per "errori o crash del sito" ([baymard.com/lists/cart-abandonment-rate](https://baymard.com/lists/cart-abandonment-rate), livello B). Una pagina vuota al posto del catalogo è un caso estremo dello stesso problema. Soprattutto, è un difetto oggettivo: la prova è il file stesso.
**Vale per noi?**: sì, tocca il pulsante più visibile della home.
**Come verificarlo**: in Analytics, visite a /negozio/ e frequenza di uscita da quella pagina prima/dopo; aggiunte al carrello da sessioni che iniziano in home.

---

### 2. Pagina prodotto: costo di spedizione, tempi e motivi per scegliere quel vino

**Cosa ho trovato** (`01/02/03-prodotto`)
- In alto c'è solo "Spedizione gratuita a partire da 6 bottiglie". **Quanto costa la spedizione con 1-5 bottiglie non è scritto** da nessuna parte nelle pagine fotografate. I Termini (§6.3) rimandano a `[sito]'-acquisto`, un indirizzo con apostrofo che non è linkato in nessun menu né footer.
- Tempi di consegna ("dal giorno stesso a 5 giorni lavorativi", Termini §6.2), metodi di pagamento e resi non compaiono vicino a "Aggiungi al carrello".
- La scheda è **solo tecnica** (vitigno, gradi, affinamento...). Non ci sono due righe che dicano a chi è adatto il vino o perché sceglierlo, né recensioni. Non si vedono premi, anche se l'immagine di anteprima del Grechetto si chiama `Araminto-Silver-Cantina-Colle-[nome azienda].png`: sembra esserci una medaglia che la pagina non racconta.
- Ci sono **annate incoerenti**:
  - la pagina Araminto mostra "2020", ma indirizzo e meta description (lo snippet di Google) dicono "2019";
  - La Pettinata mostra "2024", ma indirizzo, `<title>` e meta description dicono "2022";
  - l'anteprima del Soviano usa la foto "2017".
  Su Google e WhatsApp si vede un'annata, in pagina un'altra.
- I "Prodotti correlati" non mostrano il prezzo e hanno solo un'icona carrello senza testo. A volte propongono annate storiche da 100 € (Soviano 2005) accanto a un bianco da 15 €.

**Cosa**
1. Sotto il pulsante "Aggiungi al carrello" aggiungere un blocco fisso di 3 righe:
   - "Spedizione X € fino a 5 bottiglie, gratis da 6"
   - "Consegna in N giorni lavorativi" (il tempo reale)
   - "Pagamento con carta/PayPal/…, reso entro 14 giorni", con link a una pagina "Spedizioni e resi" leggibile. Questa pagina va linkata anche nel footer.
2. Nel carrello mostrare quanto manca alla spedizione gratuita ("Aggiungi 3 bottiglie per la spedizione gratuita"). Il plugin Flexible Shipping è già installato (`free-shipping.css`), quindi probabilmente basta attivare l'avviso.
3. Aggiungere 2-3 righe prima della scheda tecnica, fatti concreti e non slogan. Esempio: "Trebbiano Spoletino in purezza da vigne a [nome azienda], fresco e agrumato: per antipasti, pesce e cucina orientale". Poi medaglie e punteggi reali, se ci sono.
4. Correggere annate in indirizzi, title, meta description e immagini di anteprima. Quando si cambia l'indirizzo, mettere il redirect 301 dal vecchio.
5. Nei correlati mostrare prezzo e pulsante con testo. Proporre vini di fascia simile o complementari (es. rosso dopo bianco).
6. Raccogliere recensioni sui prodotti: email dopo la consegna, pubblicando anche quelle negative.

**Perché**
- Il 64% degli utenti cerca il costo di spedizione già nella pagina prodotto, prima di aggiungere al carrello ([Baymard](https://baymard.com/blog/show-shipping-costs-on-product-pages), B).
- I costi extra sono la prima causa di abbandono del checkout (40%); il 12% abbandona perché non vede il totale in anticipo ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B).
- Gli utenti leggono in media il 20-28% delle parole: la prima frase deve contenere ciò che decide l'acquisto ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B).
- Un prodotto con 5 recensioni ha una probabilità d'acquisto molto più alta di uno senza, con effetto maggiore sui prodotti più cari ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C).
- Soglia "gratis": le persone reagiscono al "gratis" in modo sproporzionato ([Shampanier, Mazar, Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254), C, esperimenti di laboratorio). La soglia di 6 bottiglie è già un buon punto di leva, ma solo se si vede quanto si risparmia.

**Vale per noi?**: sì. Il vino si compra spesso in più bottiglie, quindi la soglia di 6 pesa molto sulla decisione. Chi ordina 1-2 bottiglie deve conoscere il costo prima, non alla cassa.
**Come verificarlo**: tasso di aggiunta al carrello per pagina prodotto; percentuale di carrelli con almeno 6 bottiglie; valore medio dell'ordine; abbandoni tra carrello e pagamento.

---

### 3. Contatti, degustazioni e visite: recensioni da sistemare e prenotazione da rendere diretta

**Cosa ho trovato** (`09-contatti`)
- **Recensioni attribuite male**: lo stesso testo ("Cantina immersa in uno scenario naturale e rilassante…") compare firmato sia da *[nome]* sia da *[nome]*. [nome] ha anche una recensione in danese. Il carosello ripete poi le stesse recensioni due volte. Chi se ne accorge smette di credere a tutte le recensioni.
- La pagina è ben fornita (telefono, WhatsApp, email, orari). Però:
  - "Prenota ora" per la degustazione manda a una pagina generica (`/degustazioni/`); il footer usa invece `/experiences/degustazioni/`, quindi ci sono due indirizzi diversi;
  - "Punto vendita → Scopri di più" porta alla pagina degustazioni (`/degustazioni#punto-vendita`);
  - l'agriturismo apre un altro sito in una nuova scheda.
  Da qui non si vede nulla di concreto sulle degustazioni: prezzo, durata, cosa include, lingue.
- Non c'è una mappa né un link "Indicazioni stradali", anche se l'indirizzo è una località ("[indirizzo]"), difficile da trovare senza navigatore.
- Il testo della pagina telefono in alto è ok, ma i riquadri marroni "Acquista i nostri vini / Le nostre degustazioni / Il nostro agriturismo" negli screenshot appaiono come blocchi pieni senza immagine. Potrebbe essere un effetto del caricamento ritardato durante la cattura: da verificare dal vivo.

**Cosa**
1. Correggere subito l'attribuzione delle recensioni e togliere i duplicati. Mostrare le recensioni vere di Google/Facebook (con link alla fonte e nota "recensioni da Google/Facebook, non filtrate") invece di un carosello scritto a mano.
2. Nel riquadro Degustazioni mettere i fatti che servono per decidere, direttamente in pagina: "Degustazione di X vini, circa N minuti, da Y € a persona, in italiano/inglese, su prenotazione". Poi un pulsante che porta direttamente al modulo o calendario di prenotazione (o a WhatsApp con messaggio precompilato "Vorrei prenotare una degustazione per __ persone il __").
3. Aggiungere il link "Apri in Google Maps" all'indirizzo, e i link cliccabili `tel:` e WhatsApp anche nel footer di ogni pagina.
4. Unificare gli indirizzi delle degustazioni (uno solo, con redirect dall'altro).

**Perché**
- Recensioni: la direttiva Omnibus (2019/2161) vieta recensioni false o travisate e obbliga a dire se e come si verificano ([sintesi nel pacchetto normativo; testo UE](https://eur-lex.europa.eu/eli/dir/2019/2161/oj), A). Un testo attribuito a due persone diverse è, come minimo, un'informazione non corretta.
- La riprova sociale concreta (recensioni reali e verificabili) ha prove buone ([Spiegel](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C). I messaggi generici, no.
- Mettere prezzo e durata prima del clic riduce l'incertezza: ipotesi (E) per analogia con le prove sui costi visibili in anticipo (Baymard, B).
- Nota: la prima impressione sulla pagina Degustazioni vera e propria non posso valutarla, perché non è nella copia.

**Vale per noi?**: sì. I turisti a Spoleto cercano dal telefono "cantina vicino a me / degustazione". Tre cose decidono la prenotazione: prezzo, orario e come arrivare.
**Come verificarlo**: clic su "Prenota ora", WhatsApp e `tel:` (eventi in Analytics); numero di prenotazioni di degustazioni per mese, confrontato con lo stesso mese dell'anno prima.

---

### 4. Home e fiducia: aperture, testi e condizioni di vendita

**Cosa ho trovato**
- **Due sovrapposizioni all'apertura**: il riquadro dell'età ("Benvenuto, conferma di essere maggiorenne") e sopra, in parte, il banner dei cookie (14 terze parti) coprono tutto il primo schermo, su telefono e desktop (`00-home-telefono.jpg`).
- Il titolo principale è uno slogan ("L'espressione più autentica del nostro territorio"). Non dice cosa si trova qui (vini di Spoleto, Trebbiano Spoletino, spedizione, visite). La barra "Spedizione gratuita da 6 bottiglie", presente sulle pagine prodotto, **manca proprio in home**.
- Il carosello "I nostri vini" ripete le stesse 6 bottiglie più volte e su telefono ne mostra una alla volta.
- Ci sono segnali di sito trascurato: "Conosci la **nosta** cantina" (refuso), "© COPYRIGHT **2021**", Termini e condizioni con numerazione ripetuta (due §10.7). Il titolo animato "The Art of Fine Wine" è nascosto via CSS.
- **Termini e condizioni non aggiornati alla legge**:
  - §5.2 e §13.7: rimborso "entro 30 giorni" dal recesso. L'art. 56 del Codice del Consumo impone invece **entro 14 giorni** ([Brocardi, art. 56](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html), A).
  - §6.3 rimanda a una "guida all'acquisto" non linkata.
- **Pagine pesanti**: l'HTML della home pesa circa 640 KB, con oltre 80 fogli di stile caricati da molti plugin (Elementor, WooLentor, Bloglentor, TranslatePress, due versioni di Font Awesome…).

**Cosa**
1. Unire età e cookie in **un solo passaggio**, corto: una domanda ("Hai più di 18 anni?") che si ricorda per 30 giorni, e un banner cookie compatto in basso che non copre il contenuto. Il controllo effettivo dell'età va fatto al checkout e alla consegna. *Ipotesi (E)*: ogni sovrapposizione prima del contenuto fa uscire una parte dei visitatori. Da misurare, vedi sotto.
2. Sostituire il titolo con una frase che dica i fatti, per esempio: **"Vini di Spoleto dalla nostra cantina: Trebbiano Spoletino, Grechetto e Sangiovese. Spedizione gratuita da 6 bottiglie · Degustazioni in cantina"**. Sotto, due pulsanti: "Acquista i vini" (funzionante, vedi punto 1) e "Prenota una degustazione".
3. Nel carosello, ogni vino una sola volta; su telefono una griglia di 2 colonne come nella pagina categoria, che già funziona bene (`05-categoria-telefono.jpg`).
4. Correggere il refuso e aggiornare il copyright. Riscrivere i Termini: rimborso entro 14 giorni, una sola pagina "Spedizioni e resi" linkata. Anche le pagine `07` e `08` sono lo stesso documento: basta una. Farlo rivedere da un consulente, perché questo report non è consulenza legale.
5. Velocità: togliere i plugin non usati (per esempio uno dei due Font Awesome; Bloglentor se il blog non è in home) e misurare con PageSpeed Insights su mobile.

**Perché**
- Testo conciso, scansionabile e oggettivo migliora l'usabilità misurata ([NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).
- Velocità mobile: in 30 milioni di sessioni, 0,1 s in meno è associato a più conversioni ([Deloitte, Milliseconds Make Millions](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html), C, correlazione e non esperimento).
- Termini: obbligo di legge (A).
- Accessibilità: se l'azienda supera la soglia delle microimprese, dal 28/06/2025 l'e-commerce deve essere accessibile ([European Accessibility Act, D.Lgs. 82/2022](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022), A). Il testo grigio chiaro su bianco e i testi sottili sui riquadri marroni vanno verificati per il contrasto.

**Vale per noi?**: sì. La home è il primo contatto per chi arriva da Google ("cantina Spoleto") o dai social.
**Come verificarlo**:
- percentuale di visitatori che supera il riquadro età (evento sul clic "Sì");
- frequenza di rimbalzo della home su mobile;
- clic sui due pulsanti principali;
- Core Web Vitals (LCP) in Search Console.

---

## Riepilogo delle priorità

| Priorità | Intervento | Sforzo | Impatto atteso |
|---|---|---|---|
| 1 | Collegare "Acquista" al negozio vero + redirect da /negozio/ | Minuti | Alto (blocco del percorso principale) |
| 2 | Costo di spedizione, tempi e resi accanto al pulsante; avviso "mancano N bottiglie" | Ore | Alto |
| 3 | Correggere le recensioni attribuite male e i duplicati | Minuti | Medio-alto (fiducia + rischio legale) |
| 4 | Termini: rimborso entro 14 giorni, pagina "Spedizioni e resi" unica | Ore | Obbligo di legge |
| 5 | Annate coerenti in indirizzi, meta e anteprime | Ore | Medio |
| 6 | Degustazioni: prezzo/durata in pagina + prenotazione diretta + mappa | Ore | Medio-alto per le visite |
| 7 | Home: titolo con i fatti, un solo passaggio età+cookie, carosello pulito | Ore-giorni | Medio |
| 8 | Descrizioni brevi, medaglie, recensioni prodotto, correlati con prezzo | Continuativo | Medio |
| 9 | Alleggerire i plugin / velocità mobile | Giorni | Medio |

## Limiti dell'analisi

Ho usato circa 8 fonti, tra pacchetti verificati e fonti aperte in questa sessione, su: checkout e costi di spedizione, pagina prodotto, lettura sul web, recensioni, velocità e obblighi di legge (recesso, recensioni, accessibilità).

Non ho approfondito:
- **checkout e metodi di pagamento**: non sono nella copia;
- **pagine Degustazioni, /shop/, Chi siamo e la versione inglese**: non fotografate. La versione inglese conta, perché le recensioni mostrano visitatori stranieri (danesi, anglofoni);
- **confronto con altre cantine umbre**, per esempio come presentano degustazioni e prezzi;
- **dati reali del sito** (Analytics, ordini, prenotazioni), che sarebbero la prova più forte per ordinare le priorità.
