# [nome azienda] (Spoleto): analisi del sito e raccomandazioni

Sito: [sito], copia salvata il 26/09/2026 (home, pagina brand VISII, archivio blog, privacy policy, termini e condizioni; HTML, testo e screenshot desktop e telefono).
Fonti esterne consultate il 26/09/2026. Ogni prova ha un livello di affidabilità: **A** = legge o evidenza replicata, **B** = ricerca di settore su larga scala (Baymard, Nielsen Norman Group, Google), **C** = singolo studio, **D** = pratica dei concorrenti, **E** = ipotesi ragionata.

---

## 0. Cosa fa l'azienda e quale risultato conta

[nome azienda] è un negozio multimarca di abbigliamento uomo e donna nato nel 1963 a Spoleto ([indirizzo]). Il sito è un e-commerce WooCommerce con carrello, PayPal e carta, spedizioni in Italia e all'estero. Dai testi della home emergono però tre elementi che contano più del catalogo:

- **Cerimonia ed eventi** ("Matrimoni, cresime, comunioni, eventi di gala… sono il nostro pane quotidiano"), sia per lo sposo sia per chi è invitato.
- **Su misura** (camicie, abiti, giacche, pantaloni con Hubscher e Scabal) e **sartoria veloce**.
- **Taglie comode**: "fino alla 70 da uomo e 58 da donna".

Nessuno di questi tre servizi si compra con un clic. Si decidono di persona: prova, misure, appuntamento. Per questo il sito deve portare **due tipi di risultato**:
1. **ordini online** sul catalogo (jeans, capispalla, VISII, outlet);
2. **contatti e appuntamenti in negozio** (WhatsApp o telefono) per cerimonia, su misura e taglie comode, dove lo scontrino medio è probabilmente più alto (ipotesi E: nelle pagine salvate i capi da cerimonia uomo costano 259-379 €, i jeans 189-240 €).

**Limite dell'analisi:** la copia salvata non contiene né una scheda prodotto, né il carrello o il checkout, né la pagina "Cerimonia" (`/cerimonia-elegante-sposo-uomo-spoleto-umbria/`), né la guida alle taglie. Su queste parti do solo indicazioni ricavate da ciò che le altre pagine rivelano, senza giudicarle direttamente.

---

## 1. Le parti più importanti per il risultato, e perché

| # | Parte | Perché è decisiva |
|---|---|---|
| 1 | **Primo impatto della home (e di ogni pagina) su telefono**: popup newsletter e banner cookie | È la prima cosa che vede *ogni* visitatore, da qualsiasi pagina arrivi. Oggi su telefono copre quasi tutto lo schermo con due finestre sovrapposte, quindi qualsiasi miglioramento a valle rende meno se l'ingresso è bloccato. |
| 2 | **Il percorso "cerimonia / su misura / taglie comode" → contatto con il negozio** | È il punto di forza dichiarato dall'azienda e ha lo scontrino più alto, ma sul sito manca un modo diretto per chiedere un appuntamento, e il servizio "Un sarto a casa" rimanda a un tutorial che non c'è. |
| 3 | **Spedizioni, resi e condizioni** (promesse nel sito + pagina Termini) | È la sede delle obiezioni più frequenti all'acquisto online (costi, tempi, resi). Oggi contiene promesse che si contraddicono, una sezione "Resi" vuota e un termine di recesso inferiore a quello previsto dalla legge. |
| 4 | **Elenchi prodotti (categoria/brand) e blog come porta d'ingresso da Google** | Sono le pagine dove si arriva da Google e dove si sceglie cosa comprare. Hanno segnali che riducono la fiducia (stelle vuote, testi in inglese, titoli di template), e il blog, che parla proprio di cerimonia, non porta né ai prodotti né al negozio. |

---

## 2. Analisi e raccomandazioni, in ordine di priorità

L'ordine segue impatto atteso × affidabilità della prova × costo. I primi tre punti costano poco e toccano tutti i visitatori o hanno implicazioni legali.

### Priorità 1: Sistemare spedizioni, resi e recesso (fiducia + obbligo di legge)

**Cosa ho trovato nel sito**
- La home promette **"Consegna in 48 ore – Se compri entro le ore 13"** (`00-home.txt`, riga 82-84).
- I Termini dicono invece **"consegna entro 3 giorni lavorativi per ordini… prima delle ore 11:00"** (+1 giorno per Sud e isole), e più sotto **"conferma d'ordine entro 24 ore dal primo giorno lavorativo successivo"** seguita da **"24/48 ore"** di corriere (`04-condizioni.txt`, righe 32 e 114). Si hanno quindi tre promesse diverse e due orari limite diversi (13:00 e 11:00).
- **Recesso: "entro 10 giorni dalla data di consegna"** (`04-condizioni.txt`, riga 34). Il Codice del Consumo (art. 52) concede al consumatore **14 giorni** per recedere da un acquisto a distanza, a partire dal giorno in cui riceve la merce.
- La sezione **"Resi"** dei Termini è **vuota**: c'è solo il titolo (`04-condizioni.html`, riga 830). In home "Reso Facile" dice solo "Il nostro supporto cliente ti guiderà per il meglio".
- La spedizione in Italia costa 6 €, gratuita sopra 90 €. L'informazione esiste, ma solo nei Termini, e non compare in home né negli elenchi prodotti.

**Cosa**: (a) portare il recesso a 14 giorni dalla consegna; (b) scrivere una sezione "Resi e cambi" completa: come si richiede (WhatsApp/email), chi paga il ritiro (oggi si dice "servizio gratuito di ritiro": se è vero, va messo in evidenza), tempi di rimborso, cambio taglia in negozio a Spoleto; (c) una sola promessa di consegna, identica ovunque e realistica. Per esempio "Ordini entro le 11 (lun-ven): consegna in 2-3 giorni lavorativi", da verificare con il corriere; (d) aggiungere una riga fissa "Spedizione 6 € · gratis sopra 90 € · reso entro 14 giorni" sotto il menu e vicino al prezzo nelle schede prodotto.
**Perché**:
- Il recesso di 14 giorni è un obbligo di legge: Codice del Consumo art. 52, https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html. Livello **A**.
- Nei sondaggi Baymard i motivi principali di abbandono durante il checkout sono: costi extra 40%, consegna lenta 20%, politica resi insoddisfacente 13%, impossibilità di calcolare il totale in anticipo 12%. Il 67% dei siti non mostra spedizione e costo totale nella pagina prodotto e il 44% non mostra bene la politica resi. Fonti: https://baymard.com/lists/cart-abandonment-rate e https://baymard.com/blog/current-state-ecommerce-product-page-ux. Livello **B**.
- Il principio: una promessa contraddetta altrove fa perdere credibilità al sito intero. Chi legge "48 ore" e poi riceve in 4 giorni si lamenta o lascia una recensione negativa. Livello E come conseguenza, ma la contraddizione è un fatto verificato nel sito.
**Vale per noi?**: sì, e più che per un grande marchio. Chi non conosce [nome azienda] deve fidarsi di un piccolo negozio online, e resi e taglie sono il dubbio tipico dell'abbigliamento. Il negozio fisico è un vantaggio da scrivere: "Sei in zona? Cambi la taglia in negozio".
**Come verificarlo**: numero di richieste di chiarimento su spedizioni e resi via WhatsApp o email prima e dopo; tasso di abbandono del carrello (WooCommerce + analytics); da ricontrollare con un avvocato o un consulente per il resto dei Termini.

### Priorità 2: Togliere il popup newsletter all'apertura e ricomporre l'ingresso su telefono

**Cosa ho trovato nel sito**
- All'apertura di **ogni pagina** (home, brand, blog, privacy, termini) compaiono **insieme** il popup "Iscriviti alla nostra newsletter – Ottieni subito uno sconto del 10%" e il banner cookie, più il pulsante WhatsApp che si sovrappone al banner (`00-home-telefono.jpg`, `01-categoria-telefono.jpg`, `01-categoria-desktop.jpg`). Sul telefono la prima schermata è quasi tutta coperta.
- Il popup è **solo un'immagine** con link `href="#"` (`00-home.html`, righe 1770-1779): **non contiene un campo per l'email**. Chi lo tocca per "ottenere subito" lo sconto non ottiene niente. Il vero modulo di iscrizione sta in fondo alla pagina, sopra il footer.
- La configurazione del plugin è `"popup_delay_enable":"no"`, quindi il popup parte senza alcun ritardo (`00-home.html`, riga 1607).

**Cosa**: eliminare il popup all'apertura. Lasciare solo il banner cookie, che è obbligatorio. Portare l'offerta del 10% in una fascia non bloccante con un vero campo email: in cima alla home sotto il menu, oppure dopo i "Nuovi arrivi", oltre al modulo già presente nel footer. Se si vuole tenere un popup, farlo comparire solo dopo che l'utente ha visto almeno 2 pagine o ha fatto scroll, una volta sola, e con il campo email dentro.
**Perché**:
- Nielsen Norman Group: evitare popup prima che l'utente abbia interagito o prima che il contenuto sia caricato, tranne il consenso obbligatorio; evitare più popup in fila; "Give value to your visitors before asking them anything". https://www.nngroup.com/articles/popups/. Livello **B**.
- Google considera problematici i dialoghi che coprono una parte sostanziale della pagina su mobile: "may frustrate them and erode their trust in your website". https://developers.google.com/search/docs/appearance/avoid-intrusive-interstitials. Livello **B**, con effetto potenziale anche sulla visibilità nelle ricerche.
- Un pulsante che promette "ottieni subito" e non fa nulla è un'aspettativa tradita: il difetto si vede direttamente nel sito, e l'impatto è un'ipotesi E.
**Vale per noi?**: sì. Il visitatore tipico di un negozio locale arriva da Instagram o Google su telefono (ipotesi E, da verificare con analytics), e il popup colpisce anche chi arriva da Google direttamente su un prodotto o su un articolo.
**Come verificarlo**: iscrizioni alla newsletter a settimana e frequenza di rimbalzo dal telefono, per 4 settimane prima e dopo. Con il traffico di un negozio locale un A/B test non darebbe risultati affidabili, quindi basta un confronto prima/dopo, sapendo che è un segnale debole.

### Priorità 3: Rendere cerimonia, su misura e taglie comode un percorso che finisce in un appuntamento

**Cosa ho trovato nel sito**
- I veri punti di forza (cerimonia, su misura Hubscher/Scabal, sartoria veloce, taglie fino alla 70 uomo e 58 donna) sono scritti in un **blocco di testo continuo** subito sotto l'hero, con refusi ("trasfomandosi", "inclusità"), seguiti da una citazione di Coco Chanel. Nessuno di questi servizi ha un pulsante o un link.
- "**Un sarto a casa**" dice "Segui il nostro Tutorial e poi procedi all'acquisto", ma la parola "Tutorial" non è un link e il pulsante "Vai allo shop" porta al negozio generico `/negozio/` (`00-home.html`, righe 1152 e 1158). Il servizio promesso sul sito non si trova.
- I numeri (negozio, WhatsApp, [nome]) sono **testo semplice** nel footer, non link cliccabili (`tel:` / `wa.me`) (`00-home.html`, righe 1417-1419). C'è il pulsante WhatsApp flottante, che però si sovrappone al banner cookie.
- **Orari**: "Domenica 09:30-13:00 / 16:00-20:00", identici ai giorni feriali, su tutte le pagine. Se è un errore del template, chi si presenta la domenica trova chiuso, e questa è la delusione che costa di più a un negozio fisico. Va verificato subito.
- La pagina più importante per la cerimonia esiste solo nel menu (non è nella copia salvata), mentre i tre banner in home "Cerimonia Donna / Cerimonia Uomo / Accessori Donna" portano a elenchi di prodotti, non a un servizio.
- Non ci sono recensioni di clienti, foto di sposi o testimonianze. C'è un post Instagram che sembra andare in questa direzione ("Il momento esatto in cui sono i nostri clienti a f…"), ma l'anteprima è troncata.

**Cosa**:
1. Sotto l'hero, sostituire il paragrafo con **tre o quattro riquadri di servizio**, ciascuno con una frase concreta e un pulsante. Per esempio: "Cerimonia sposo e invitati: prova su appuntamento" → **Prenota una prova su WhatsApp**; "Su misura Scabal / Hubscher: camicie e abiti" → **Chiedi un appuntamento**; "Taglie fino alla 70 uomo e 58 donna" → link alle categorie; "Sartoria veloce per orli e ritocchi" → tempi indicativi.
2. Il pulsante WhatsApp deve aprire un messaggio già compilato (`https://wa.me/[telefono]?text=Vorrei prenotare una prova per cerimonia…`, da verificare che sia il numero WhatsApp corretto) e tutti i numeri devono diventare link `tel:`.
3. Nella pagina Cerimonia: come funziona (prima prova, tempi da prenotare prima dell'evento, ritocchi inclusi o no), fasce di prezzo indicative, marchi (Luigi Bianchi Mantova, Masculini, Carla Ruiz, Bharnaba, Maestrami, tutti già citati nel blog), foto di clienti reali (con il loro consenso), orari e mappa.
4. Correggere gli orari della domenica e aggiungere un link a Google Maps.
5. "Un sarto a casa": pubblicare il tutorial (video o guida "come misurarti") e linkarlo, oppure togliere il blocco. Promettere una cosa che non c'è è peggio che non promettere nulla.
6. Raccogliere recensioni Google dopo le cerimonie (un messaggio WhatsApp con il link diretto al profilo Google) e mostrarne alcune nella pagina Cerimonia.
**Perché**:
- Per un negozio locale Google premia la **pertinenza** (informazioni complete), la **distanza** e la **prominenza** (anche il numero di recensioni positive). Tra i consigli: orari corretti, compresi quelli speciali, e rispondere alle recensioni. https://support.google.com/business/answer/7091?hl=it. Livello **B** (documentazione ufficiale Google).
- Le recensioni pesano di più sugli acquisti costosi: la probabilità di acquisto cresce del 380% sui prodotti di prezzo alto contro il 190% di quelli economici, e il massimo si raggiunge con un voto medio di 4,0-4,7, non 5. Spiegel Research Center, Northwestern: https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/. Livello **C**: lo studio riguarda le recensioni online di prodotti e qui lo applico per analogia a un servizio.
- Gli utenti scansionano la pagina (79%) e leggono al massimo il 20-28% delle parole: un paragrafo continuo nasconde i servizi, mentre titoli e pulsanti che dicono qualcosa di concreto li rendono visibili. NN/g: https://www.nngroup.com/articles/how-users-read-on-the-web/. Livello **B**.
- Un pulsante deve dire cosa succede ("Prenota una prova", non "Vai allo shop"), secondo la convenzione NN/g riassunta sopra. Livello **B**.
- Che l'appuntamento su WhatsApp porti più clienti del solo e-commerce per la cerimonia è un'**ipotesi (E)**. Si basa su un servizio che richiede prova e misure e sul fatto che l'azienda già pubblica un numero WhatsApp. Si conferma contando le richieste.
**Vale per noi?**: sì. È il segmento che l'azienda stessa definisce il proprio "pane quotidiano" e per cui chi abita in zona (Spoleto, Foligno, Terni, Umbria) si sposta volentieri. Un matrimonio si prepara con mesi di anticipo, quindi un contatto oggi vale uno scontrino importante più avanti.
**Come verificarlo**: clic sui link WhatsApp e `tel:` (eventi in analytics); richieste di appuntamento al mese, chiedendo in negozio "come ci ha trovato?"; numero di recensioni Google.

### Priorità 4: Elenchi prodotti e blog: togliere i segnali di trascuratezza e collegare i contenuti alla vendita

**Cosa ho trovato nel sito**
- Sotto ogni prodotto compaiono **cinque stelle vuote** (`star-rating none`, `00-home.html` riga 845 e seguenti; visibili negli screenshot). Senza recensioni, sembrano un voto pari a zero.
- **Testi del template in inglese** su un sito italiano: "THERE ARE 4 PRODUCTS", "SHOWING ALL 4 RESULTS", "Continue Reading", "Posted On", "NEXT". Il titolo della pagina blog è "**Amazing BLOG Archivi**", quello della pagina brand "visii collection Archivi". **Nessuna pagina ha una meta description e nessuna ha un'immagine di anteprima (og:image)**, quindi i link condivisi su WhatsApp o Facebook escono senza foto.
- In home, metà dei "Nuovi arrivi" e le immagini delle "News" risultano vuote negli screenshot (probabilmente per il caricamento differito delle immagini; da verificare sul sito reale, perché su un telefono lento succede lo stesso).
- Nomi prodotto con codici interni e refusi ("BHARNABA PHILOSOPY", "Piumiuno", "GIACCADONNA", "JACK 184 C110").
- Il **blog** ha 9 pagine di articoli, quasi tutti su cerimonia e marchi (Luigi Bianchi Mantova, Masculini, Carla Ruiz, Elena Mirò, cresime a Spoleto). Sono proprio le ricerche che portano clienti di cerimonia, ma l'autore visibile è "**Argenttemp**" (un nome utente tecnico), l'ultimo articolo è di maggio 2025 e dalle anteprime non risultano collegamenti alle categorie o a un appuntamento.
- Footer: "Copyright © 2020". Instagram in home mostra ancora lo "Sbaracco dal 3 al 6 settembre" (il sito è stato fotografato il 26 settembre).

**Cosa**:
1. Nascondere le stelle finché un prodotto non ha almeno una recensione.
2. Tradurre in italiano le stringhe del tema ("4 prodotti", "Leggi l'articolo"…), correggere i titoli ("Blog – [nome azienda]"), scrivere una meta description per home, categorie e pagina Cerimonia, e impostare un'immagine di anteprima predefinita.
3. Nomi prodotto leggibili: marca + capo + dettaglio ("Bharnaba – Abito doppiopetto Soave"), con il codice nella scheda.
4. Negli articoli di cerimonia aggiungere in fondo un riquadro fisso: prodotti del marchio citato + "Prenota una prova a Spoleto". Firmare come "[nome], [nome azienda]" e aggiornare l'anno del copyright.
5. Verificare con PageSpeed Insights che le immagini dei prodotti si carichino subito sul telefono.
**Perché**:
- Stelle vuote e testi in inglese sono segnali di trascuratezza che riducono la credibilità. È un'ipotesi (E), coerente con la ricerca NN/g sulla credibilità del testo oggettivo e curato (+124% di usabilità combinata per testo conciso, scansionabile e oggettivo): https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/. Livello **B** per il principio generale, **E** per l'effetto specifico.
- Velocità su mobile: un miglioramento di 0,1 s è associato a +8,4% di conversioni nel retail (Deloitte, 2020): https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html. Livello **C**: è una correlazione, non un esperimento, e non so se il sito sia lento (serve la misura).
- Meta description e titoli influenzano come il sito appare nei risultati di ricerca. Per i contenuti locali vale la pertinenza indicata da Google nel link della priorità 3. Livello **B**.
**Vale per noi?**: sì. Il blog è già un investimento fatto, e basta collegarlo alla vendita. Con un catalogo di oltre 70 marchi, molti visitatori arrivano da Google cercando "marca + capo", quindi il nome prodotto leggibile conta.
**Come verificarlo**: Google Search Console (impressioni e clic sulle pagine Cerimonia e blog), clic dal blog verso prodotti e WhatsApp.

---

## 3. Altri interventi minori (costo basso)

- **Refusi in home**: "trasfomandosi", "inclusità" (probabilmente "inclusività"), "qualoratrovassi". La citazione di Coco Chanel occupa spazio prezioso: meglio spostarla più in basso o toglierla.
- **Privacy policy** ferma al 25/05/2018. Indica il titolare come "DPO" e parla di "contact form", "accesso cliente" e cookie di profilazione con conservazione di 1 mese: va allineata a ciò che il sito fa davvero (ordini WooCommerce, PayPal, Instagram, WhatsApp, newsletter). Da far verificare a un consulente privacy (livello A, obbligo GDPR di informativa corretta; i dettagli li lascio al professionista).
- **Accessibilità**: l'immagine "accessori donna" e il popup non hanno testo alternativo (`alt=""`) e alcuni testi grigi su fondo chiaro sono poco leggibili. Se l'azienda supera le soglie della microimpresa (10 dipendenti *e* 2 milioni di fatturato), l'European Accessibility Act si applica anche all'e-commerce (D.Lgs. 82/2022, livello A). Per un negozio di questa dimensione probabilmente è esente, ma conviene comunque.
- **"Sconti fino all'80%"** (post Instagram dello Sbaracco). Se gli stessi sconti compaiono sul sito, il prezzo barrato deve essere il più basso degli ultimi 30 giorni (art. 17-bis Codice del Consumo, livello A): https://www.mimit.gov.it/it/assistenza/domande-frequenti/annunci-di-riduzione-di-prezzo-domande-frequenti-faq

---

## 4. Riepilogo delle priorità

| Priorità | Intervento | Impatto | Affidabilità | Costo |
|---|---|---|---|---|
| 1 | Recesso 14 giorni, sezione Resi completa, una sola promessa di consegna, costi di spedizione visibili | Alto (fiducia + rischio legale) | A / B | Basso |
| 2 | Togliere il popup all'apertura (che oggi non contiene nemmeno il campo email) | Alto (tutti i visitatori su telefono) | B | Molto basso |
| 3 | Percorso cerimonia / su misura / taglie comode → appuntamento WhatsApp, orari corretti, recensioni Google | Molto alto sullo scontrino | B / C / E | Medio |
| 4 | Stelle vuote, testi in inglese, titoli, meta, nomi prodotto, collegamento blog → prodotti | Medio | B / E | Basso-medio |

**Primi tre passi da fare in una giornata:** correggere il recesso a 14 giorni e riempire la sezione "Resi"; disattivare il popup; controllare e correggere gli orari della domenica.

---

## 5. Limiti di questa analisi

Ho consultato 9 fonti esterne: Codice del Consumo art. 52 e art. 17-bis, Baymard (abbandono carrello e pagina prodotto), NN/g (popup, lettura sul web, testo per il web), Google (interstitial, ranking locale), Spiegel Research Center (recensioni), Deloitte (velocità). Gli argomenti coperti sono resi e spedizioni, popup, servizi locali, recensioni e credibilità dei testi.

Non ho approfondito:
- scheda prodotto, carrello e checkout, che non sono nella copia salvata e sono probabilmente il punto successivo da analizzare;
- la pagina Cerimonia e la guida alle taglie, anche queste non salvate;
- il confronto con negozi di cerimonia concorrenti in Umbria (livello D);
- dati reali di traffico e vendite, che sono la prova più forte e andrebbero guardati prima di ogni cambiamento.
