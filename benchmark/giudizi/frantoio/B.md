# Analisi del sito [sito] cosa cambiare per vendere di più online

*Analisi fatta solo sulla copia salvata il 26/09/2026 (8 pagine: home, 3 schede prodotto, shop, categoria birra, aggiunta al carrello, contatti). Non ho visitato il sito online. Checkout, pagine "Il territorio", "L'oleificio" e "Il ristorante" non sono tra quelle salvate: dove una cosa potrebbe trovarsi lì lo dico.*

---

## 1. Di cosa si occupa l'azienda e cosa deve fare il sito

L'[nome azienda] di Spoleto vende olio extravergine (7 formati, da 10 € a 75 €) e altri prodotti tipici umbri: salse, legumi, pasta, salumi, vini, liquori, biscotti e confezioni regalo. In tutto ci sono **74 prodotti** in un negozio WooCommerce. Ha anche un negozio in centro ([indirizzo]) e un ristorante di famiglia di fronte, "Il Mio Vinaio".

La home stessa dice a cosa serve il sito: *"Per agevolare i clienti più lontani […] abbiamo pensato di creare uno shop online dove acquistare con pochi click"*. Quindi:

- **risultato principale**: ordini online, soprattutto di olio, che è il prodotto di punta, si ricompra e fa quasi tutti gli scontrini più alti (lattine da 3 L e 5 L a 45-75 €);
- **risultato secondario**: turisti e clienti che tornano (chi è passato da Spoleto e vuole ricomprare da casa), visite al negozio e prenotazioni al ristorante.

## 2. Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta per l'obiettivo |
|---|---|---|
| 1 | **Informazioni per decidere l'acquisto: spedizione, costi, resi e chi vende** (valgono per tutto il sito) | Sono il motivo più comune per cui un carrello viene abbandonato. Secondo Baymard, il 40% di chi abbandona lo fa per costi extra come la spedizione e il 12% perché non riesce a calcolare il totale ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B). **Nelle 8 pagine salvate la parola "spedizione" non compare mai.** |
| 2 | **Scheda prodotto dell'olio** | È la pagina in cui si decide se comprare il prodotto più importante. Oggi ha 2 frasi generiche, informazioni obbligatorie mancanti e una frase che contraddice l'etichetta. |
| 3 | **Home page** | È la pagina più visitata e spiega chi è l'azienda. Oggi mostra un prodotto esaurito senza nome, un muro di testo e, su desktop, il titolo non si vede. |
| 4 | **Catalogo (Shop) e navigazione da telefono** | 74 prodotti su 9 pagine. I primi che si vedono sono i salumi, un prodotto esaurito e le confezioni natalizie, non l'olio. Da telefono il prodotto compare solo dopo un lungo elenco di categorie. |

Ho lasciato fuori come area principale i **contatti**: servono, ma incidono meno sulle vendite online. I problemi che ho trovato lì sono comunque nella sezione 7.

---

## 3. Parte 1: spedizione, costi, resi e dati di chi vende

### Cosa ho trovato
- **Non c'è nessuna informazione su spedizione, costi di consegna, tempi, resi o recesso**, né nelle pagine né nel codice (ho cercato "spedizion", "consegn", "gratuit", "reso", "recesso": zero risultati in tutti gli HTML).
- **Il footer è vuoto.** Ci sono solo le icone dei pagamenti (PayPal, Mastercard, Cirrus, Maestro), che per di più non sono cliccabili (`href="#" onclick="return false"`). Mancano i link a privacy, condizioni di vendita e cookie policy. Nel banner dei cookie il link alla privacy è nascosto (`cmplz-hidden`, `href="#"`).
- **La Partita IVA compare solo nella pagina Contatti** (`07-contatti.txt`), non in home né nel footer.
- **Il link a Instagram non porta da nessuna parte** (`href="#" onclick="return false"`), in tutte le pagine.
- **Carrello**: dopo "Aggiungi al carrello" (`06-carrello`) si torna alla home e l'unico segnale è il contatore in alto ("1 Prodotto - €14.00"). Non c'è nessun messaggio né un link "Vai al carrello". In `07-contatti` il contatore mostra "1 Prodotto - €28.00": sembra contare le righe del carrello e non le bottiglie. È un'ipotesi da verificare.

### Raccomandazioni

**1.1 Mostrare costi e tempi di spedizione vicino al pulsante di acquisto, nel carrello e in una pagina "Spedizioni e resi" linkata dal footer**
- **Perché**: il 40% degli abbandoni è dovuto a costi extra e il 12% al totale che non si riesce a calcolare prima. Il 67% dei siti non mostra la spedizione nella pagina prodotto ed è una delle lacune più gravi ([Baymard checkout](https://baymard.com/lists/cart-abandonment-rate), [Baymard pagina prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). Inoltre è **un obbligo di legge**: se i costi di consegna non vengono comunicati prima del contratto, il consumatore non è tenuto a pagarli ([Codice del Consumo art. 49](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art49.html), A).
- **Vale per noi?** Sì, e forse più che per un e-commerce qualsiasi: l'olio è pesante e fragile (vetro), quindi chi compra si chiede subito "quanto mi costa farmelo arrivare?". Proposta concreta: una riga sotto il prezzo, ad esempio *"Spedizione in Italia X €, gratis sopra Y € · consegna in 2-4 giorni lavorativi · imballo antirottura"*.
- **Soglia di spedizione gratuita**: le persone reagiscono al "gratis" molto più di quanto farebbe pensare un piccolo risparmio ([Shampanier, Mazar & Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254), C, esperimenti di laboratorio). La soglia va scelta **sui margini e sul valore medio degli ordini reali**. Esempio da verificare: con la lattina da 3 L a 45 €, una soglia intorno ai 49-59 € spingerebbe ad aggiungere un barattolo di salsa o di legumi (E, ipotesi).
- **Come verificarlo**: tasso di abbandono del carrello e valore medio dell'ordine, confrontando il mese prima e il mese dopo.

**1.2 Footer completo e identità del venditore sempre visibile**
- **Cosa mettere**: ragione sociale, indirizzo, P.IVA, telefono cliccabile, email, link a Condizioni di vendita / Spedizioni e resi / Privacy / Cookie, Instagram funzionante (o toglierlo).
- **Perché**: la legge chiede che i dati del venditore, compresa la P.IVA, siano accessibili "in modo facile, diretto e permanente" ([D.Lgs. 70/2003 art. 7](https://www.cyberlaws.it/en/2019/articolo-7-informazioni-generali-obbligatorie-decreto-legislativo-n-70-2003-sul-commercio-elettronico/), A). Il 19% degli abbandoni è dovuto a sfiducia nel dare i dati della carta ([Baymard](https://baymard.com/lists/cart-abandonment-rate), B). Un footer vuoto con un'icona social rotta non aiuta chi arriva senza conoscere l'azienda.
- **Vale per noi?** Sì. Un piccolo produttore non ha la notorietà di un marchio grande, quindi deve compensare con la trasparenza. Qui il vantaggio è reale: esistono davvero un negozio in centro e un frantoio di famiglia, e vanno fatti vedere.
- **Come verificarlo**: controllo di conformità (sì/no) e, se possibile, domande o email di clienti del tipo "siete affidabili?" / "quanto costa spedire?".

**1.3 Conferma chiara quando si aggiunge un prodotto al carrello**
- **Cosa**: un messaggio sulla stessa pagina, ad esempio "Olio 750 ml aggiunto al carrello · Vai al carrello · Continua gli acquisti", senza riportare l'utente in home. Il contatore dovrebbe contare i pezzi e non le righe.
- **Perché**: anche un pulsante deve far capire cosa è successo ([NN/g, via pacchetto testi](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B come convenzione). Il fatto che il ritorno in home confonda è una mia ipotesi (E): va verificata con 3-5 persone che provano a comprare da telefono.

---

## 4. Parte 2: scheda prodotto dell'olio

### Cosa ho trovato (`02-prodotto`, `03-prodotto`)
- **La descrizione è identica per tutti i formati** e consiste in 2 frasi generiche: *"olio di prima scelta perchè ottenuto dalla spremitura a freddo…"*. Manca tutto quello che serve a chi sceglie un olio: **da dove vengono le olive** (sono olive loro? dell'Umbria? DOP Umbria o no?), **varietà**, **annata/raccolta**, gusto (fruttato leggero o intenso, amaro, piccante), abbinamenti e come conservarlo.
- **La descrizione contraddice l'etichetta.** Nella foto la bottiglia dice **"novello"** e **"non filtrato"** (`02-prodotto-desktop.jpg`), mentre il testo promette che *"profumo, colore e sapore rimangono intatti a lungo"*. Un olio non filtrato ha un deposito e di solito va consumato prima di uno filtrato. Chi compra "novello" vuole sapere di che raccolta è. L'etichetta dice anche **"100% italiano"**, mentre tutto il sito parla dell'Umbria e del "cuore verde dell'Umbria". Il cliente si chiede se l'olio è umbro o genericamente italiano.
- **"Spremitura a freddo"** non è una delle diciture ammesse. La legge riserva *"prima spremitura a freddo"* (presse tradizionali, sotto i 27 °C) ed *"estratto a freddo"* (centrifuga o percolazione, sotto i 27 °C) ([Reg. delegato UE 2022/2104](https://eur-lex.europa.eu/legal-content/IT/TXT/PDF/?uri=CELEX:32022R2104&from=it), A). Scrivere una formula simile ma non regolamentata, per di più senza dire quale sistema si usa, è un rischio.
- **Mancano le informazioni obbligatorie per la vendita a distanza.** Per gli alimenti venduti online, le informazioni obbligatorie dell'etichetta (tranne la data di scadenza/TMC e il lotto) **devono essere disponibili prima dell'acquisto** ([Reg. UE 1169/2011 art. 14](https://portale-etichettatura.lab-to.camcom.it/vendita-distanza/), A). Per l'olio questo significa almeno: categoria, designazione dell'origine nella forma prevista dal Reg. 2022/2104, quantità, conservazione, operatore responsabile e tabella nutrizionale. Per la **pizza al formaggio** (`01-prodotto`) mancano ingredienti e **allergeni** (glutine, latte, uova…). Tra l'altro il titolo dice "Pizza al formaggio" e la descrizione "Torta di Pasqua".
- **Non c'è il prezzo al litro.** I prezzi calcolati dai dati del sito:

  | Formato | Prezzo | €/litro |
  |---|---|---|
  | 500 ml vetro | 10 € | 20,00 |
  | 500 ml lattina | 10 € | 20,00 |
  | 750 ml vetro | 14 € | 18,67 |
  | 1 L lattina | 16 € | 16,00 |
  | 3 L lattina | 45 € | 15,00 |
  | 5 L lattina | 75 € | **15,00** |

  Ci sono due problemi: (a) il prezzo per unità di misura è **obbligatorio anche online** ([Codice del Consumo artt. 14-15](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-ii/capo-iii/sezione-i/art15.html), [Agenda Digitale](https://www.agendadigitale.eu/cultura-digitale/ecommerce-come-deve-essere-indicato-il-prezzo-di-vendita/), A; eventuali esenzioni per piccoli esercizi vanno verificate con un consulente); (b) **la lattina da 5 L costa al litro quanto quella da 3 L**, quindi non c'è nessun motivo di prendere il formato più grande. L'81% dei siti non mostra il prezzo unitario ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B).
- **Da telefono** (`02-prodotto-telefono.jpg`), prima del prodotto compaiono una seconda ricerca ("cerca qui") e l'elenco completo delle 14 categorie. Foto, prezzo e pulsante iniziano solo dopo circa 1.700 px.
- **Non ci sono recensioni** (nessun `aggregateRating` nei dati strutturati) e non ci sono né foto dell'olio versato né foto del frantoio.

### Raccomandazioni (in ordine)

**2.1 Riscrivere la scheda dell'olio mettendo prima quello che fa decidere**
- **Struttura**:
  1. una frase con chi, dove e come: *"Olio extravergine novello non filtrato, dalle nostre olive di [varietà] raccolte a [mese/anno] sulle colline di Spoleto, [estratto a freddo / prima spremitura a freddo, se vero]"*;
  2. un elenco puntato con origine (dicitura di legge), varietà, raccolta, gusto, abbinamenti e conservazione (con spiegazione del deposito se non è filtrato);
  3. la riga su spedizione e resi (punto 1.1);
  4. il blocco "Informazioni in etichetta" con valori nutrizionali, operatore, ecc.
- **Perché**: il 79% degli utenti scorre il testo invece di leggerlo e un testo conciso, facile da scorrere e oggettivo migliora l'usabilità del +124% ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), B). La scheda tecnica è una delle aree con più problemi gravi ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). Le informazioni obbligatorie sono un obbligo di legge (A).
- **Vale per noi?** Sì, ed è il vantaggio principale che il sito oggi non sfrutta. Contro l'olio del supermercato un frantoio di famiglia vince **sui dettagli concreti** (quali olive, quale raccolta, chi lo produce), non su "prima scelta" e "qualità superiore". Questi dati li ha solo l'azienda: vanno chiesti al frantoio.
- **Come verificarlo**: percentuale di visitatori della scheda che aggiungono al carrello, prima e dopo.

**2.2 Sistemare subito le diciture (testo in contraddizione con l'etichetta, "spremitura a freddo")**
- Allineare il testo all'etichetta (novello, non filtrato, 100% italiano o umbro?) e usare solo le diciture ammesse dal Reg. 2022/2104, e solo se sono vere. Livello A. Costa pochissimo e riduce sia il rischio legale sia i clienti delusi.

**2.3 Prezzo al litro visibile e formati grandi convenienti**
- Mostrare "€/L" sotto ogni prezzo, in scheda e in elenco (obbligo, A).
- **Rivedere il prezzo della lattina da 5 L** perché costi meno al litro della 3 L. Oppure creare una vera "scorta annuale" (es. 2×5 L). La lattina grande è il prodotto per il cliente fedele che fa la scorta di stagione: se non conviene, compra la 3 L o va altrove. Ipotesi (E), va decisa sui margini.
- **Come verificarlo**: quanto pesano i formati grandi sul totale degli ordini di olio.

**2.4 Da telefono, prodotto prima delle categorie**
- Spostare ricerca ed elenco categorie **sotto** il prodotto, oppure in un menu a comparsa, nelle schede e nelle liste. Vale lo stesso per `04-categoria` e `05-categoria`.
- **Perché**: il 62% dei siti mobile ha una pagina prodotto "mediocre" o peggio ([Baymard](https://baymard.com/blog/current-state-ecommerce-product-page-ux), B). Dover scorrere 1.700 px per vedere il prodotto è un caso evidente. L'impatto preciso è un'ipotesi (E); per la velocità mobile esiste una correlazione con le conversioni ([Deloitte](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html), C).

**2.5 Raccogliere recensioni vere**
- Dopo la consegna mandare un'email con la richiesta di recensione, pubblicare tutte le recensioni (anche quelle negative) e rispondere, con una breve nota su come vengono verificate.
- **Perché**: un prodotto con 5 recensioni ha una probabilità di acquisto molto più alta di uno senza, e il voto che convince di più è tra 4,0 e 4,7, non 5 ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), C). Recensioni false o filtrate sono vietate e la nota sulla verifica è obbligatoria (direttiva Omnibus 2019/2161, A).
- **Vale per noi?** Probabilmente sì. Se le recensioni Google del negozio e del ristorante sono buone, possono essere collegate già da ora in home e in pagina Contatti.

---

## 5. Parte 3: home page

### Cosa ho trovato (`00-home`)
- **Su desktop il titolo non si vede.** L'`h2` "Un profumo intenso di tradizione e bontà" ha `visibility: hidden` e dipende da un'animazione allo scroll (classe `wow`). Nello screenshot desktop al suo posto c'è un grande spazio bianco. Lo stesso succede a "Seguici" nel footer. Può darsi che in alcuni casi compaia scorrendo, ma se l'animazione non parte il titolo resta invisibile.
- **Subito dopo la foto c'è un muro di 4 paragrafi** centrati, con frasi lunghe e parole come "genuina bontà", "prelibate ricercatezze", "prezioso oro verde". La frase più utile, cioè che si può ordinare online e ricevere a casa, è l'ultima. Ci sono anche errori ("prelibatezze locali che a base del prezioso oro verde…").
- **Il primo prodotto in evidenza è la "Pizza al formaggio"**: è **esaurita** (schema `OutOfStock`), è di Pasqua, compare **senza nome né pulsante** (solo foto e "€17.00") ed è accompagnata da un pallino giallo.
- Nella home non c'è un invito chiaro all'azione ("Scopri l'olio", "Ordina online") e non ci sono link a spedizioni, regali o ristorante. Su telefono il carosello mostra un solo olio alla volta.
- Il cookie banner copre la parte bassa della foto (screenshot desktop e telefono). Il banner è corretto (ha "Nega" allo stesso livello di "Accetta") e va tenuto così.

### Raccomandazioni

**3.1 Nella prima schermata: chi siete, cosa si compra e un pulsante**
- **Esempio**: titolo *"Olio extravergine del nostro frantoio a Spoleto, spedito a casa tua"*, sottotitolo con un fatto concreto (raccolta, famiglia da 40 anni, negozio in [indirizzo]), pulsante **"Acquista l'olio"** e una riga su spedizione e consegna.
- Il titolo deve essere **visibile senza animazione**: togliere la classe `wow` o `visibility:hidden` dai titoli.
- **Perché**: dalla prima frase si capisce la maggior parte di quello che conta. Titoli con informazioni concrete funzionano meglio degli slogan ([NN/g](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/), B).
- **Come verificarlo**: percentuale di visite alla home che proseguono verso lo shop o una scheda prodotto.

**3.2 Mettere in evidenza solo prodotti disponibili e di stagione**
- Togliere dalla home la pizza esaurita. In questo periodo (fine settembre) conviene mettere in evidenza **l'olio nuovo in arrivo** (la raccolta inizia a ottobre-novembre) e le **confezioni regalo di Natale**, che sono già in catalogo con 9 prodotti.
- Proposta (E): una sezione "Olio novello 2026: ordina ora, spediamo appena franto", solo se la data è reale. Timer o scarsità finti sono vietati ([AGCM PS13027](https://www.agcm.it/media/comunicati-stampa/2026/6/PS13027), A).

**3.3 Accorciare il testo "chi siamo" e dargli una struttura**
- Tre blocchi brevi con foto: *Il frantoio* (40 anni, famiglia) · *Il negozio in [indirizzo]* · *Il ristorante Il Mio Vinaio* (con link e telefono). Il testo lungo va nelle pagine "Il territorio" e "L'oleificio" (NN/g, B).

---

## 6. Parte 4: catalogo (Shop) e navigazione

### Cosa ho trovato (`04-categoria`, `05-categoria`)
- **L'ordinamento predefinito apre con "Palle del Nonno", "Coglioni di mulo" e la pizza esaurita** ("Leggi tutto"). L'olio non compare nei primi 9 risultati su 74.
- **Da telefono servono 9 pagine** di un prodotto per riga (screenshot `04-categoria-telefono.jpg` di circa 10.000 px), senza filtri utili oltre a un cursore del prezzo.
- **Ci sono categorie con un solo prodotto** (Birra, Confetture, Pizze, Zafferano): una pagina intera per un solo articolo (`05-categoria`).
- Mancano categorie pensate per il motivo dell'acquisto ("Idee regalo", "Scorta di olio") oltre a quelle per tipo di prodotto.

### Raccomandazioni

**4.1 Ordinamento predefinito: prima l'olio, poi i più venduti; gli esauriti in fondo o nascosti**
- In WooCommerce basta impostare "Popolarità" o un ordinamento manuale e attivare "Nascondi prodotti esauriti". Costa poco e mette il prodotto di punta davanti a chi entra nello shop. Ipotesi (E), coerente con la priorità a ciò che decide l'acquisto (B, NN/g).
- **Come verificarlo**: clic sui primi 3 risultati e aggiunte al carrello dallo shop.

**4.2 Da telefono, griglia a 2 colonne e categorie in un menu**
- Mostrare 2 prodotti per riga e più prodotti per pagina (o "carica altri"), con le categorie in un menu a tendina o a "chip" orizzontali in alto e non come elenco lungo. Stesso principio del punto 2.4 (Baymard, B, per quanto riguarda la qualità mobile generale; l'effetto specifico è un'ipotesi, E).

**4.3 Riorganizzare le categorie in poche voci utili**
- Ad esempio: **Olio** · **Idee regalo e cesti** · **Dispensa umbra** (salse, legumi, pasta, zafferano, confetture) · **Salumi** · **Vini, birre e liquori** · **Dolci e biscotti**. Unire le categorie da un solo prodotto. È un'ipotesi (E): per confermarla basta guardare cosa cercano le persone nella ricerca interna del sito.

---

## 7. Altri interventi rapidi (meno prioritari ma economici)

- **Contatti** (`07-contatti`):
  - telefono cliccabile (`tel:`) e un indirizzo **email** visibile (oggi non ce n'è nessuno);
  - orari del negozio e del ristorante;
  - un link "Prenota un tavolo" per Il Mio Vinaio;
  - la mappa è bloccata finché non si accettano i cookie di marketing: aggiungere accanto un semplice link "Apri in Google Maps", che non richiede consenso;
  - il form non ha né l'informativa privacy né l'oggetto precompilato (ad es. "Ordine / Ristorante / Altro");
  - il pulsante "Invia" dovrebbe dire cosa fa ("Invia messaggio").
- **Dati strutturati**: il `Product` c'è già. Mancano marca, eventuale prezzo per unità e, quando esisteranno, le recensioni. In home aggiungere `LocalBusiness`/`Store` con indirizzo e orari, così la ricerca locale "olio Spoleto" funziona meglio (E).
- **Titoli delle pagine**: "... - [nome azienda]" (con la minuscola) → "... | [nome azienda], Spoleto". La meta description della home si interrompe a metà frase ("…giovani ragazzi").
- **Accessibilità**: le icone dei pagamenti e dei social non hanno testo alternativo (`alt=""`). Anche se l'azienda fosse esente dall'obbligo come microimpresa, WCAG 2.1 AA resta il riferimento pratico (European Accessibility Act / D.Lgs. 82/2022, A per chi non è esente).

---

## 8. Ordine di priorità consigliato

| Priorità | Intervento | Impatto atteso | Affidabilità | Sforzo |
|---|---|---|---|---|
| 1 | Costi/tempi di spedizione in scheda e carrello + pagina Spedizioni e resi (1.1) | Alto | A (legge) + B | Basso |
| 2 | Diciture olio corrette + informazioni obbligatorie e allergeni (2.2, parte di 2.1) | Alto (rischio legale e fiducia) | A | Basso |
| 3 | Footer con P.IVA, condizioni, privacy, contatti; Instagram sistemato (1.2) | Medio-alto | A + B | Basso |
| 4 | Riscrittura della scheda olio con origine, raccolta, gusto (2.1) | Alto | B | Medio (servono dati dal frantoio) |
| 5 | Prezzo al litro + revisione del prezzo della 5 L (2.3) | Medio | A + E | Basso |
| 6 | Home: titolo visibile, pulsante, niente prodotti esauriti, prodotti di stagione (3.1-3.2) | Medio-alto | B + E | Basso |
| 7 | Mobile: prodotto prima delle categorie, griglia a 2 colonne (2.4, 4.2) | Medio | B + E | Medio |
| 8 | Ordinamento shop e riorganizzazione categorie (4.1, 4.3) | Medio | E | Basso |
| 9 | Conferma di aggiunta al carrello (1.3) | Medio | E | Basso |
| 10 | Raccolta recensioni (2.5) | Medio-alto nel tempo | C + A (regole) | Medio |

**Come misurare**: prima di cambiare qualcosa, salvare 4 numeri su 30 giorni: visite, tasso di aggiunta al carrello, tasso di abbandono del carrello e valore medio dell'ordine. Con il traffico di un piccolo e-commerce un test A/B non darebbe risultati affidabili, quindi conviene confrontare prima e dopo per ogni blocco di modifiche, sapendo che è un segnale debole (stagionalità: l'olio nuovo e il Natale fanno salire le vendite comunque).

---

## 9. Limiti di questa analisi

Ho consultato circa 10 fonti: Baymard (checkout, pagina prodotto), NN/g (testi per il web), Spiegel Research Center (recensioni), Deloitte (velocità), Shampanier et al. (effetto "gratis"), Reg. UE 1169/2011 art. 14, Reg. delegato UE 2022/2104, Codice del Consumo artt. 14-15 e 49, D.Lgs. 70/2003 art. 7, AGCM.

Non ho approfondito:
- **il checkout** ("Pagamento"), perché non è tra le pagine salvate: account obbligatorio o no, numero di campi, metodi di pagamento (ad es. Satispay o bonifico) vanno controllati;
- **le pagine "Il territorio", "L'oleificio", "Il ristorante"** (non salvate), dove potrebbero esserci già alcune delle informazioni sull'origine delle olive;
- **l'analisi dei concorrenti** (altri frantoi umbri con shop online);
- **la velocità del sito** misurata (il tema è WordPress con Visual Composer e molti script; il sospetto di lentezza è un'ipotesi);
- **la verifica legale puntuale** dell'etichetta e delle possibili esenzioni: i punti A sono tratti dal testo delle norme, ma non sono consulenza legale.

Se serve posso approfondire uno di questi temi, ad esempio il confronto con 3-4 frantoi concorrenti.
