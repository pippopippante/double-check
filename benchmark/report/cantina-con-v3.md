# [nome azienda] (Spoleto): analisi del sito per portare più clienti

*Fonte: la copia salvata il 26/09/2026 (10 pagine: home, 3 schede vino, pagina `/negozio/`, categoria "Bottiglia singola", home dopo l'aggiunta al carrello, termini e condizioni (salvati due volte, identici), contatti). Il sito online non l'ho visitato.*

## Cosa fa l'azienda e cosa deve ottenere il sito

[nome azienda] è una cantina di Spoleto (Trebbiano Spoletino, Grechetto, Sangiovese; vini da 10 a 100 €). Accanto alla cantina ci sono **degustazioni** e un **agriturismo** ("Il Molino Antico"). Il sito è in WordPress con WooCommerce ed Elementor e ha un e-commerce vero, con carrello, checkout e spedizione gratuita da 6 bottiglie.

Per il sito un cliente può arrivare in tre modi:
1. **ordine online di vino**: è l'unico che si conclude interamente sul sito, e per questo pesa di più;
2. **prenotazione di una degustazione** (spesso porta anche a comprare in cantina e a ordinare di nuovo online in seguito);
3. **soggiorno in agriturismo o visita al punto vendita**.

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Ingresso al sito: blocco per l'età + banner dei cookie + home** | Tutti i visitatori passano da qui. Se la prima schermata è piena di ostacoli o non porta verso il vino, si perdono persone prima che vedano un prodotto. |
| 2 | **Catalogo dello shop** (`/shop`, `/negozio`, categorie) | È dove si sceglie il vino. Se una pagina è vuota o il catalogo è difficile da consultare, non si arriva nemmeno al carrello. |
| 3 | **Scheda del vino + carrello (costi e fiducia)** | Qui si decide se comprare. Prezzo, spedizione, descrizione, recensioni e affidabilità del venditore fanno la differenza. |
| 4 | **Degustazioni / contatti** | È il secondo modo di ottenere clienti (esperienza in cantina + agriturismo), e una cantina di questo tipo vive molto di visite. |

Ho lasciato fuori "Chi siamo", i vigneti e il blog: sono utili per l'immagine, ma incidono poco su ordini e prenotazioni.

---

## 1. Ingresso al sito: blocco per l'età, banner dei cookie e home

**Cosa si vede**
- Chi arriva trova **due finestre sovrapposte**: "BENVENUTO – conferma di essere maggiorenne" al centro e, sopra, il banner dei cookie (con 14 terze parti), che su desktop copre in parte il blocco per l'età e su telefono lo taglia a metà (screenshot `00-home-telefono.jpg`, `01-prodotto-telefono.jpg`: il pulsante "Sì, ho più di 18 anni" viene coperto dal banner dei cookie). Il blocco compare **su ogni pagina** della copia, schede prodotto comprese: anche chi arriva da Google direttamente su un vino deve prima superare due finestre.
- **La home non spiega cosa si può fare.** Il titolo "[nome azienda] – L'espressione più autentica del nostro territorio" non dice che si possono comprare vini online con spedizione gratuita da 6 bottiglie, né che ci sono degustazioni e un agriturismo. La scritta "Spedizione gratuita a partire da 6 bottiglie" compare in tutte le pagine interne ma **non in home**.
- Lo slider "I nostri vini" è impostato male: nel testo della pagina gli stessi 6 vini si ripetono tre volte (effetto del carosello), su telefono si vede un vino alla volta, e dalle schede non si può aggiungere al carrello direttamente.
- In fondo ci sono tre grandi blocchi marroni ("Acquista i nostri vini", "Le nostre degustazioni", "Il nostro agriturismo") che negli screenshot appaiono **come rettangoli di colore pieno, senza foto**, con testo scuro su marrone e poco contrasto. Può darsi che le immagini di sfondo si carichino con un effetto ritardato e che lo screenshot le abbia prese prima. Anche così, sono le porte d'ingresso più importanti e oggi non attirano l'occhio. Nella home desktop c'è anche un grande spazio vuoto tra le sezioni (animazioni che compaiono durante lo scorrimento).
- I titoli animati sono scritti **una lettera alla volta** (`<span class="vamtam-letter">`), senza un testo alternativo: un lettore di schermo, e in parte anche Google, legge "C o l l e U n c i n a n o". Nel file di testo della home si vede proprio così.
- Piccole cose che tolgono credibilità: "Conosci la **nosta** cantina", "©COPYRIGHT **2021**".

**Raccomandazioni (in ordine di priorità)**
1. **Unire il controllo dell'età e il consenso ai cookie in un solo passaggio**, oppure mostrarli uno dopo l'altro e mai sovrapposti. Il blocco per l'età deve comparire una volta sola e poi essere ricordato (cookie di sessione di almeno 30 giorni), e va verificato che non ricompaia a ogni pagina. Sul telefono il pulsante "Sì, ho più di 18 anni" deve essere sempre visibile e toccabile. *Motivo:* la legge italiana vieta di vendere alcolici ai minori, ma non chiede un doppio ostacolo a ogni pagina. Ogni finestra in più al primo ingresso fa perdere una parte dei visitatori, soprattutto quelli che arrivano da annunci o da Google direttamente su una scheda vino.
2. **Riscrivere la prima schermata della home** in modo che dica subito le tre cose che si possono fare, ognuna con il suo pulsante: *"Vini di Spoleto dalla nostra cantina: spedizione gratuita da 6 bottiglie"* → **[Acquista i vini]**, e affiancati **[Prenota una degustazione]** e **[Soggiorna in agriturismo]**. Oggi i pulsanti "Acquista" e "Degustazioni" ci sono, ma senza un testo che dia un motivo per cliccarli.
3. **Sostituire il carosello con una griglia fissa** di 4-6 vini scelti (i più venduti, più una selezione "da regalo"), con prezzo e pulsante "Aggiungi al carrello". Su telefono vanno bene due colonne. Nei caroselli la maggior parte delle persone vede solo la prima scheda.
4. Dare ai tre blocchi finali (shop, degustazioni, agriturismo) **una foto vera, sempre caricata, e testo chiaro con buon contrasto**. Togliere o ridurre gli spazi vuoti delle animazioni.
5. Correggere il refuso e l'anno del copyright. Per i titoli animati aggiungere un `aria-label` con la frase intera, oppure usare un testo normale.

---

## 2. Catalogo dello shop

**Cosa si vede**
- **La pagina `/negozio/` ("Shop – [nome azienda]") è vuota**: sotto il menu c'è subito il footer, senza nessun vino (screenshot `04-categoria-desktop.jpg`). Il menu del sito porta a `/shop/`, ma `/negozio/` esiste, ha il titolo "Shop" e probabilmente è la pagina negozio predefinita di WooCommerce: chi ci arriva da Google, da vecchi link o dai "breadcrumb" trova una pagina bianca.
- La categoria "Bottiglia singola" funziona: 14 vini, prezzo, selettore di quantità e "Aggiungi al carrello". Però:
  - non si possono **filtrare** i vini (bianco/rosso/rosato/bollicine, prezzo, occasione) e non c'è nessuna breve descrizione: il visitatore vede solo nome e denominazione (ad esempio "Reo Superbo 2021 – Rosso Umbria IGT") e deve aprire ogni scheda per capire com'è il vino;
  - su telefono la griglia a due colonne con quantità e pulsante per ogni vino è fitta, i pulsanti "AGGIUNGI AL CARRELLO" sono piccoli e con scritte minuscole;
  - nella categoria non si vede nessuna **confezione, degustazione o buono regalo**, anche se il menu ha le voci "Riserve di cantina", "Magnum" e "Offerte".
- Il **nome del vino non corrisponde all'indirizzo della pagina**: l'URL `…araminto-2019` mostra "Araminto 2020", e l'URL `…la-pettinata-2022` mostra "La Pettinata 2024" (con "Prima annata: 2022"). Anche titolo e descrizione per Google dicono ancora 2019 e 2022. Chi cerca l'annata corrente trova informazioni che si contraddicono.

**Raccomandazioni**
1. **Sistemare subito `/negozio/`**: reindirizzarla con un redirect 301 a `/shop/`, oppure impostare in WooCommerce una sola pagina negozio che mostri tutti i prodotti. Con una pagina vuota si perdono sicuramente dei visitatori, e la correzione richiede cinque minuti.
2. **Dividere lo shop per tipo di vino** (Bianchi, Rossi, Rosato, Bollicine, Riserve e annate storiche, Confezioni e regali) con filtri semplici, e aggiungere a ogni vino **una riga descrittiva** e 2-3 abbinamenti (ad esempio "Trebbiano Spoletino fresco e agrumato – con pesce e antipasti"). Il testo c'è già nelle schede tecniche, basta riportarlo.
3. **Creare cartoni già pronti da 6 bottiglie** ("Degustazione [nome azienda]: 6 vini", "6 bianchi per l'estate", "3 rossi + 3 bianchi"). Portano automaticamente alla soglia della spedizione gratuita, aumentano il valore dell'ordine e sono l'idea regalo più semplice. Vanno messi in cima allo shop e in home.
4. Sul telefono: pulsante "Aggiungi" più grande (area di tocco di almeno 44-48 px) e selettore di quantità nascosto nella griglia, da far comparire nella scheda o nel carrello.
5. **Allineare annata, URL, titolo e descrizione per Google** di ogni vino. Quando cambia l'annata conviene usare URL senza anno (`/prodotto/araminto-grechetto/`) e aggiornare solo il contenuto, così si conserva la posizione su Google.

---

## 3. Scheda del vino e carrello: costi e fiducia

**Cosa si vede**
- La scheda ha prezzo, quantità, "Aggiungi al carrello" e una **scheda tecnica completa** (vitigno, affinamento, profumo, gusto, abbinamenti, temperatura) scaricabile. Questa è una buona base.
- Però:
  - manca **un testo che racconti il vino**. La scheda comincia con dati tecnici; il nome "Araminto" o l'etichetta d'artista (Gian Luigi Granieri) sono citati ma non valorizzati. C'è il titolo "CARATTERISTICHE DEI VIGNETI", ma sotto non c'è niente sui vigneti;
  - **nessuna recensione, premio o punteggio** nelle schede. Le recensioni esistono (Facebook, nella pagina Contatti) ma non sono dove si decide di comprare;
  - **non si vede il costo di spedizione sotto le 6 bottiglie**, e nemmeno i tempi di consegna. I termini rimandano a una pagina di spedizioni "chiaramente indicata", che nella copia non c'è. Nel riquadro del carrello dopo l'aggiunta c'è solo "Subtotale €15,00", senza dire quante bottiglie mancano alla spedizione gratuita;
  - i "Prodotti correlati" sembrano scelti a caso (nella scheda della Pettinata compaiono Araminto 2010 da 25 € e Soviano Regale 2005 da 100 €) e su telefono non mostrano il prezzo;
  - dopo "Aggiungi al carrello" dalla home si viene riportati alla **home** (URL `?add-to-cart=2140`) e il carrello si apre solo come riquadro nel menu. Nella copia, poi, la pagina Contatti mostra 2 bottiglie nel carrello ma un solo vino da 15 € nell'elenco: la quantità nel riquadro non è chiara;
  - **Fiducia e questioni legali:** i termini e condizioni dicono che il venditore è "[nome azienda]", **con sede in [indirizzo], [indirizzo], Gualdo Cattaneo**, mentre il sito dà come indirizzo [indirizzo], Spoleto. La partita IVA è la stessa ([P.IVA]), quindi probabilmente è la stessa azienda (sede legale diversa dalla cantina), ma il cliente non lo sa. Inoltre il recesso va comunicato solo con **raccomandata A/R**, e la pagina parla di "prodotti audiovisivi o software" e di un recesso di 90 giorni: sembra un modello generico non adattato. Nelle schede **non si vedono i metodi di pagamento**.

**Raccomandazioni**
1. **Mostrare chiaramente i costi di spedizione prima del carrello**: sotto il prezzo, una riga come *"Spedizione €X in Italia, gratuita da 6 bottiglie · consegna in 2-5 giorni lavorativi"*. Nel carrello, una **barra di avanzamento** "Ti mancano 4 bottiglie per la spedizione gratuita" (il plugin Flexible Shipping già installato, con il suo foglio `free-shipping.css`, probabilmente la supporta). *Motivo:* secondo le ricerche di Baymard Institute sull'abbandono del checkout, i costi aggiuntivi scoperti tardi (spedizione, tasse) sono la prima causa per cui chi ha già messo prodotti nel carrello rinuncia all'acquisto. Una soglia di spedizione gratuita spinge ad aggiungere bottiglie solo se il cliente la vede mentre compra.
2. **Aggiungere in cima a ogni scheda 3-4 righe che raccontino il vino** (in parole semplici: com'è, quando berlo, perché è speciale), prima della scheda tecnica. Trasformare "Caratteristiche dei vigneti" in un vero paragrafo sul vigneto oppure toglierlo.
3. **Portare le prove sociali nelle schede**: recensioni dei clienti su WooCommerce (con "acquisto verificato"), eventuali premi e guide, e 1-2 frasi di recensioni già raccolte (ad esempio quella del ristoratore che ha il Trebbiano Spoletino "nella nostra carta dei vini").
4. **Rendere chiaro e affidabile chi vende**: in footer e nei termini scrivere "[nome azienda] è un marchio dell'[nome azienda]" con la sede legale; far rivedere i termini da un professionista (togliere le parti su software e audiovisivi, permettere il recesso anche via email o modulo, come consente il Codice del consumo); aggiungere una pagina "Spedizioni e resi" con prezzi, corrieri, zone (Italia/UE), imballaggio protetto e rimborso delle bottiglie rotte. Mostrare le icone dei metodi di pagamento sotto il pulsante del carrello.
5. Dopo l'aggiunta al carrello **restare nella pagina** con un avviso chiaro ("Aggiunto ✓ – Vai al carrello / Continua") invece di tornare alla home, e mostrare correttamente la quantità nel riquadro del carrello.
6. Correlati scelti con criterio: vini dello stesso colore e fascia di prezzo, oppure "completa il cartone da 6", con prezzo visibile anche su telefono.

---

## 4. Degustazioni e contatti

**Cosa si vede**
- La pagina Contatti è ricca: indirizzo, telefono, WhatsApp, orari, tre riquadri (Punto vendita, "Prenota la tua degustazione con un click!", Agriturismo) e recensioni.
- Però "Prenota con un click" porta alla pagina `/degustazioni/` (che nella copia non c'è). Dai file non risulta un **sistema di prenotazione con data, orario e prezzo**: il "click" probabilmente porta a un'altra pagina e poi a un contatto. Nella home il link alle degustazioni punta a `/experiences/degustazioni/`, nel menu a `/degustazioni/`: due indirizzi diversi per la stessa cosa.
- Le recensioni si ripetono (carosello: [nome] e Verducci compaiono due volte) e il titolo è "Contattaci su Facebook", che manda il visitatore fuori dal sito.
- Su telefono, dal carosello di recensioni in giù, gli screenshot mostrano **ampi spazi vuoti** (elementi animati non ancora comparsi). Anche questo può essere un effetto del caricamento ritardato, ma rende la pagina lunghissima.
- Nessuna mappa o pulsante "Indicazioni" visibile, e nessun pulsante per chiamare fisso sul telefono (il numero è nel footer).

**Raccomandazioni**
1. **Permettere di prenotare la degustazione davvero online**: 2-3 pacchetti con **prezzo, durata, vini inclusi, lingue**, un calendario con i posti disponibili e un pagamento o una caparra (con un plugin per prenotazioni di WooCommerce o servizi specializzati per cantine come Winedering o Divinea/Wine Suite). In alternativa, almeno un modulo breve (data, numero di persone, lingua) più un pulsante WhatsApp con il messaggio già compilato. Le recensioni in inglese e danese mostrano che arrivano turisti stranieri, che prenotano soprattutto online e prima del viaggio.
2. **Vendere la degustazione anche come buono regalo** nello shop: è uno dei prodotti più facili da regalare per una cantina.
3. **Usare un solo indirizzo** per le degustazioni e reindirizzare l'altro.
4. Contatti: mappa o pulsante "Apri in Google Maps" accanto all'indirizzo, pulsanti fissi "Chiama" e "WhatsApp" su telefono, recensioni senza doppioni e con il link a Google invece del titolo "Contattaci su Facebook".
5. **Collegare i tre canali**: dopo un acquisto online invitare alla degustazione; dopo la degustazione (email o QR in cantina) proporre lo shop con un codice sconto per il primo ordine a casa. Il plugin per i coupon è già installato (`wt-smart-coupons`).

---

## Priorità complessive

| Priorità | Intervento | Sforzo | Impatto |
|---|---|---|---|
| 1 | Redirect di `/negozio/` (vuota) verso `/shop/` | Molto basso | Alto (pagina oggi inutile) |
| 2 | Costo di spedizione e tempi visibili in scheda e carrello + barra "mancano X bottiglie" | Basso | Alto |
| 3 | Un solo passaggio per età e cookie, che non si sovrappongano e non si ripetano | Basso-medio | Alto (tutti i visitatori) |
| 4 | Chi vende e sede chiari, termini e condizioni rivisti, pagina "Spedizioni e resi", metodi di pagamento visibili | Basso | Medio-alto (fiducia) |
| 5 | Prima schermata della home con proposta chiara e tre pulsanti; griglia di vini al posto del carosello | Medio | Medio-alto |
| 6 | Cartoni da 6 bottiglie già pronti e buoni regalo | Medio | Medio-alto (valore dell'ordine) |
| 7 | Degustazioni prenotabili online con prezzi e calendario | Medio | Medio-alto |
| 8 | Descrizioni in parole semplici, recensioni nelle schede, filtri dello shop | Medio | Medio |
| 9 | Annate, URL e titoli per Google allineati; refusi; copyright; titoli leggibili dai lettori di schermo | Basso | Medio-basso |

**Come misurare:** attivare in GA4 (dopo il consenso) gli eventi `view_item`, `add_to_cart`, `begin_checkout`, `purchase` e un evento per i clic su "Prenota degustazione", WhatsApp e telefono. Confrontare le 4-6 settimane prima e dopo ogni intervento, guardando soprattutto la percentuale di visitatori che supera il blocco per l'età, il passaggio dal carrello al checkout e il valore medio degli ordini.

*Limiti dell'analisi: le pagine Degustazioni, Agriturismo, Carrello e Checkout non erano nella copia, quindi su queste parti le raccomandazioni si basano sui link e sui testi che le richiamano. Gli spazi vuoti e i blocchi senza immagine negli screenshot potrebbero dipendere in parte dalle animazioni al caricamento: va verificato su un dispositivo reale.*
