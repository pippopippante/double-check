# Analisi sito [sito] ([nome azienda], Spoleto) — copia del 26/09/2026

## Chi è e cosa deve fare il sito

[sito] è un **e-commerce di abbigliamento firmato multimarca**. Vende brand premium (K-Way, Belstaff, CP Company, Pinko, Hogan, Weekend Max Mara…), ha un outlet ("fino al -80%") e un negozio fisico a Spoleto. È su Shopify, con pagamenti a rate Scalapay/Klarna, PayPal, Apple/Google Pay e contrassegno. Mostra le recensioni con Trustindex: "Eccellente, 1776 recensioni".
**Il risultato che conta: ordini online completati e non resi**, e clienti che tornano a comprare.

Livelli di affidabilità delle prove: A = legge o risultato replicato; B = ricerca su larga scala (Baymard, NN/g); C = singolo studio; D = pratica dei concorrenti; E = ipotesi mia.

---

## Le 4 parti più importanti e perché

| # | Parte | Perché è decisiva |
|---|---|---|
| 1 | **Promesse di servizio: resi e spedizione** (barra servizi, blocchi in pagina prodotto, pagine `/pages/resi-rimborsi` e `/pages/spedizioni`) | Nella moda chi compra online ha un dubbio principale: "e se non mi va?". Secondo Baymard, tra i motivi di abbandono del checkout ci sono i costi extra (40%), la consegna lenta (20%) e una politica resi insoddisfacente (13%) (B). Qui ho trovato le incoerenze più gravi, compresi problemi di legge. |
| 2 | **Pagina prodotto** (01, 02, 03) | È dove si decide l'acquisto. Nell'abbigliamento serve soprattutto a scegliere la taglia giusta: questo decide sia se il cliente compra sia se poi rende. |
| 3 | **Recensioni e credibilità di prezzi e promo** (badge "Eccellente", countdown, prezzi barrati) | Compaiono in ogni pagina e sono il primo segnale di fiducia per un negozio che non ha la notorietà dei grandi marketplace. Se usate male sono anche un rischio legale (Omnibus). |
| 4 | **Home e pagine categoria** (00, 04, 05) | Sono le porte d'ingresso: portano il cliente dal "sto guardando" al prodotto giusto. "Nuovi arrivi" contiene 733 articoli, quindi trovare le cose è un problema reale. |

Il **carrello** (06) è salvato vuoto e il checkout non c'è, quindi non posso valutare il flusso d'acquisto. Ne parlo solo dove incide sui punti sopra.

---

## Raccomandazioni in ordine di priorità

### 1. Rendere la politica resi coerente con quello che si promette e conforme alla legge  *(priorità massima)*

**Cosa ho trovato nei file:**
- Home, barra servizi e ogni pagina prodotto mostrano in grande **"Reso Gratuito"** e **"Reso Facile 14 gg"**. Scritto più piccolo si legge "per cambio taglia o sostituzione". La pagina resi però dice che nel **reso standard** (quello con rimborso) *"le attività e i costi della spedizione sono a carico del cliente"*, e che dal secondo cambio in poi anche il cambio si paga.
- La pagina resi dice: *"I prodotti … devono essere **recapitati presso il nostro magazzino entro e non oltre 14 giorni dalla ricezione** dell'ordine … altrimenti il reso non verrà accettato"*. La legge invece dà **14 giorni per comunicare il recesso** e **altri 14 giorni da quella comunicazione per restituire i beni** (art. 57 c.1 Codice del Consumo, [Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art57.html)) (A). La regola del sito è più stretta di quella di legge.
- Contrassegno: *"verrà rimborsato l'importo al netto delle spese del contrassegno pari a 4,00€"*. Secondo l'art. 56 c.1 il venditore deve rimborsare *"tutti i pagamenti ricevuti … comprensivi delle spese di consegna"*, e le clausole che limitano il rimborso sono nulle ([Brocardi](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html)) (A). È da verificare con un legale se i 4 € sono un costo di consegna da rimborsare.
- Il **sigillo di garanzia**: *"se il prodotto arriva senza sigillo il reso non verrà accettato"*. Una regola del genere rischia di togliere del tutto il diritto di recesso, mentre la legge prevede al massimo di rispondere della diminuzione di valore del bene. Anche questo è da verificare con un legale.
- "Richiedi un reso" con rimborso passa dall'area personale. Il cambio taglia invece si chiede per email (`[email]`). Sono due procedure diverse per lo stesso bisogno.

**Cosa fare:**
1. Nei badge scrivere la verità in una riga: **"Cambio taglia gratuito entro 14 gg · Reso con rimborso: spedizione a tuo carico"**, oppure valutare il reso gratuito anche per il rimborso (vedi punto 4).
2. Correggere la pagina resi: "14 giorni per richiedere il reso dalla consegna, poi altri 14 giorni per spedirlo". Rimborsare secondo l'art. 56. Far rivedere a un legale la clausola del sigillo e quella del contrassegno.
3. Un solo modulo "Richiedi reso o cambio" nell'area personale/ospite, con il cambio taglia come opzione, al posto dell'email.
4. Da valutare sui propri margini: reso gratuito anche per il rimborso, almeno in Italia. È un'ipotesi (E): gli studi su quanto le politiche di reso cambino acquisti e resi sono singoli e con risultati diversi, e non li ho verificati in questa sessione. La scelta va presa sui dati di resi e margini di [sito].

- **Perché**: obbligo di legge (A); la politica resi pesa per il 13% negli abbandoni del checkout, secondo [Baymard](https://baymard.com/lists/cart-abandonment-rate) (B). Una promessa di "reso gratuito" che poi non vale genera recensioni negative. Nel markup Trustindex c'è già una recensione da 1 stella "Supporto clienti che non risponde".
- **Vale per noi?** Sì: moda online, e quindi resi frequenti per taglia.
- **Come verificarlo**: ticket e chiamate/WhatsApp sul tema resi, recensioni negative sui resi, tasso di abbandono al checkout prima e dopo.

### 2. Promessa di consegna: una sola e mantenibile

**Cosa ho trovato:**
- In pagina prodotto: *"Ordina entro le ore 10:00 e ricevi l'ordine nelle successive 24/48 ore"*.
- Nella pagina spedizioni: *"Una volta accertata la reale disponibilità dei prodotti ordinati, ti invieremo la conferma d'ordine **entro 24 ore dal primo giorno lavorativo successivo** all'acquisto"*. Questo contraddice le 24/48 ore e fa capire che la disponibilità online non è certa (probabile magazzino condiviso con il negozio).
- Il telefono cambia da pagina a pagina: la home mostra solo "Tel. e Wa [telefono]", le pagine prodotto mostrano anche il fisso [telefono].
- La tabella spedizioni ha errori: la Russia compare sia in "Europa 3" (40 €) sia in "Extra UE 2" (75 €); "Honk Kong"; Canarie e Baleari (Spagna) finiscono tra i paesi extra UE a 75 €, mentre la Spagna è in "Europa 1".

**Cosa fare:**
1. Accanto al pulsante "Aggiungi al carrello" mostrare una **data stimata** ("Ordina entro le 10 → consegna prevista lun 29–mar 30 set") invece di "24/48 ore". Baymard consiglia una data di consegna esplicita ([Baymard checkout](https://baymard.com/research/checkout-usability)) (B).
2. Se lo stock non è sincronizzato in tempo reale, sincronizzarlo. Se non si può, dirlo sulla scheda prodotto (es. "disponibile in negozio, conferma entro X"). La prima opzione vale molto di più.
3. Allineare i numeri di contatto in tutte le pagine e correggere la tabella dei paesi.
4. Nel carrello mostrare quanto manca alla spedizione gratuita ("Ti mancano 12 € per la spedizione gratuita"). Molti prodotti costano poco sotto i 100 € (es. la cintura a 76,50 €). È un'ipotesi (E): verificare lo scontrino medio prima e dopo.

- **Come verificarlo**: ritardi rispetto alla data promessa, recensioni che parlano di consegna, conversione del carrello.

### 3. Pagina prodotto: aiutare a scegliere la taglia

**Cosa ho trovato (03-prodotto):**
- "Taglia e Fit" dice solo *"Regular Fit — vestibilità comoda e lineare, aderente al punto giusto senza stringere"*. Mancano le misure del capo, l'altezza del modello e la taglia che indossa.
- "Guida alle taglie" (widget smartsize) compare anche sul **trolley a taglia unica**. Sulla **gift card** compaiono "Dubbi sulla taglia? … Personal Shopper", "Stagione: Gift Card" e "Reso entro 14gg". Sono blocchi di template messi dove non servono.
- Le taglie sono pulsanti (bene: Baymard lo raccomanda). Il Personal Shopper è un buon aiuto umano.
- Le recensioni vicino al pulsante sono quelle del **negozio**, non del prodotto (vedi punto 4). Non c'è nessuna informazione dai clienti su come vestono i capi.
- Screenshot desktop della pagina prodotto: l'area del prodotto è **completamente bianca**. Il codice nasconde i blocchi finché non parte l'animazione `data-cc-animate … fade-in-up`. Può essere un problema della cattura dello screenshot, ma va verificato su browser lenti o con JavaScript in ritardo: se il contenuto dipende dall'animazione, per qualche utente la pagina resta vuota.

**Cosa fare:**
1. Per ogni capo aggiungere le **misure reali** (torace, lunghezza) per taglia e **"il modello è alto 1,85 m e indossa la M"**. Aggiungere anche una nota sulla vestibilità del brand ("K-Way veste regolare, prendi la tua taglia abituale"). Secondo Baymard l'83% dei siti di abbigliamento desktop non dà abbastanza informazioni sulle taglie, e l'84% dei partecipanti ai test le usa per scegliere ([Baymard, apparel best practices](https://baymard.com/blog/apparel-5-best-practices)) (B).
2. Mostrare guida taglie e Personal Shopper solo dove servono (non su taglia unica e gift card). Sulla gift card spiegare invece consegna via email e scadenza, informazioni che ci sono già.
3. Raccogliere **recensioni di prodotto con una valutazione della vestibilità** ("veste piccolo / giusto / grande") e mostrarne il riepilogo accanto alle taglie ([Baymard, fit subscore](https://baymard.com/blog/apparel-provide-aggregate-fit-subscore-in-reviews)) (B). Le prime recensioni contano moltissimo: con 5 recensioni la probabilità di acquisto sale del 270%, di più sui prodotti costosi ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/)) (C).
4. Togliere la dipendenza del contenuto dall'animazione: il contenuto deve essere visibile anche senza JavaScript, e l'animazione deve solo migliorare la resa.

- **Vale per noi?** Sì: capi da 110–350 €, dove la taglia sbagliata vuol dire un reso.
- **Come verificarlo**: quota di resi per "taglia", conversione della pagina prodotto, richieste al Personal Shopper.

### 4. Recensioni e promo: credibili e a norma

**Cosa ho trovato:**
- Nella pagina di ogni prodotto Trustindex inserisce dati strutturati `"@type":"Product","name":"[sito] Fashion"` con `aggregateRating 4.7, ratingCount 1771`. Questi dati presentano le recensioni del **negozio** come se fossero del **prodotto**, e 1771 non coincide con il 1776 mostrato. Google non accetta recensioni del negozio come valutazione di un prodotto: c'è il rischio di perdere le stelle nei risultati di ricerca o di ricevere una penalità.
- Il badge "Eccellente · 1776 recensioni" è ripetuto sotto il prezzo di ogni prodotto e può far pensare che siano recensioni del capo.
- Tra le recensioni ci sono anche voti da 1 e 2 stelle: bene, non sono filtrate (è anche un obbligo di legge).
- Nella home mobile la sezione **"Dicono di noi…"** è un grande spazio vuoto. Il widget non si carica, almeno nella cattura.
- **Countdown**: nel codice la scadenza è fissa, *"30/09/2026 23:59:59 ora italiana"*. Va bene: un timer è ammesso se l'offerta finisce davvero a quell'ora (caso [AGCM PS13027](https://www.agcm.it/media/comunicati-stampa/2026/6/PS13027)) (A). Va garantito che a scadenza timer e sconto spariscano davvero, senza ripartire. I nomi non coincidono: "Flash Weekend FW27" nel codice, "FLASH WEEK" nei prezzi, per una promo di 5 giorni.
- **Omnibus**: i prodotti **nuovi** FW27 mostrano "€130,00 → €110,50 -15%". Il prezzo barrato deve essere il prezzo più basso applicato nei 30 giorni precedenti (art. 17-bis Codice del Consumo, [FAQ MIMIT](https://www.mimit.gov.it/it/assistenza/domande-frequenti/annunci-di-riduzione-di-prezzo-domande-frequenti-faq)) (A). Bisogna verificare che questi capi siano stati davvero in vendita a 130 € prima dello sconto. Lo stesso vale per il "-80%" dell'outlet.

**Cosa fare:**
1. Configurare Trustindex perché nei dati strutturati usi `Organization`/`LocalBusiness` e non `Product` sulle pagine prodotto. Sulle schede tenere il badge del negozio, ma con una scritta chiara ("recensioni sul negozio") e un link.
2. Aggiungere una breve nota "come verifichiamo le recensioni" (obbligo Omnibus, A).
3. Sistemare il widget "Dicono di noi" o toglierlo: uno spazio vuoto dà un'impressione di trascuratezza.
4. Tenere uno storico dei prezzi a 30 giorni e usare quello come prezzo barrato. Uniformare il nome della promo.

### 5. Home e categorie: far trovare il capo giusto più in fretta

**Cosa ho trovato:**
- "Nuovi arrivi" ha **733 articoli**, mostrati 20 alla volta con "Mostra altro". Ogni colore è una scheda separata: 7 schede su 20 sono la stessa maglia Sebastien. Il pulsante "Filtra e ordina" c'è.
- Sotto ogni scheda le taglie disponibili si vedono già (bene).
- Nella home mobile, sotto la prima schermata c'è solo "NEW IN UOMO". I caroselli dei brand mostrano 1 brand e mezzo per volta, e l'outlet ("fino al -80%", probabilmente molto cercato) arriva solo dopo diversi scroll.
- Il banner cookie copre metà dello schermo su mobile. Ha la X di chiusura (`iubenda-cs-close-btn`), ma negli screenshot non si vede. Secondo le [linee guida del Garante 2021](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/9677876) la X deve equivalere a un rifiuto e deve essere riconoscibile (A).

**Cosa fare:**
1. Limitare "Nuovi arrivi" alle ultime settimane, oppure dividerlo subito in Uomo/Donna, e mettere in evidenza i filtri per **taglia** e **brand**. Il problema di un catalogo grande non è il numero di prodotti ma la difficoltà di confrontarli: la soluzione sono filtri e ordinamento, non tagliare il catalogo ([meta-analisi Chernev 2015](https://www.sciencedirect.com/science/article/abs/pii/S1057740814000916)) (B/A).
2. Nelle griglie valutare **una scheda per modello con i pallini colore** invece di una scheda per colore. È un'ipotesi (E): da verificare con un test o confrontando i clic.
3. Home mobile: nella prima schermata mettere Uomo, Donna e Outlet affiancati, e subito dopo la promo in corso. È un'ipotesi (E): misurare i clic dalla home.
4. Rendere la X del banner cookie ben visibile, oppure aggiungere un "Rifiuta" con la stessa evidenza di "Accetta".

### 6. Rifiniture (poco sforzo)
- Correzioni di testo: "Comunity" → "Community", "su le ultime novità" → "sulle ultime novità", "Honk Kong", "kenia", "St kiits and nevis".
- Nella gift card i tagli sono "25–500 €" ma il prezzo mostrato è "Prezzo normale €25,00": meglio "Da 25 €".
- Iscrizione newsletter: dire che cosa si riceve (es. un vantaggio concreto), se c'è davvero.

---

## Limiti dell'analisi

Ho analizzato 9 pagine salvate (HTML, testo e screenshot) e usato le prove dei pacchetti Baymard/NN/g/Spiegel, il Codice del Consumo (art. 56, 57, 17-bis), la FAQ MIMIT su Omnibus, il caso AGCM sui timer e le linee guida cookie del Garante.
**Non ho approfondito**: il checkout (non è nei file), la velocità reale delle pagine (le pagine prodotto HTML pesano circa 560–590 KB e caricano molti script di terze parti, ma senza misure non posso quantificare), l'accessibilità in dettaglio, e i dati sull'effetto del reso gratuito sulle vendite nella moda. Le questioni legali (sigillo, contrassegno, termine di reso) vanno confermate da un legale.
