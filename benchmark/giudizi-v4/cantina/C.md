# [nome azienda]: cosa cambiare nel sito per avere più clienti

**Sito:** [sito], dalla copia salvata il 26/09/2026. Le pagine sono 10: home, 3 schede prodotto, /negozio/, la categoria "Bottiglia singola", la home dopo "aggiungi al carrello", le condizioni di vendita (due copie identiche) e i contatti.
**Metodo:** il sito l'ho analizzato solo dai file (HTML, testo visibile e screenshot da computer e da telefono). Le ricerche esterne le ho usate solo per controllare norme e dati di settore.
**Legenda affidabilità:** **A** = legge o meta-analisi · **B** = ricerca di settore su larga scala (Baymard, Nielsen Norman Group) · **C** = singolo studio · **D** = pratica diffusa · **E** = ipotesi ragionata. Quando una cosa l'ho vista direttamente nei file indico il file e la riga.

---

## In breve

La cantina vende i suoi vini online (WooCommerce, 14 etichette da 10 a 100 €), nel punto vendita in cantina a Spoleto e con le degustazioni. Ha anche un agriturismo collegato, Il Molino Antico, che ha un sito suo. Per il sito i "clienti" sono quindi **ordini online, prenotazioni di degustazioni e visite in cantina**.

Le basi sono buone. Le foto sono belle, le schede tecniche sono ricche e scaricabili in PDF, i prezzi sono chiari e si può aggiungere al carrello direttamente dall'elenco. Telefono, WhatsApp e mappa sono a portata di un tocco, e la spedizione gratuita da 6 bottiglie è comunicata in quasi tutte le pagine. Ci sono però alcuni errori che fanno perdere clienti proprio nei punti decisivi.

**Le 5 cose più urgenti:**

1. **Il pulsante principale della home, "Acquista", porta a una pagina Shop vuota** (/negozio/). È la prima cosa da sistemare: bastano pochi minuti.
2. **Il costo di spedizione sotto le 6 bottiglie non è scritto da nessuna parte.** Nemmeno tempi di consegna e metodi di pagamento compaiono nelle pagine salvate. Le condizioni rimandano a una "guida all'acquisto" che nessuna pagina collega.
3. **Le condizioni di vendita sono superate e in alcuni punti contrarie al Codice del Consumo.** Esempi: rimborso in 30 giorni invece di 14, recesso da confermare con raccomandata entro 48 ore, garanzia con regole abolite nel 2022.
4. **Le schede prodotto non dicono perché scegliere quel vino** né quanto costa e quando arriva. Mancano le recensioni, e il punto di forza "senza pesticidi e diserbanti chimici" è nascosto in una seconda scheda.
5. **Nella pagina Contatti la stessa recensione è firmata da due persone diverse.** Chi se ne accorge smette di fidarsi di tutte le altre.

---

## Le 4 parti del sito che contano di più, e perché

| # | Parte | Perché l'ho scelta |
|---|---|---|
| 1 | **Home e strada verso lo shop** (prima impressione, pulsanti, menu) | Quasi tutti passano di qui, compreso chi arriva da Google cercando la cantina. Se il primo clic su "Acquista" finisce nel vuoto, la vendita si perde prima di cominciare. |
| 2 | **Catalogo e scheda prodotto** | È dove si sceglie il vino. Per un piccolo produttore che il cliente non conosce, qui si decide se fidarsi e cosa comprare. |
| 3 | **Spedizione, carrello e condizioni di vendita** | È il momento in cui si decide se pagare. Secondo Baymard i costi extra sono il primo motivo di abbandono del carrello, e le condizioni sono anche un obbligo di legge. |
| 4 | **Contatti, visite e degustazioni** | È il canale dei clienti che vengono in cantina (punto vendita, degustazioni, agriturismo). Per una cantina vicina a Spoleto conta quanto lo shop, e ogni visita può portare ordini online dopo. |

Ho lasciato fuori blog, "Chi siamo" e vigneti. Contano per l'immagine ma non sono nel percorso che porta a un ordine o a una prenotazione, e comunque non sono nei file.

---

## 1. Home e strada verso lo shop

### Cosa ho trovato

- **Il pulsante "Acquista" della home è un vicolo cieco.** In cima alla home ci sono il titolo "[nome azienda]", la frase "L'espressione più autentica del nostro territorio" e due pulsanti: "Acquista" e "Degustazioni". "Acquista" porta a `[sito]` (`00-home.html` riga 2933). Quella pagina ha il titolo "Shop" e **nessun contenuto**: il blocco del contenuto è vuoto (`04-categoria.html` righe 2724-2742) e lo screenshot `04-categoria-desktop.jpg` mostra solo i riquadri del piè di pagina. Inoltre è impostata come indicizzabile (`index, follow`, riga 40), quindi può comparire su Google come "Shop - [nome azienda]".
  Il menu "SHOP" invece porta a un'altra pagina, `/shop/` (`00-home.html` riga 2352), che non è nei file. Ci sono quindi **due "shop"**, e il pulsante più visibile del sito manda a quello vuoto.
- **Al primo accesso si aprono due finestre una sopra l'altra**: la verifica dell'età e il banner dei cookie. Su telefono il banner copre quasi tutto lo schermo sopra la verifica (`00-home-telefono.jpg`). Il visitatore deve prendere due decisioni prima di vedere un vino.
  La scelta sull'età viene ricordata e non si ripete (impostazione `do_not_show_again`, `00-home.html` riga 5893), e il banner cookie ha "Rifiuta tutto" e "Accetta tutto" ugualmente in evidenza. Queste due cose vanno bene.
- **La frase principale è vaga.** "L'espressione più autentica del nostro territorio" non dice dove, quali vini, né perché comprare qui. La descrizione per Google ha un messaggio migliore, che nella pagina non compare: "Ci troviamo a Spoleto, terra del Trebbiano Spoletino!" (`00-home.html` riga 60).
- **La barra "Spedizione gratuita a partire da 6 bottiglie" c'è in tutte le pagine tranne la home**, cioè proprio dove arriva più gente.
- **I menu sono diversi da computer e da telefono** (`00-home.html` righe 2305-2373 e 2566-2589):
  - chi usa il **computer** vede Chi siamo, I nostri vini, Degustazioni, Agriturismo, Shop, Vendita diretta e Contatti, ma non Riserve di cantina, Magnum e Offerte;
  - chi usa il **telefono** vede Shop con Riserve di cantina, Magnum e Offerte, più Blog e Login, ma non trova nel menu Agriturismo e Vendita diretta.
- **Tre indirizzi diversi per le degustazioni:** `/degustazioni/` nel menu, `/le-nostre-degustazioni/` nel pulsante della home, `/experiences/degustazioni/` nei riquadri a piè di pagina (`04-categoria.html` riga 2816). Dai file non posso sapere quali funzionano. Almeno due sono probabilmente vecchi indirizzi.
- **Dettagli trascurati:**
  - il refuso "Conosci la **nosta** cantina" (`00-home.html` righe 3054 e 3143);
  - "© COPYRIGHT 2021" nel piè di pagina;
  - due frasi che sembrano in contrasto: "Da oltre trent'anni cerchiamo di valorizzare…" e "La nostra cantina nasce nel Maggio del 2005".

### Raccomandazioni (in ordine)

**1.1 Sistemare subito "Acquista" e la pagina /negozio/**
- **Cosa:** far puntare "Acquista" alla pagina shop vera. Poi scegliere un'unica pagina negozio:
  - o si riempie /negozio/ con i prodotti,
  - oppure la si reindirizza in modo permanente (redirect 301) a /shop/.

  Va controllata anche l'impostazione di WooCommerce "Pagina negozio" (Impostazioni → Prodotti). Se punta a /negozio/, probabilmente ci portano anche il pulsante "Ritorna al negozio" del carrello vuoto e altri link automatici. È un'ipotesi da verificare.
- **Perché:** l'ho visto nei file. Il pulsante principale della home porta a una pagina vuota.
- **Vale per noi?** Sì, ed è il difetto con il rapporto costo/beneficio migliore di tutto il sito.
- **Rischio:** nessuno.
- **Come verificarlo:** cliccare "Acquista" da telefono e da computer. Poi guardare in Search Console le visite a /negozio/ prima e dopo.

**1.2 Una frase in cima che dica cosa si trova e cosa conviene**
- **Cosa:** sostituire lo slogan con fatti concreti, per esempio: *"Vini di Spoleto: Trebbiano Spoletino, Grechetto e Sangiovese dalle nostre vigne · Spedizione gratuita da 6 bottiglie · Degustazioni in cantina su prenotazione"*. Aggiungere in home la barra della spedizione gratuita.
- **Perché:** il 79% degli utenti osservati da Nielsen Norman Group scorre la pagina invece di leggerla, e i testi concisi e oggettivi risultano molto più usabili di quelli promozionali ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), **B**).
- **Rischio:** basso.
- **Come verificarlo:** quanti clic ricevono i pulsanti della home (si può misurare con Google Tag Manager, che è già installato).

**1.3 Un solo passaggio all'ingresso.** La verifica dell'età va tenuta: la usano tutte le cantine (**D**). Il banner dei cookie però andrebbe mostrato *dopo* la verifica, non insieme, e su telefono dovrebbe essere più compatto. È un'ipotesi (**E**) basata su quello che mostrano gli screenshot. Per controllarla si confronta, prima e dopo, quanti escono dalla prima pagina senza fare nulla.

**1.4 Un solo menu uguale su computer e telefono**, con le stesse voci: Vini/Shop (con le sotto-voci Riserve e Magnum), Degustazioni, Agriturismo, Vendita in cantina, Chi siamo e Contatti. Per le degustazioni si tiene un solo indirizzo e gli altri si reindirizzano a quello (redirect 301).

**1.5 Piccole correzioni:** il refuso "nosta", l'anno del copyright, e le due frasi su "trent'anni" e "2005" (per esempio: "Coltiviamo queste terre da oltre 30 anni; la cantina è nata nel 2005").

---

## 2. Catalogo e scheda prodotto

### Cosa ho trovato: il catalogo (`05-categoria`, "Bottiglia singola")

- **Cosa funziona:** 14 vini con foto, prezzo, quantità e "Aggiungi al carrello" direttamente dall'elenco.
- **Manca proprio il vino più lodato.** Il *Trebbiano Spoletino Superiore 2022 – Spoleto DOC* (20 €) c'è nel carosello della home e tra i "prodotti correlati", ma non nell'elenco della categoria. Eppure è il vino che citano le recensioni: "Vini tipici e di qualità, in particolare il Trebbiano Spoletino" e "Un ottimo esempio di #trebbianospoletino superiore in purezza. Siamo felici di proporlo nella nostra carta dei vini" (`09-contatti.txt` righe 160 e 164).
- **Non si possono filtrare o raggruppare i vini** per bianchi, rossi, rosato, bollicine o vecchie annate, né ordinarli. Sotto il nome non c'è nessuna riga descrittiva (per esempio "bianco fresco e agrumato"). Per capire la differenza tra La Pettinata, Lo Spettinato e Araminto bisogna aprire ogni scheda.
- **Su computer si vede un errore:** accanto a ogni selettore della quantità compare la scritta "**Qt&#224**" (`05-categoria-desktop.jpg`). Il foglio di stile contiene `content:"Qt&#224;:"` (`05-categoria.html` riga 990), ma nel CSS le entità HTML non vengono tradotte. Va scritto `"Qtà:"` oppure `"Qt\00E0:"`.
- **Le vecchie annate sono mescolate alle annate correnti senza spiegazione:** Soviano Regale 2005 a 100 €, Araminto 2010 a 25 €, Cruèn 2015 e 2016. Per regali e appassionati sono un punto di forza raro, ma oggi sembrano solo prodotti più cari.
- Il nome "Rosso di [nome azienda]- Umbria IGT Rosso" non ha l'annata e ha il trattino attaccato alla parola.

### Cosa ho trovato: la scheda prodotto (`01`, `02`, `03`)

- **In alto** ci sono solo nome, prezzo, quantità e "Aggiungi al carrello". Seguono due schede da aprire:
  - **"Scheda tecnica"**, ottima: vitigno, gradazione, affinamento, profumo, gusto, abbinamenti, temperatura e PDF;
  - **"Caratteristiche dei vigneti"**, chiusa per impostazione, che contiene la frase **"Senza utilizzo di pesticidi e diserbanti chimici"** (`01-prodotto.html` riga 2872). È il fatto più convincente della pagina e quasi nessuno lo vede.
- **Manca un paragrafo che dica in due righe perché scegliere quel vino**: per quale occasione, che stile, cosa lo distingue.
- **Accanto al pulsante mancano** il costo e i tempi di spedizione, i metodi di pagamento e le informazioni sul reso.
- **Non ci sono recensioni** sul prodotto.
- **I "Prodotti correlati" non hanno il prezzo** (`01-prodotto-desktop.jpg`; `01-prodotto.txt` righe 47-55).
- **L'annata cambia tra la pagina e i risultati di Google:**
  - *Araminto*: la pagina dice "2020", ma l'indirizzo è `…araminto-2019` e la descrizione per Google dice "Araminto 2019" (`01-prodotto.html` righe 59-61);
  - *La Pettinata*: la pagina dice "2024", ma indirizzo e titolo per Google dicono "2022" (`03-prodotto.html` righe 59-61).

  Chi cerca su Google vede un'annata diversa da quella che compra.
- **Mancano i dati strutturati "Product"** (ci sono solo WebPage, Breadcrumb e Organization: `01-prodotto.html` riga 74). Senza, Google non può mostrare prezzo e disponibilità nei risultati di ricerca.

### Raccomandazioni (in ordine)

**2.1 Accanto al pulsante: quanto costa in totale e quando arriva**
- **Cosa:** sotto "Aggiungi al carrello", 3-4 righe fisse:
  - "Spedizione X € · **gratuita da 6 bottiglie**";
  - "Spedito entro 5 giorni lavorativi": è già scritto nelle condizioni, punto 6.2;
  - i metodi di pagamento;
  - "Reso entro 14 giorni";
  - un link alla pagina "Spedizioni e pagamenti".

  Se la soglia delle 6 bottiglie vale anche per bottiglie di vini diversi, va scritto ("anche miste").
- **Perché:**
  - il 67% dei siti analizzati da Baymard non mostra nella scheda prodotto una stima della spedizione o del costo totale, e questa è una delle aree con più problemi gravi ([Baymard, pagina prodotto](https://baymard.com/blog/current-state-ecommerce-product-page-ux), **B**);
  - tra chi abbandona il checkout, il 40% lo fa per costi extra troppo alti e il 12% perché non riusciva a calcolare il totale in anticipo ([Baymard, abbandono carrello](https://baymard.com/lists/cart-abandonment-rate), **B**).
- **Vale per noi?** Sì, anzi di più. Qui il costo sotto le 6 bottiglie non si trova da nessuna parte (vedi parte 3), e per il vino la spedizione pesa molto rispetto al prezzo di una bottiglia da 10-15 €.
- **Rischio:** se il costo è alto, mostrarlo presto può scoraggiare qualcuno subito. Ma è meglio che scoprirlo alla cassa, ed è quello che la legge chiede comunque prima dell'ordine (parte 3).
- **Come verificarlo:** nella funnel di GA4, la percentuale di chi passa dal carrello all'acquisto, prima e dopo.

**2.2 Due righe iniziali di "perché" e i fatti chiave in vista**
- **Cosa:** per ogni vino, 2-3 righe prese dalla scheda che c'è già. Per esempio, per La Pettinata: *"Trebbiano Spoletino in purezza, fresco e agrumato. Per antipasti, pesce e cucina orientale; da servire a 10-12°."* Poi una riga visibile con "Da vigneti coltivati senza pesticidi e diserbanti chimici", presa dal secondo tab. Va usata esattamente la frase che la cantina già dichiara, senza trasformarla in "biologico" se il vino non è certificato: la frase deve essere vera e dimostrabile.
- **Perché:** chi legge sul web vede soprattutto la prima frase e i primi punti di un elenco ([NN/g](https://www.nngroup.com/articles/how-users-read-on-the-web/), **B**). Secondo Baymard la scheda tecnica è una delle aree con più problemi gravi (**B**, link sopra).
- **Rischio:** testi troppo lunghi o da venditore ("il migliore", "straordinario") fanno perdere credibilità. Meglio fatti che aggettivi.
- **Come verificarlo:** il tasso di aggiunta al carrello per scheda, prima e dopo.

**2.3 Recensioni sui prodotti, vere e verificate**
- **Cosa:** attivare le recensioni di WooCommerce con l'etichetta "acquirente verificato" e mandare una mail di richiesta qualche giorno dopo la consegna. Le recensioni negative vanno pubblicate e va data una risposta. Una breve nota deve spiegare come vengono verificate.
- **Perché:**
  - nello studio dello Spiegel Research Center un prodotto con 5 recensioni ha una probabilità di acquisto molto più alta di uno senza (+270%). Il massimo si raggiunge con un voto medio tra 4,0 e 4,7 ([Spiegel Research Center](https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/), **C**);
  - per legge, se si dice che le recensioni vengono da clienti veri bisogna adottare misure per verificarlo, e sono vietate le informazioni false sulle recensioni ([art. 23, lett. bb-ter e bb-quater Codice del Consumo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-iii/capo-ii/sezione-i/art23.html), **A**).
- **Vale per noi?** Sì: un piccolo produttore sconosciuto ha bisogno di fiducia più di un marchio noto. Le prime 5 recensioni per vino sono quelle che contano di più.
- **Rischio:** con pochi ordini ci vorrà tempo. Nel frattempo si possono mostrare le recensioni Google o Facebook della cantina, con la loro fonte (parte 4).

**2.4 Catalogo: rimettere in elenco il Trebbiano Spoletino Superiore e aiutare il confronto**
- **Cosa:**
  - aggiungere il Trebbiano Spoletino Superiore alla categoria;
  - mettere in cima dei filtri a pulsante (Bianchi · Rossi · Rosato · Bollicine · Vecchie annate);
  - aggiungere sotto ogni nome una riga di descrizione (per esempio "Bianco · fresco, agrumato");
  - correggere "Qt&#224";
  - raccogliere le vecchie annate in una sezione "Dalla nostra cantina: vecchie annate", con due righe di spiegazione (conservazione, per chi sono, idea regalo).
- **Perché:** molte opzioni pesano solo quando è difficile confrontarle. La soluzione quindi non è togliere vini ma aiutare a scegliere, e le meta-analisi trovano che l'effetto "troppa scelta" in media è quasi nullo ([Scheibehenne et al. 2010](https://academic.oup.com/jcr/article-abstract/37/3/409/1827647), **A**). Il Trebbiano mancante e l'errore "Qt&#224" li ho visti nei file.
- **Rischio:** basso.

**2.5 Prezzi nei correlati, annate giuste per Google e dati strutturati**
- mostrare il prezzo nei "Prodotti correlati";
- usare indirizzi senza annata (per esempio `/prodotto/araminto-grechetto-colli-martani-doc/`), che restano validi anche quando cambia l'annata, con un redirect 301 dai vecchi indirizzi;
- aggiornare titoli e descrizioni per Google con l'annata in vendita;
- attivare i dati strutturati Product con prezzo e disponibilità, tramite il plugin SEO già in uso o un suo modulo per WooCommerce.

Sono pratiche comuni (**D**) e lavoro di mezza giornata.

---

## 3. Spedizione, carrello e condizioni di vendita

### Cosa ho trovato

- **L'unica informazione sulla spedizione è "Spedizione gratuita a partire da 6 bottiglie".** In nessuna delle pagine salvate compaiono:
  - il costo per 1-5 bottiglie;
  - le zone servite (isole? estero?);
  - i tempi, il corriere e l'imballo;
  - i metodi di pagamento.

  Le condizioni dicono che *"le modalità, i tempi e i costi di spedizione sono chiaramente indicati e ben evidenziati all'indirizzo [sito]'-acquisto"* (`07-condizioni.txt` riga 68). Nessuna pagina però contiene un link a quella guida: la parola "guida" compare solo nelle condizioni.
- **Il mini-carrello** mostra prodotto e subtotale, con i pulsanti "Visualizza carrello" e "Pagamento" (`06-carrello.txt`). Le pagine carrello e checkout vere non sono nei file, quindi non ho potuto analizzarle.
- **Da verificare:** dopo l'aggiunta al carrello, il metodo di spedizione scelto in automatico risulta `local_pickup:2`, cioè il ritiro in cantina (`06-carrello.html` riga 435). In questo caso il carrello mostrerebbe un totale senza spedizione, e il costo comparirebbe solo più avanti. È esattamente il "costo a sorpresa" che Baymard indica come prima causa di abbandono.
- **Le condizioni di vendita** (`07-condizioni.txt`) sono un testo vecchio, con più regole superate e alcune incoerenze:

| Cosa dicono le condizioni | Cosa prevede oggi la legge | Livello |
|---|---|---|
| 13.1 recesso entro "14 giorni **lavorativi**" dal ricevimento | 14 giorni (di calendario) da quando il cliente riceve il bene ([art. 52 Cod. Consumo](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html)). "Lavorativi" è più generoso e non è vietato, ma è ambiguo: meglio "14 giorni" | A |
| 13.2 se mancano le informazioni sul recesso, il termine diventa di **90 giorni** | Si allunga di **12 mesi** ([art. 53](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art53.html)) | A |
| 13.3 recesso con raccomandata A/R, fax o email **da confermare con raccomandata entro 48 ore** o con PEC | Il cliente può usare il **modulo tipo** oppure **qualsiasi dichiarazione esplicita** ([art. 54](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art54.html)). L'obbligo di conferma con raccomandata va tolto e va aggiunto il modulo tipo | A |
| 5.2 e 13.7 rimborso **entro 30 giorni** | **Entro 14 giorni**, comprese le spese di consegna iniziali ([art. 56](https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html)) | A |
| 11.3 il cliente perde i diritti se non denuncia il difetto **entro 2 mesi** | Obbligo **eliminato** per i contratti dal 1/1/2022 (D.Lgs. 170/2021; [art. 133](https://www.brocardi.it/codice-del-consumo/parte-iv/titolo-iii/capo-i/art133.html), [sintesi](https://legal-team.it/codice-del-consumo-le-modifiche-apportate-dal-d-lgs-170-del-2021/)) | A |
| 11.4 difetti presunti già presenti se compaiono **entro 6 mesi** | **Entro 1 anno** (art. 135, D.Lgs. 170/2021, [sintesi](https://legal-team.it/codice-del-consumo-le-modifiche-apportate-dal-d-lgs-170-del-2021/)). Anche il richiamo all'"art. 130 comma 4" è a una numerazione superata | A |
| 15 privacy: "diritti di cui all'art. 7 del d.lgs. 196/2003" | Articolo **abrogato** dal D.Lgs. 101/2018; oggi valgono gli artt. 15-22 del GDPR ([Brocardi](https://www.brocardi.it/codice-della-privacy/parte-i/titolo-ii/art7.html)) | A |

- **Altre incoerenze nelle condizioni:**
  - le clausole da 10.2 a 10.7 sono ripetute uguali dopo la 11.8 (copia-incolla);
  - nel testo sono rimasti numeri di note a piè di pagina ("n. 1961", "196/2003)22");
  - il venditore è "[nome azienda], [indirizzo], [indirizzo], Gualdo Cattaneo", mentre il sito mostra "[indirizzo], Spoleto";
  - il recesso va inviato a `[email]` o via fax, mentre i contatti del sito sono `[email]` e WhatsApp.

  Chi vuole fare un reso o un reclamo non sa bene a chi scrivere.
- Il punto 19.2 cita la "Convenzione di Roma del 1980" come norma di riferimento. Non l'ho verificato: va fatto controllare dal legale insieme al resto.

### Raccomandazioni (in ordine)

**3.1 Una pagina "Spedizioni, pagamenti e resi" chiara e raggiungibile da ovunque**
- **Cosa:** una sola pagina con:
  - una tabella dei costi (1-5 bottiglie; da 6 gratis; isole; estero, se c'è);
  - tempi di consegna, corriere e imballo antirottura;
  - cosa fare se una bottiglia arriva rotta;
  - metodi di pagamento;
  - reso in 14 giorni.

  Va collegata dalla barra in alto (che diventa: "Spedizione X € · gratuita da 6 bottiglie →"), dalla scheda prodotto, dal carrello e dal piè di pagina. L'indirizzo deve essere quello citato nelle condizioni, oppure bisogna aggiornare le condizioni.
- **Perché:** i costi extra sono il primo motivo di abbandono del checkout (40%) e il 12% abbandona perché non vede il totale in anticipo ([Baymard](https://baymard.com/lists/cart-abandonment-rate), **B**). Indicare prima dell'ordine le spese di consegna è anche un obbligo di legge (**A**; le condizioni stesse, al punto 7.2, lo riconoscono).
- **Vale per noi?** Sì. Oggi chi compra 2 bottiglie non ha modo di sapere quanto spenderà finché non arriva alla cassa.
- **Come verificarlo:** il tasso di abbandono tra carrello e ordine completato, prima e dopo.

**3.2 Carrello: totale vero e quanto manca alla spedizione gratuita**
- **Cosa:**
  - nel carrello e nel mini-carrello: "Spedizione: X € – aggiungi ancora N bottiglie per averla gratis";
  - il ritiro in cantina come scelta esplicita, non già selezionata (verificare cosa succede oggi);
  - valutare una "cassetta da 6 a scelta" o una "cassetta degustazione" già pronta, che fa arrivare alla soglia con un clic (se esistono già delle cassette, controllare che non costino più delle bottiglie singole).
- **Perché:** le persone reagiscono a "gratis" in modo sproporzionato rispetto a un piccolo costo ([Shampanier, Mazar & Ariely 2007](https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254), **C**, esperimenti di laboratorio). L'indicatore "ti mancano N bottiglie" è un'ipotesi (**E**): è coerente con questo effetto, ma non ho trovato prove indipendenti sul comportamento reale.
- **Rischio:** se la soglia viene raggiunta spesso, cala il margine sulla spedizione. Va controllato il valore medio degli ordini.
- **Come verificarlo:** quota di ordini da 6 bottiglie o più, e valore medio dell'ordine.

**3.3 Riscrivere le condizioni di vendita (con un legale)**
- **Cosa:** correggere tutti i punti della tabella:
  - 14 giorni; rimborso in 14 giorni; recesso con qualsiasi dichiarazione esplicita e **modulo tipo allegato**;
  - garanzia secondo il D.Lgs. 170/2021; GDPR;
  - togliere i paragrafi duplicati e le note rimaste nel testo;
  - scrivere chiaramente che "[nome azienda] è un marchio dell'[nome azienda]";
  - usare un solo recapito per resi e reclami (email e telefono del sito).
- **Perché:** sono obblighi di legge (**A**, fonti in tabella). Clausole contrarie alla legge non valgono. In più chi le legge prima di comprare (soprattutto per ordini costosi come il Soviano Regale 2005 a 100 €) trova regole scomode, come raccomandata e fax, che frenano l'acquisto: il 13% di chi abbandona lo fa per la politica dei resi ([Baymard](https://baymard.com/lists/cart-abandonment-rate), **B**).
- **Rischio:** nessuno. Non è consulenza legale: la revisione finale va fatta da un professionista.

**3.4 Maggiore età al momento dell'acquisto**
- **Cosa:** aggiungere nel checkout la casella "Dichiaro di avere almeno 18 anni" e dire al corriere di consegnare solo a maggiorenni.
- **Perché:** la legge vieta di vendere alcolici ai minori e obbliga chi vende a chiedere un documento, salvo quando la maggiore età è evidente ([art. 14-ter L. 125/2001](https://www.ufficiocommercio.it/divieto-di-vendita-alcolici-ai-minori-di-anni-18/), **A**). La fonte non chiarisce come si applichi alla vendita online, quindi il modo di farlo è un'ipotesi prudente (**E**), da confermare con il legale. La verifica all'ingresso del sito da sola non basta a dimostrare nulla.

---

## 4. Contatti, visite e degustazioni

### Cosa ho trovato (`09-contatti`)

- **Cosa funziona:** indirizzo con mappa, telefono cliccabile, email, WhatsApp, orari chiari (lun-ven 8:00-12:30 e 14:30-18:00; sabato 9:00-12:30, pomeriggio su prenotazione; domenica chiuso) e tre riquadri: Punto vendita, Degustazioni ("Prenota ora") e Agriturismo.
- **"Prenota ora" porta a `/degustazioni`**, che non è nei file. Non so quindi se la prenotazione si faccia online, con un modulo o solo per telefono. Ci sono poi i tre indirizzi diversi per le degustazioni (parte 1).
- **La stessa recensione compare due volte con due firme diverse.** Il testo "Cantina immersa in uno scenario naturale e rilassante. Vini tipici e di qualità, in particolare il Trebbiano Spoletino…" è firmato una volta **[nome]** e una volta **[nome]** (`09-contatti.html` righe 4053-4056 e 4093-4096). Lo stesso [nome] ha anche la sua recensione vera, in danese. È quasi certamente un errore di copia, ma chi scorre il carosello lo nota.
- **Le recensioni non hanno data, voto né collegamento alla fonte** (è indicato solo "Facebook"), e compaiono solo in questa pagina: non in home, non nelle schede prodotto, non vicino a "Prenota ora".
- Gli orari del punto vendita sono solo in questa pagina, non nel piè di pagina.

### Raccomandazioni (in ordine)

**4.1 Correggere subito la recensione con la firma sbagliata e rendere le recensioni verificabili**
- **Cosa:** togliere il doppione. Mostrare 4-6 recensioni reali (Google e Facebook) con nome, data e link alla fonte, e riportarne 2-3 in home e nella pagina delle degustazioni.
- **Perché:** una recensione attribuita alla persona sbagliata è un'informazione falsa su una recensione, e la legge vieta di diffonderne ([art. 23 lett. bb-quater Codice del Consumo](https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-iii/capo-ii/sezione-i/art23.html), **A**; se un errore di copia rientri in questo divieto è da valutare). Inoltre le recensioni concrete sono il tipo di riprova sociale con le prove più solide (Spiegel, **C**, link sopra).
- **Rischio:** nessuno. Ci vogliono 10 minuti.

**4.2 Degustazioni: un indirizzo solo e una prenotazione senza attese**
- **Cosa:**
  - un solo indirizzo, con redirect 301 dagli altri due;
  - nella pagina: tipi di degustazione, durata, prezzo a persona, lingue (le recensioni sono anche in inglese e danese, quindi ci sono turisti stranieri), giorni e orari;
  - la prenotazione con un modulo semplice, un calendario, oppure un pulsante WhatsApp con messaggio già scritto ("Vorrei prenotare una degustazione per __ persone il giorno __").
- **Perché:** è un'ipotesi (**E**). La pagina non è nei file, quindi prima va guardata. Il principio però è lo stesso del carrello: meno passaggi e informazioni chiare prima di impegnarsi (Baymard, **B**, sul checkout).
- **Come verificarlo:** il numero di prenotazioni al mese, e quante arrivano da sito o WhatsApp rispetto al telefono.

**4.3 Piccole cose utili:** gli orari del punto vendita nel piè di pagina; il link WhatsApp con un messaggio già pronto; e nella pagina delle degustazioni, un invito a proseguire dopo la visita ("Ti è piaciuto un vino? Lo spediamo a casa, gratis da 6 bottiglie").

---

## Altre cose trovate (priorità più bassa)

- **Velocità.**
  - La home carica **83 fogli di stile e 64 script** (`00-home.html`), e il file HTML da solo pesa 646 KB.
  - Font Awesome, la libreria delle icone, è caricata almeno 5 volte in versioni diverse (righe 137, 143-144, 233, 267-268, 378-380).
  - I file del tema sono del 2021.

  Conviene misurare con PageSpeed Insights sul telefono ed eliminare doppioni e plugin inutili. Uno studio su 37 marchi ha trovato che 0,1 secondi in meno sul telefono vanno insieme a +8,4% di conversioni ([Deloitte 2020](https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html), **C**: è una correlazione, non un esperimento).
- **Due informative privacy diverse:** nel piè di pagina da computer il link porta all'informativa iubenda `86923543`, in quello da telefono alla `32475727` (`09-contatti.html` righe 4848 e 4892). Ne va tenuta una sola, quella aggiornata.
- **Accessibilità.**
  - I titoli animati sono scritti lettera per lettera, ogni lettera in un elemento separato (per esempio "Shop On Line", `04-categoria.html` righe 2767-2776). I lettori di schermo potrebbero leggerli lettera per lettera: va provato con VoiceOver o NVDA.
  - I riquadri color sabbia con testo scuro ("Acquista i nostri vini", "Le nostre degustazioni") sembrano poco contrastati: va controllato con un verificatore di contrasto.

  L'obbligo di accessibilità per l'e-commerce (European Accessibility Act, dal 28/06/2025) esenta le microimprese sotto i 10 dipendenti e i 2 milioni di fatturato ([fonte](https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022), **A**). La cantina probabilmente rientra tra le esenti, ma sistemarle migliora il sito per tutti.
- **Titolo nascosto:** in home c'è una sezione con un secondo titolo principale ("Benvenuti nel sito della [nome azienda]") nascosta su tutti i dispositivi (`00-home.html` riga 2785). Si può eliminare.

---

## Piano in ordine di priorità

| # | Cosa | Dove | Impegno | Impatto atteso | Affidabilità |
|---|---|---|---|---|---|
| 1 | "Acquista" verso lo shop vero; /negozio/ riempita o reindirizzata con 301 | Home, WooCommerce | 15 min | Alto | Visto nei file |
| 2 | Togliere la recensione con la firma sbagliata | Contatti | 10 min | Medio (fiducia, rischio legale) | A |
| 3 | Costi di spedizione, tempi e pagamenti visibili: barra, scheda, carrello, pagina dedicata | Tutto lo shop | 1-2 giorni | Alto | B |
| 4 | Riscrivere le condizioni di vendita (con un legale) | Condizioni | 1 giorno + legale | Alto (rischio e fiducia) | A |
| 5 | Scheda prodotto: righe "perché", fatti chiave in vista, info accanto al pulsante, prezzi nei correlati | 14 schede | 1-2 giorni | Medio-alto | B |
| 6 | Catalogo: Trebbiano Spoletino Superiore in elenco, errore "Qt&#224", filtri per tipo, sezione vecchie annate | Categoria | ½ giorno | Medio | Visto nei file + A |
| 7 | Recensioni prodotto verificate e mail dopo la consegna | Schede | ½ giorno + tempo | Medio-alto nel tempo | C + A |
| 8 | Degustazioni: un solo indirizzo, pagina chiara, prenotazione diretta | Degustazioni | 1 giorno | Medio | E |
| 9 | Home: frase concreta, barra spedizione, un popup alla volta, refuso, copyright | Home | ½ giorno | Medio | B / E |
| 10 | Menu uguale su computer e telefono | Intestazione | 1 ora | Medio-basso | Visto nei file |
| 11 | Velocità: eliminare doppioni e plugin inutili | Tecnico | 1-3 giorni | Medio | C |
| 12 | Indirizzi e titoli con l'annata giusta, dati strutturati Product | SEO | ½ giorno | Medio-basso | D |
| 13 | Casella "maggiorenne" nel checkout, una sola privacy, contrasto e titoli animati | Vari | poche ore | Basso (prudenza) | A / E |

## Come misurare i risultati

- Google Tag Manager con i dati e-commerce è già installato (i dati dei prodotti per il tracciamento sono nel codice delle schede, `01-prodotto.html` riga 2783). Conviene impostare in GA4 la funnel scheda → carrello → checkout → acquisto e confrontare le 4 settimane prima e dopo ogni intervento.
- Con il traffico di una piccola cantina un test A/B non darebbe risultati affidabili. Meglio fare un confronto prima/dopo, sapendo che è un segnale debole, e intervenire un blocco alla volta.
- Da contare a parte: clic su WhatsApp e sul telefono, prenotazioni di degustazioni (e da dove arrivano), visite a /negozio/ in Search Console.

## Limiti dell'analisi

- **Non ho potuto vedere** la pagina /shop/ del menu, il carrello, il checkout, le pagine delle degustazioni e della vendita in cantina, il sito dell'agriturismo, la versione inglese e le pagine Riserve, Magnum e Offerte, perché non sono nei file. Il checkout in particolare va provato con un ordine di prova, da telefono.
- Negli screenshot la verifica dell'età e il banner dei cookie coprono la parte alta di ogni pagina. Per quella zona mi sono basato sull'HTML e sul testo visibile.
- Non ho potuto provare i link (per esempio quale dei tre indirizzi delle degustazioni funziona) perché la regola era di non visitare il sito online.
- **Ricerca esterna:** ho consultato circa 10 fonti. Sul lato legale: Codice del Consumo artt. 23, 52, 53, 54, 56, 133 e D.Lgs. 170/2021, abrogazione dell'art. 7 del Codice privacy, vendita di alcolici ai minori. Sui dati di settore: Baymard, NN/g, Spiegel, Deloitte, Shampanier et al., Scheibehenne et al. **Non ho approfondito:**
  - studi specifici sulla vendita online di vino (le fonti trovate riguardavano mercati o piattaforme diverse);
  - come applicare concretamente la verifica dell'età alla vendita online;
  - il riferimento alla Convenzione di Roma nelle condizioni.

## Fonti

- Baymard Institute, abbandono carrello: https://baymard.com/lists/cart-abandonment-rate (B)
- Baymard Institute, usabilità checkout: https://baymard.com/research/checkout-usability (B)
- Baymard Institute, stato delle pagine prodotto: https://baymard.com/blog/current-state-ecommerce-product-page-ux (B)
- Nielsen Norman Group, come si legge sul web: https://www.nngroup.com/articles/how-users-read-on-the-web/ (B)
- Spiegel Research Center, recensioni e vendite: https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/ (C)
- Deloitte, Milliseconds Make Millions (2020): https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html (C)
- Shampanier, Mazar & Ariely 2007, effetto prezzo zero: https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254 (C)
- Scheibehenne, Greifeneder & Todd 2010, meta-analisi sul sovraccarico di scelta: https://academic.oup.com/jcr/article-abstract/37/3/409/1827647 (A)
- Codice del Consumo, art. 23 (recensioni): https://www.brocardi.it/codice-del-consumo/parte-ii/titolo-iii/capo-ii/sezione-i/art23.html (A)
- Codice del Consumo, art. 52: https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art52.html (A)
- Codice del Consumo, art. 53: https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art53.html (A)
- Codice del Consumo, art. 54: https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art54.html (A)
- Codice del Consumo, art. 56: https://www.brocardi.it/codice-del-consumo/parte-iii/titolo-iii/capo-i/sezione-ii/art56.html (A)
- Codice del Consumo, art. 133: https://www.brocardi.it/codice-del-consumo/parte-iv/titolo-iii/capo-i/art133.html (A)
- Modifiche del D.Lgs. 170/2021: https://legal-team.it/codice-del-consumo-le-modifiche-apportate-dal-d-lgs-170-del-2021/ (A, sintesi della norma)
- Codice privacy, art. 7 abrogato: https://www.brocardi.it/codice-della-privacy/parte-i/titolo-ii/art7.html (A)
- Vendita di alcolici ai minori, art. 14-ter L. 125/2001: https://www.ufficiocommercio.it/divieto-di-vendita-alcolici-ai-minori-di-anni-18/ (A)
- European Accessibility Act in Italia: https://www.navilens.com/it/blog/european-accessibility-act-italia-dlgs-82-2022 (A)
