# [nome azienda] (Spoleto): analisi del sito e raccomandazioni

Fonte: la copia salvata il 26/09/2026 (3 pagine: Home, Il negozio, Contatti; HTML, testo e screenshot desktop e telefono). Le pagine "Panini imbottiti" e "I prodotti" sono nel menu ma non nella copia, quindi non le ho analizzate.

## Che cosa fa l'azienda e che cosa deve ottenere il sito

È una bottega storica di alimentari in [indirizzo], nel centro storico di Spoleto. Vende salumi, formaggi, vini, olio, tartufo, lenticchie di Castelluccio e prodotti senza glutine, e prepara panini da asporto. Il sito non ha un negozio online: tutto finisce in **una telefonata, un messaggio dal modulo o una visita in negozio**. Il sito stesso lo dice ("Ordinate formaggi, salumi e vini Umbri", "Per ordinazioni contattate i titolari", "Prenotate pizze senza glutine").

Chi visita il sito, in pratica:
1. **Turisti**, quasi sempre dal telefono e spesso stranieri. Vogliono sapere se il negozio è aperto, dov'è e se ci trovano un panino o un souvenir.
2. **Gente di Spoleto e dintorni**, che vuole ordinare un panino per la pausa pranzo, un cesto regalo o una pizza senza glutine.
3. **Chi è già stato in negozio e vuole ordinare di nuovo da lontano**. Oggi il sito non offre niente per questo caso.

Quindi conta più di tutto: **telefono, orari e indirizzo raggiungibili con un tocco dal telefono, un modo chiaro per ordinare o prenotare, e dei buoni motivi per entrare**.

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|-------|--------------|
| 1 | **Intestazione e i contatti ripetuti su ogni pagina** (telefono, indirizzo, orari) | È l'unico "pulsante per comprare" del sito. Compare su ogni pagina ed è la prima cosa che guarda un turista al telefono. |
| 2 | **Pagina Contatti e modulo** | È l'unico punto dove si ordina o si prenota. Il sito ci manda qui anche per le pizze senza glutine. |
| 3 | **La Home sul telefono** (prima schermata, cookie, 3 riquadri) | È la pagina d'ingresso da Google e Maps, e la maggior parte delle visite arriva dal telefono. |
| 4 | **Contenuto dell'offerta** (Il negozio / I prodotti / Panini) | È il motivo per entrare o ordinare. Oggi è solo testo generico, senza prodotti, prezzi o foto del negozio. |

---

## Analisi e raccomandazioni, in ordine di priorità

### 1. Il telefono non si può chiamare con un tocco (priorità massima, costo quasi zero)

**Cosa ho trovato**
- Nell'HTML non c'è **nessun link `tel:`**. Il numero in alto a destra ("Ordinate formaggi, salumi e vini Umbri: [telefono]") porta a **/contatti** invece di avviare la chiamata (`02-contatti.html:662`). Stessa cosa per il numero nel piè di pagina e nel testo "Per ordinazioni contattate i titolari al numero…".
- Dal telefono l'intestazione è quasi tutta coperta dal banner dei cookie (vedi punto 3). Il numero non è mai un pulsante in evidenza.
- Non c'è WhatsApp. Per una bottega che prende ordini di panini e cesti è il canale più comodo, soprattutto per i turisti stranieri.

**Cosa cambiare**
1. Trasformare **ogni** numero in `<a href="tel:[telefono]">`: intestazione, piè di pagina e testo della pagina Contatti.
2. Sul telefono, aggiungere una **barra fissa in basso con 3 pulsanti: "Chiama", "WhatsApp", "Indicazioni"**. "Indicazioni" deve aprire Google Maps sull'indirizzo, con un link a Maps e non con la mappa incorporata.
3. Cambiare la scritta dell'intestazione con qualcosa che si possa fare subito: "Ordina il tuo panino o cesto: **Chiama [telefono]**".

### 2. Pagina Contatti: il modulo sembra fatto per la newsletter, non per ordinare

**Cosa ho trovato**
- Il titolo della pagina è "**Vendita di salumi tipici con tartufo a Spoleto**". È scritto per Google, non per chi cerca un contatto.
- Il modulo si intitola "**Scoprire le promozioni sui prodotti umbri**". Chi arriva dalla pagina "Il negozio" per prenotare una pizza senza glutine trova un modulo che sembra un'iscrizione alle offerte.
- Il modulo ha solo Nome, E-mail, Telefono e Messaggio. Mancano i campi che servono per un ordine: cosa si vuole ordinare, per quando, ritiro in negozio o spedizione.
- L'oggetto della mail che arriva è "Contatto dal tuo sito Italiaonline" (`02-contatti.html:771`). Chi la riceve non capisce subito che è un ordine.
- L'email pubblica è **[email]**. Non c'entra con il nome "[nome azienda]" e ispira poca fiducia a chi non conosce il negozio.
- **La mappa non si vede.** L'HTML contiene la mappa di Google incorporata (`02-contatti.html:908`), ma nello screenshot desktop al suo posto c'è un grande spazio bianco. Probabilmente viene bloccata finché non si accettano i cookie.
- **Sul telefono il modulo non compare** nello screenshot: si vedono il testo, i recapiti e gli orari, poi il vuoto e il piè di pagina, tagliato a destra ("ALIMENTAR…", "Piazza del M…"). Questo fa pensare che il modulo e parte della pagina finiscano fuori dallo schermo. Va controllato su un telefono vero, ma se è confermato **il principale strumento per ordinare è inutilizzabile per chi usa lo smartphone**.
- Aspetto positivo: gli orari ci sono (lun-sab 7:30-14:15 e 16:00-20:00, domenica 7:30-14:00) e coincidono con i dati strutturati `LocalBusiness` della pagina.

**Cosa cambiare**
1. Titolo della pagina: "**Ordina o prenota: panini, cesti regalo, pizze senza glutine**". Sotto, i tre pulsanti Chiama, WhatsApp e Indicazioni.
2. Rifare il modulo come **"Richiesta d'ordine"**, con questi campi:
   - cosa desideri (panino / cesto regalo / pizza senza glutine / spedizione prodotti / altro);
   - data e ora di ritiro;
   - note su allergie e intolleranze.

   La casella per le promozioni resta, ma non obbligatoria e in fondo.
3. Oggetto della mail: "Nuova richiesta d'ordine: [tipo]". Dopo l'invio, una pagina di conferma che dice entro quando si riceve risposta ("Ti richiamiamo entro 2 ore negli orari di apertura").
4. Sostituire la mappa bloccata con un'immagine statica e un link "Apri in Google Maps", oppure mostrare un segnaposto "Mostra mappa". Aggiungere due righe su come arrivare: "In [indirizzo], a 2 minuti a piedi da …".
5. Mostrare gli orari **anche nel piè di pagina di tutte le pagine**. Se possibile, aggiungere un'indicazione "Aperto ora / Chiuso ora".
6. Usare un'email con il nome del negozio (per esempio [email]) al posto dell'indirizzo libero.it.
7. Controllare la pagina su un vero smartphone (iPhone e Android) e correggere il contenuto che esce dallo schermo a destra.

### 3. La Home sul telefono: il banner dei cookie copre tutto e l'impaginazione non regge

**Cosa ho trovato**
- Il banner Cookiebot occupa **quasi tutto il primo schermo**, sia sul telefono sia sul desktop, e copre anche il titolo "Antico negozio di alimentari nel centro storico di Spoleto". Il testo è lungo e ci sono tre pulsanti blu uguali ("Accetta", "Accetta selezionati", "Chiudi e accetta solo cookie necessari").
- Nello screenshot del telefono la Home è lunghissima (circa 13.800 pixel per tre blocchi di testo). I 3 riquadri "Regali mai banali / Pausa pranzo sfiziosa / Salumi tipici" compaiono **senza foto, separati da schermate vuote e tagliati a destra** ("Regali m…", "Pausa pran…"). Anche il piè di pagina è tagliato. Una parte può dipendere da come è stata salvata la pagina (immagini caricate solo allo scorrimento), ma il taglio a destra si ripete anche nella pagina Contatti. È quasi certamente un problema reale di impaginazione su mobile.
- Nella prima schermata **non c'è nessun invito a fare qualcosa**: nessun pulsante per chiamare, niente orari, nessun "Come arrivare".
- Il titolo della Home che si vede su Google è "**Salumeria e gastrostomia** | Spoleto, PG | [nome azienda]" (`00-home.html:507`). "Gastrostomia" è un intervento chirurgico: va corretto subito in "gastronomia". Poco professionale per chi legge i risultati di Google, e inutile per farsi trovare.
- Le foto (salumi al banco, pane, salame) sembrano **foto di repertorio**. Non si vedono mai il negozio, la piazza o la famiglia [nome azienda], eppure la bottega storica a gestione familiare è il vero punto di forza.

**Cosa cambiare**
1. **Cookie**: usare il banner compatto di Cookiebot (una barra in basso), con due pulsanti di pari evidenza, "Accetta" e "Rifiuta", più il link "Personalizza". Tenere il testo lungo nella cookie policy. Il pulsante per rifiutare deve restare facile da trovare quanto "Accetta", come chiede il Garante Privacy.
2. **Prima schermata della Home**, dall'alto:
   - una foto vera della vetrina o del banco;
   - titolo breve: "Bottega storica in [indirizzo], Spoleto";
   - una riga: "Salumi, formaggi e tartufo umbri · Panini da asporto · Senza glutine";
   - lo stato **Aperto ora / chiude alle 20:00**;
   - due pulsanti: "Chiama / Ordina" e "Come arrivare".
3. Sistemare l'impaginazione su mobile: niente contenuti fuori dallo schermo, i 3 riquadri uno sotto l'altro con la foto, niente spazi vuoti. Poi ricontrollare con lo strumento di verifica mobile di Google o con PageSpeed Insights.
4. Correggere il titolo della Home in "[nome azienda] Spoleto: salumi, formaggi e panini tipici umbri in [indirizzo]".
5. Sostituire le foto di repertorio con 6-10 foto vere: bottega, banco, famiglia, panini, cesti regalo.
6. Aggiungere qualche prova di fiducia: stelle e recensioni Google, gli anni di attività ("dal 19xx", se si conosce la data) e il link alla pagina Facebook, che oggi è solo un'icona nel piè di pagina.

### 4. L'offerta: dal testo generico a prodotti concreti con cui fare un ordine

**Cosa ho trovato**
- "Il negozio" e la Home sono lunghi paragrafi che si somigliano, pensati per Google: si ripetono ovunque "vasta scelta", "eccellenze del territorio", "sapori unici". Mancano **prezzi, formati, esempi di panini, cesti regalo già composti e informazioni sulla spedizione**.
- Ci sono spunti forti ma nascosti nel testo:
  - pizze e pane senza glutine su prenotazione;
  - Cinta Senese, prosciutto di Norcia, "coglioni di mulo";
  - lenticchie di Castelluccio e tartufo;
  - regali di Natale.

  Nessuno ha una sezione sua o un pulsante.
- Il sito è **solo in italiano**, ma si rivolge esplicitamente a "turisti di passaggio" e a chi vuole portare un "ricordo della bellissima città di Spoleto".
- Nel testo ci sono refusi ("è sono disponibili", "uno delle botteghe") e un probabile errore: "vini di Monfalcone" (Monfalcone è in Friuli; forse si intendeva **Montefalco**, zona del Sagrantino). Vanno corretti, perché per chi vende prodotti del territorio sono dettagli che contano.

**Cosa cambiare**
1. Una pagina (o una sezione in Home) **"Ordina in anticipo"** con 3 schede, ognuna con foto, prezzo indicativo e pulsante "Ordina su WhatsApp / Chiama":
   - **Panini da asporto**: 4-6 panini con nome e prezzo; ordini fino alle 12 e ritiri all'ora che scegli.
   - **Cesti regalo umbri**: 3 cesti già composti (circa 30, 50 e 80 €), anche per aziende a Natale.
   - **Senza glutine**: pizza e pane su prenotazione, con i giorni in cui sono disponibili.
2. **Spedizioni in Italia**, anche solo "su richiesta via WhatsApp o email": è l'occasione di vendere di nuovo ai turisti una volta tornati a casa. Se funziona, si può passare a un piccolo negozio online con 10-20 prodotti.
3. **Versione inglese** almeno della Home e della pagina Contatti o Ordina ("Umbrian deli in [indirizzo]: sandwiches to go, truffle, cured meats").
4. Correggere i refusi e verificare "Monfalcone" / "Montefalco".
5. Tenere aggiornata la scheda Google Business con orari, foto e link a WhatsApp e alla pagina Ordina. Per un negozio in centro storico porta visite quanto il sito, se non di più.

---

## Riepilogo delle priorità

| Priorità | Intervento | Impatto | Sforzo |
|---|---|---|---|
| 1 | Numeri chiamabili con un tocco (`tel:`) + barra fissa Chiama/WhatsApp/Indicazioni sul telefono | Alto | Molto basso |
| 2 | Correggere l'impaginazione mobile (contenuti tagliati, modulo di Contatti che non si vede) | Alto | Basso-medio |
| 3 | Banner cookie compatto | Alto | Basso |
| 4 | Contatti → "Ordina o prenota": modulo d'ordine, mappa visibile, orari su tutte le pagine | Alto | Basso |
| 5 | Titolo "gastrostomia" → "gastronomia" e refusi | Medio (reputazione e Google) | Molto basso |
| 6 | Prima schermata della Home con foto vera, "Aperto ora" e 2 pulsanti; recensioni | Medio-alto | Medio |
| 7 | Schede Panini / Cesti regalo / Senza glutine con prezzi e pulsante per ordinare | Alto | Medio |
| 8 | Versione inglese + spedizioni su richiesta | Medio | Medio |

**Da verificare su un telefono vero prima di intervenire:** i tagli a destra e il modulo che non si vede sul telefono (punti 2 e 3). Potrebbero dipendere in parte da come è stata salvata la copia, ma compaiono su due pagine diverse.
