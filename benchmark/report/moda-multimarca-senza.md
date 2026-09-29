# Analisi del sito [sito] ([nome azienda], Spoleto)

Copia salvata il 26/09/2026: 9 pagine (home, 3 prodotti, 2 categorie, carrello, spedizioni, resi), con HTML, testo e screenshot desktop e telefono.

## Che cosa fa l'azienda e qual è l'obiettivo

[sito] è un e-commerce di moda multimarca di fascia medio-alta. Vende uomo, donna, accessori e outlet (K-Way, Belstaff, CP Company, Pinko, Hogan, Weekend Max Mara…) e ha un negozio fisico in [indirizzo] a Spoleto. Il sito gira su Shopify. **L'obiettivo è la vendita online**: più ordini completati e scontrino medio più alto (soglia di spedizione gratuita a 100 €, gift card). Contatti WhatsApp e Personal Shopper servono per aiutare a concludere l'acquisto.

Cosa funziona già bene, e va tenuto: la barra Trustindex "Eccellente – 1776 recensioni" su mobile, il pagamento in 3 rate Scalapay/Klarna sulla scheda prodotto, il pulsante WhatsApp, le taglie disponibili mostrate già nelle schede della categoria, il prezzo scontato già calcolato (niente codice da inserire) e i servizi (spedizione, reso, supporto) ripetuti su ogni pagina.

---

## Le 4 parti più importanti e perché

1. **Scheda prodotto.** È qui che si decide l'acquisto: taglia, prezzo, fiducia, "Aggiungi al carrello". Ogni difetto qui si traduce direttamente in vendite perse.
2. **Pagine categoria / elenchi prodotti** (New In, Accessori, Outlet). Sono il percorso principale per arrivare ai prodotti e il punto d'ingresso da Google e dalle campagne. Con centinaia di articoli (733 nei "Nuovi arrivi"), se trovare il prodotto giusto è difficile, il visitatore se ne va.
3. **Condizioni di spedizione e reso.** Nella moda online i dubbi più forti sono "e se la taglia non va?" e "quanto pago di spedizione?". Oggi il sito promette una cosa in home e ne scrive un'altra nelle condizioni: è un problema di fiducia e anche legale.
4. **Home page.** È la vetrina della promo in corso (−15% FW27) e deve smistare subito verso uomo, donna e outlet. Oggi ha blocchi vuoti o invisibili proprio nei punti che dovrebbero convincere.

Il carrello salvato è vuoto, quindi non si può valutare il percorso d'acquisto vero e proprio (checkout). Dall'HTML si vede che c'è uno spazio previsto per l'avviso "spedizione gratuita" (`free-shipping-notice`), che va bene.

---

## Raccomandazioni in ordine di priorità

### 1. Scheda prodotto su desktop: verificare subito che il prodotto si veda (CRITICO, da verificare)
**Cosa si vede:** in entrambi gli screenshot desktop delle schede prodotto (trolley K-Way e maglia K-Way) la zona tra le briciole di pane e la fascia dei servizi è **completamente bianca**: niente foto, prezzo, taglie né pulsante di acquisto. Su telefono la stessa pagina si vede correttamente. Nell'HTML quasi tutti i blocchi della scheda hanno la classe `cc-animate-init` (27 elementi sulla pagina della maglia): sono animazioni "appari allo scorrimento", che restano invisibili finché lo script non le attiva.
**Perché conta:** se questo succede anche solo a una parte dei visitatori reali (browser lenti, script bloccati, blocco dei cookie, bot di Google Shopping), chi arriva da desktop vede una pagina vuota e se ne va.
**Cosa fare:**
- Provare le schede su desktop con Chrome, Safari e Firefox, anche con connessione lenta e con il banner dei cookie ancora aperto.
- In ogni caso **togliere le animazioni d'entrata dai blocchi principali** della scheda (galleria, titolo, prezzo, taglie, pulsanti), oppure fare in modo che siano visibili di partenza e si animino solo dopo. Si guadagna anche in velocità percepita.
- Lo stesso vale per la home desktop: il banner "Outlet [sito] – fino al −80%" appare come sola foto, senza titolo né pulsanti Uomo/Donna, e mancano le intestazioni "Uomo" e "Donna" sopra i caroselli dei brand. Su mobile invece ci sono.

### 2. Rendere coerente la promessa sui resi (ALTA: fiducia e aspetti legali)
**Cosa c'è oggi:**
- Su ogni pagina compare "**Reso Gratuito** … entro 14gg" e sulla scheda "Reso Facile 14 gg".
- Nella pagina Resi, però, il reso è gratuito **solo per cambio taglia o prodotto, e solo la prima volta**. Il reso con rimborso è **a carico del cliente**. In più, il pacco deve **arrivare in magazzino** entro 14 giorni dalla consegna, pena il rifiuto.
- Il sigillo di garanzia obbligatorio viene annunciato con un paragrafo sgrammaticato ("qualora il prodotto venga pervenuto…").
- La procedura è divisa: cambio taglia via email a clienti@, reso standard dall'area personale.

**Perché conta:** chi compra per il "reso gratuito" e poi scopre il contrario non ricompra, e lo scrive nelle recensioni. Il termine "il pacco deve arrivare entro 14 giorni" è inoltre **più restrittivo del Codice del Consumo**: il cliente ha 14 giorni per *comunicare* il recesso (art. 52) e altri 14 per *spedire* la merce (art. 57). È una clausola da far verificare a un legale.
**Cosa fare:**
- Scrivere la promessa in modo onesto ovunque: "**Cambio taglia gratuito** · Reso entro 14 giorni".
- Meglio ancora, valutare il **reso gratuito vero** almeno sopra una soglia (per esempio oltre 100 €) o per gli iscritti. Nella moda è uno dei fattori che più incidono sulla conversione, e il costo si recupera in parte perché molti resi diventano cambi.
- Correggere i termini secondo la legge: 14 giorni per richiedere il reso, 14 giorni per spedirlo.
- Riscrivere la pagina come **3 passaggi numerati** con un unico pulsante "Richiedi reso o cambio", sia per il cambio che per il rimborso. Il sigillo di garanzia va spiegato con una frase chiara e una foto.
- Sulla scheda prodotto trasformare "Reso Facile 14 gg" in un testo a scomparsa che riassuma le condizioni in 3 righe, senza costringere a leggere la pagina legale.

### 3. Sistemare la pagina Spedizioni (ALTA per l'estero, MEDIA per l'Italia)
**Problemi:**
- **L'Austria non compare in nessuna fascia europea**: finisce in "tutte le altre destinazioni" a 75 €. Probabilmente è un errore, ma allontana un mercato UE confinante.
- La **Russia è in due fasce** (Europa 3 a 40 € ed Extra UE 2 a 75 €). Baleari e Canarie risultano extra UE a 75 €. Svizzera e Stati Uniti non sono citati.
- La frase "Tutte le destinazioni non presenti nelle precedenti." è fuori posto e ci sono due fasce "Extra UE 2" e "3" allo stesso prezzo.
- I tempi si contraddicono: "consegna in 1-2 giorni lavorativi" contro "conferma d'ordine entro 24 ore dal primo giorno lavorativo successivo all'acquisto". Ci sono anche refusi ("Honk Kong", "Monthe Athos", "kenia", "St kiits and nevis").

**Cosa fare:**
- Sostituire il muro di testo con una **tabella**: zona, Paesi, costo, soglia gratuita, tempi.
- Aggiungere un selettore "Spedisci in: [Paese]" che mostri costo e tempi.
- Controllare che le zone configurate su Shopify corrispondano a quanto scritto.
- Mettere in cima i 3 dati che interessano all'85% dei clienti: **Italia 7 €, gratis sopra 100 €, consegna in 24/48 h se ordini entro le 10**.

### 4. Pagine categoria: trovare più in fretta il capo giusto (MEDIA-ALTA)
**Cosa c'è oggi:** i "Nuovi arrivi" contano **733 prodotti** mostrati 20 alla volta con "Mostra altro". I primi 7 risultati sono la stessa maglia K-Way in 7 colori, e su mobile questo significa 3-4 schermate di un solo articolo. C'è "Filtra e ordina" ma nessun filtro rapido visibile (Uomo/Donna, categoria, brand, taglia). Nello screenshot mobile molte immagini della griglia sono ancora vuote.
**Cosa fare:**
- **Filtri rapidi a pillola sopra la griglia**: Uomo · Donna · Giacche · Maglie · Accessori · la mia taglia. Ricordare la taglia scelta durante la navigazione.
- **Raggruppare le varianti di colore** in un'unica scheda con i pallini dei colori (lo schema c'è già nella scheda prodotto), invece di ripetere lo stesso capo 7 volte.
- Dividere "New In" in **New In Uomo** e **New In Donna** già dal menu. 733 articoli misti sono troppi.
- Caricamento delle immagini: le prime 4-6 vanno caricate subito (senza lazy-load) e le altre con un riquadro di attesa, così la griglia non appare vuota.
- **SEO delle categorie:** il titolo della pagina accessori è "Accessori Uomo – Taggato con "NEW_AI_27"", cioè un codice interno che finisce nei risultati Google. Le pagine categoria non hanno meta description. Servono titoli e descrizioni scritti a mano ("Accessori uomo nuova collezione autunno inverno | [sito]") e un breve testo introduttivo.

### 5. Home: riempire i vuoti e dare subito una direzione (MEDIA)
- **Il blocco "Dicono di noi…" è vuoto**: su mobile c'è un grande spazio bianco sotto il titolo e su desktop il blocco non compare. Probabilmente il widget recensioni non si carica. O si ripara (con 2-3 recensioni vere in evidenza, visto che le 1776 recensioni sono il miglior argomento di fiducia) o si toglie.
- **Nessun titolo H1** nella home. Il titolo SEO "[sito] | Shop Online" è generico: meglio "[sito] – Abbigliamento firmato uomo e donna | Spoleto & shop online".
- Il banner promozionale ("Sconto 15% sulle novità FW27, termina tra 4 giorni") va bene, ma **va detto che lo sconto è già applicato** ("già scontato nel prezzo, niente codice").
- Nella prima schermata mobile si vede solo "New in Uomo", mentre Donna è nascosta nel carosello. Meglio **due pulsanti affiancati Uomo / Donna** subito sotto la barra, più Outlet.
- Valorizzare il **negozio fisico di Spoleto**, che oggi appare solo come foto nel footer: indirizzo, orari, "ritira in negozio" e "prova in boutique". Per i clienti umbri è un forte argomento di fiducia e porta anche visite in negozio.
- Il telefono è scritto in modo diverso in home ("Tel. e Wa [telefono]") e nelle altre pagine (fisso [telefono] + WhatsApp). Conviene uniformarlo e rendere i numeri cliccabili.

### 6. Rifinire le schede prodotto (MEDIA)
- **Pagina gift card:** compaiono "Dubbi sulla taglia? … Personal Shopper", "Stagione: Gift Card" e il testo su spedizione e reso in 14 giorni, che per un prodotto digitale non hanno senso. Vanno sostituiti con "Consegna immediata via email, validità 1 anno". Il prezzo "€25,00" si aggiorna solo dopo aver scelto il valore: meglio "da 25 €".
- **Recensioni per prodotto:** oggi c'è solo il badge generale del negozio. Anche poche recensioni sul singolo capo, soprattutto su come veste ("veste regolare / stretto"), riducono resi e indecisione sulla taglia.
- **Guida taglie:** metterla accanto al selettore taglia con misure reali del capo e un suggerimento del tipo "taglia consigliata". Collegare il Personal Shopper direttamente a **WhatsApp**, perché è il canale che converte di più.
- Mostrare la **disponibilità** ("ultimi 2 pezzi in M"), che su un multimarca con poche unità per taglia è un'informazione reale.
- **Prodotti correlati / "completa il look"** sotto la descrizione. Nelle schede salvate non ce ne sono, e aiuterebbero a superare la soglia dei 100 € per la spedizione gratuita.
- **Direttiva Omnibus:** i prezzi mostrano "Prezzo normale 130 € → 110,50 € −15% FLASH WEEK". Bisogna verificare che il prezzo barrato sia il **prezzo più basso degli ultimi 30 giorni**, come richiesto dall'art. 17-bis del Codice del Consumo, e indicarlo se serve.

### 7. Banner cookie (BASSA-MEDIA)
Su mobile il banner copre metà schermo, proprio sopra foto e prezzo, e ha due pulsanti: "Accetta" e "Scopri di più e personalizza". Le linee guida del Garante Privacy chiedono che rifiutare sia facile quanto accettare, quindi serve un "Rifiuta" o una X ben visibile. Più compatto e in fondo alla pagina, dà anche meno fastidio a chi vuole comprare.

---

## Riepilogo

| # | Intervento | Impatto | Sforzo |
|---|---|---|---|
| 1 | Verificare e correggere la scheda prodotto desktop "vuota" (animazioni) | Molto alto | Basso |
| 2 | Promessa resi coerente + termini a norma di legge | Alto | Basso |
| 3 | Pagina spedizioni in tabella, correggere Austria e duplicati | Medio-alto | Basso |
| 4 | Filtri rapidi, varianti raggruppate, SEO categorie | Alto | Medio |
| 5 | Home: recensioni visibili, H1, pulsanti Uomo/Donna, negozio fisico | Medio | Basso |
| 6 | Schede: recensioni prodotto, guida taglie, correlati, gift card, Omnibus | Medio | Medio |
| 7 | Banner cookie compatto con "Rifiuta" | Basso-medio | Basso |

*Nota sul metodo:* l'analisi usa solo i file salvati. Le pagine vuote negli screenshot (scheda desktop, blocco recensioni, immagini della griglia mobile) potrebbero dipendere in parte da come sono state fatte le catture. Per questo il punto 1 va prima verificato su dispositivi reali, ma conviene correggerlo comunque.
