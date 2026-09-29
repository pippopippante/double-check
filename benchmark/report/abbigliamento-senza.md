# [nome azienda] (Spoleto): analisi del sito per portare più clienti

**Fonte:** copia salvata di [sito] del 26/09/2026. Pagine disponibili: home, pagina brand "Visii Collection", archivio blog, Privacy Policy, Termini e condizioni. Per ogni pagina ho usato HTML, testo e screenshot desktop e telefono. Il sito online non l'ho visitato.

## Chi è l'azienda e cosa deve ottenere il sito

[nome azienda] è un negozio di abbigliamento multibrand per uomo e donna, aperto dal 1963 in [indirizzo] a Spoleto. Il sito è un e-commerce WooCommerce con PayPal e carta, spedizione in tutto il mondo e spedizione gratis in Italia sopra i 90 €. I suoi punti di forza, dichiarati in home, sono però legati al negozio fisico:

- **cerimonia**: sposo, madre della sposa, cresime, comunioni, eventi di gala;
- **taglie comode**: fino alla 70 da uomo e alla 58 da donna;
- **su misura**: camicie, abiti, giacche e pantaloni con Hubscher e Scabal;
- **sartoria veloce** e il servizio **"Un sarto a casa"**.

Il sito quindi deve portare due tipi di risultato:
1. **ordini online** di capi di marca;
2. **contatti e appuntamenti in negozio** (WhatsApp, telefono, visita) per cerimonia e su misura, dove lo scontrino medio è più alto e la concorrenza online è più debole.

Oggi il sito spinge quasi solo il primo e lascia il secondo nascosto nel testo.

---

## Le 4 parti più importanti e perché le ho scelte

| # | Parte | Perché conta |
|---|---|---|
| 1 | **Home page, soprattutto la prima schermata su telefono** | È la porta d'ingresso di chi arriva da Google, Instagram o dal passaparola. Qui si decide se il visitatore continua. |
| 2 | **Percorso cerimonia / su misura verso il contatto** | È il servizio più redditizio e più distintivo. Si vende con una consulenza, non con il carrello. |
| 3 | **Pagine di elenco prodotti (categoria e brand)** | È il punto in cui si passa dal guardare al comprare online. |
| 4 | **Fiducia: spedizioni, resi e condizioni** | Chi compra abbigliamento online decide in base a resi e taglie. Qui il sito ha incoerenze e perfino un vuoto. |

Il blog (9 pagine di articoli) è una risorsa di supporto. Lo tratto dentro il punto 2 perché quasi tutti gli articoli parlano di cerimonia e sposo.

---

## 1. Home page e prima schermata su telefono

### Cosa si vede oggi
- **Due finestre coprono subito la pagina.** Il popup newsletter si apre senza ritardo (`popup_delay_enable: "no"`) e il banner cookie compare in basso. Su telefono occupano insieme tutto lo schermo (`00-home-telefono.jpg`). L'immagine "Nuova collezione autunno-inverno" non si vede per niente.
- **Il popup newsletter non funziona.** È solo un'immagine con link `href="#" target="_blank"` e nessun campo email. Chi ci clica sopra, attirato dallo "sconto del 10%", apre in una nuova scheda la stessa pagina. Si ottiene fastidio e zero iscrizioni.
- **Dopo la hero c'è un blocco di testo lungo** (storia, inclusività, cerimonia, su misura, sartoria) scritto piccolo e senza pulsanti. I servizi migliori del negozio (taglie fino alla 70/58, su misura Hubscher/Scabal, sartoria) compaiono solo come frasi, senza un link.
- **Refusi visibili:** "inclusità", "trasfomandosi", "qualoratrovassi", "Piumiuno", "PHILOSOPY". In una sezione sullo stile e sull'eleganza danno un'impressione di trascuratezza.
- **"Nuovi arrivi" non convince.** Sono 8 capi (4 jeans Camouflage da 189–240 €, abiti e giacche Bharnaba), tutti da uomo. Sotto ogni prodotto c'è una fila di 5 stelline vuote, perché non ci sono recensioni. Su telefono le schede sono una per riga, quindi servono molti schermi di scorrimento. Chi cerca abbigliamento da donna non trova niente.
- **"Un sarto a casa"** dice "Segui il nostro Tutorial", ma il tutorial non ha un link. Il pulsante "Vai allo shop" porta al negozio generico (`/negozio/`). È un'idea forte buttata via.
- **Le 4 anteprime "News"** hanno riquadri immagine vuoti nello screenshot desktop e riportano come autore "Argenttemp", un utente tecnico.
- **Titolo della pagina per Google:** "Abbigliamento Uomo - Donna Spoleto". Manca il nome del negozio e la meta description è assente, quindi Google sceglie da solo il testo da mostrare.
- **Footer:** "Copyright © 2020". Gli orari della domenica sono identici a quelli dei giorni feriali (9:30–13 / 16–20). Se sono giusti, il negozio aperto la domenica è un argomento da mettere in evidenza. Se sono un errore, qualcuno troverà il negozio chiuso.

### Raccomandazioni (in ordine)
1. **Sistemare o togliere il popup.** La soluzione migliore è metterci un vero campo email, farlo comparire dopo 20–30 secondi o al 50% di scorrimento, e non mostrarlo mai insieme al banner cookie. In alternativa si può sostituire con una barra sottile in alto: "10% sul primo ordine – iscriviti". Nella versione attuale fa solo danni.
2. **Rifare la prima schermata su telefono** con una frase che dica chi siete e tre pulsanti grandi:
   *"Dal 1963 a Spoleto: abiti da cerimonia, su misura e taglie fino alla 70 uomo / 58 donna"*
   → **[Donna] [Uomo] [Cerimonia e su misura: prenota su WhatsApp]**.
3. **Trasformare il blocco di testo in 4 riquadri cliccabili** con icona e link: *Cerimonia*, *Su misura Hubscher & Scabal*, *Taglie comode*, *Sartoria veloce*. Ognuno porta alla sua pagina o apre WhatsApp con un messaggio già scritto.
4. **"Nuovi arrivi" con uomo e donna alternati,** 2 prodotti per riga su telefono, stelline nascoste finché non ci sono recensioni.
5. **"Un sarto a casa":** pubblicare il tutorial (video di 1–2 minuti o una pagina con le misure da prendere), collegarlo e far portare il pulsante a *abiti e giacche uomo*, non al negozio generico.
6. Correggere i refusi e il copyright, verificare gli orari della domenica e cambiare l'autore dei post in "[nome] – [nome azienda]".
7. Titolo SEO: "[nome azienda] Spoleto – Abbigliamento uomo e donna, cerimonia e taglie comode", con una meta description che citi cerimonia, su misura, taglie e spedizione gratis sopra i 90 €.

---

## 2. Percorso cerimonia / su misura verso il contatto

### Cosa si vede oggi
- In home la cerimonia è indicata come "il nostro pane quotidiano" e ci sono i banner *Cerimonia Donna*, *Cerimonia Uomo* e *Accessori Donna*. Il menu ha la voce CERIMONIA. Questo è corretto.
- Il blog è quasi tutto su questo tema: sposo 2025, Luigi Bianchi Mantova, Masculini, Carla Ruiz, cresime e comunioni a Spoleto, il papà della sposa. Sono contenuti buoni e locali. L'articolo sulle cresime a Spoleto, per esempio, cita la scelta della Diocesi di Spoleto-Norcia.
- **Però da nessuna parte si chiede al visitatore di fissare un appuntamento.** Il sito non ha una pagina contatti né un modulo. I numeri nel footer (negozio, WhatsApp, [nome]) sono **testo semplice, non cliccabile**: su telefono non si possono chiamare con un tocco. L'unico contatto veloce è il pulsante flottante di WhatsApp, che apre la chat **senza un messaggio precompilato** (`pre_filled: ""`) e in più, sugli screenshot, finisce sopra il banner cookie.
- La pagina dell'archivio blog si chiama "**Amazing BLOG** Archivi", un residuo del tema grafico, e mostra il widget "Commenti recenti: Nessun commento da mostrare".

### Raccomandazioni (in ordine)
1. **Aggiungere un pulsante "Prenota una consulenza cerimonia"** in cima e in fondo alle pagine cerimonia uomo/donna e alla fine di ogni articolo del blog sulla cerimonia. Deve aprire WhatsApp con un testo già scritto, per esempio: *"Ciao, vorrei un appuntamento per un abito da cerimonia (sposo/ospite) – data evento: …"*. Lo stesso va fatto per il su misura.
2. **Rendere cliccabili tutti i contatti:** `tel:[telefono]`, `tel:[telefono]`, `https://wa.me/[telefono]`, `mailto:[email]`. Aggiungere il link a Google Maps sull'indirizzo e creare una piccola pagina **Contatti / Vieni in negozio** con mappa, orari, parcheggio e foto del negozio.
3. **Creare una pagina di atterraggio "Sposo e cerimonia a Spoleto / Umbria"** (l'URL `cerimonia-elegante-sposo-uomo-spoleto-umbria/` esiste già nel menu e va valorizzata). Contenuti: foto di clienti reali, marchi (Luigi Bianchi Mantova, Masculini, Carla Ruiz, Hubscher, Scabal), fasce di prezzo indicative, tempi ("prenota almeno X settimane prima"), come funziona la prova e le modifiche sartoriali, pulsante di prenotazione.
4. **Collegare il blog ai prodotti:** ogni articolo su un marchio deve portare alla pagina di quel marchio e al pulsante di consulenza.
5. Rinominare "Amazing BLOG" in "Blog – consigli di stile e cerimonia" e togliere il widget dei commenti vuoto.
6. Se il negozio lo gestisce, aggiungere un modulo di prenotazione semplice (nome, telefono, tipo di evento, data) come alternativa per chi non usa WhatsApp.

---

## 3. Pagine di elenco prodotti (esempio: brand Visii Collection)

### Cosa si vede oggi
- La pagina mostra 4 capi in paillettes (39–99 €) e **nessuna descrizione del marchio**. Il titolo per Google è "visii collection Archivi - [nome azienda]", tutto minuscolo e con "Archivi".
- Ci sono testi del tema in inglese ("THERE ARE 4 PRODUCTS", "SHOWING ALL 4 RESULTS"), un selettore "16" e un menu a tendina vuoto.
- Sotto ogni prodotto ci sono di nuovo le stelline vuote. Non ci sono filtri per taglia, colore o prezzo né un'indicazione delle taglie disponibili, anche se le taglie comode sono uno dei punti di forza del negozio.
- Su telefono il popup e il banner cookie coprono di nuovo il primo prodotto (`01-categoria-telefono.jpg`).
- I nomi dei prodotti sono lunghi e ripetono il marchio: "VISII Top Donna Paillettes Eventi VISII TOP DONNA", "CAMOUFLAGE AR AND J Jeans … BEST FIVE D37 C117". I codici interni del fornitore non servono al cliente.
- Nel menu Brand ci sono circa 70 marchi in una sola lista. Alcuni compaiono due volte con URL diversi (`joseph-ribkoff` e `joseph-ribkoff-fashion`), altri hanno nomi sbagliati ("nike-costum", "levis-2").

### Raccomandazioni (in ordine)
1. **Tradurre in italiano i testi del tema** ("4 prodotti", "Ordina per…") e **nascondere le stelline** finché non ci sono recensioni.
2. **Aggiungere filtri per taglia e prezzo** e, nella scheda, un'etichetta "Disponibile fino alla 58/70" dove vale. È il vostro vantaggio sui concorrenti online e va reso visibile.
3. **Aggiungere un'intro di 2–3 righe per ogni marchio o categoria**, per esempio: *"Visii: completi in paillettes per eventi e cerimonie, disponibili in negozio a Spoleto e online"*. Serve a Google e aiuta il cliente. Va aggiunto anche un link "Hai dubbi sulla taglia? Scrivici su WhatsApp".
4. **Accorciare i nomi dei prodotti** nel formato *Marchio – tipo di capo – dettaglio*, spostando i codici nella scheda.
5. **Riordinare il menu Brand** in "marchi principali" (10–12, con logo) più "tutti i marchi", eliminando i duplicati.
6. Mettere 2 prodotti per riga su telefono, con il prezzo e un'eventuale etichetta "Spedizione gratis" ben visibili.

---

## 4. Fiducia: spedizioni, resi, condizioni

### Cosa si vede oggi
- **Le promesse di consegna si contraddicono:**
  - la home dice "Consegna in 48 ore se compri entro le ore 13";
  - i Termini dicono "consegna entro 3 giorni lavorativi per ordini … prima delle ore 11:00";
  - più sotto aggiungono "conferma d'ordine entro 24 ore dal primo giorno lavorativo successivo" più 24/48 ore di corriere.
- **La sezione "Resi" dei Termini è vuota.** C'è solo il titolo e la pagina finisce lì (`04-condizioni.html`, riga 830). Chi cerca come restituire un capo non trova nulla.
- Più sopra c'è scritto "cambio o reso entro **10 giorni** dalla consegna". Per gli acquisti online il consumatore ha per legge almeno **14 giorni** di recesso (Codice del Consumo, art. 52). Un termine più breve è un problema legale oltre che commerciale. Va verificato con il consulente.
- In home il riquadro "Reso Facile" dice solo "Il nostro supporto cliente ti guiderà", senza condizioni concrete.
- La Privacy Policy è "aggiornata al 25/05/2018" e indica come titolare una persona con un indirizzo diverso da quello del negozio. È da verificare, ma una data di 8 anni fa comunica poca cura.
- La "Guida alle Taglie" c'è, ma solo in fondo al footer.

### Raccomandazioni (in ordine)
1. **Scrivere subito la sezione Resi** con chi paga il ritiro (in un altro punto si parla di "servizio gratuito di ritiro del reso"), come si richiede, i tempi di rimborso e la possibilità di cambio taglia **anche in negozio**. Portare il recesso ad almeno 14 giorni.
2. **Usare un'unica promessa di consegna,** vera e verificabile, identica in home, nel carrello e nei Termini. Per esempio: "Ordini entro le 11 (lun–ven): spedizione in giornata, consegna in 24–72 ore".
3. **Mostrare i punti di forza nell'intestazione o nel carrello,** con una barra fissa: *Spedizione gratis sopra 90 € · Reso gratuito · Ritiro in negozio a Spoleto* (quest'ultimo solo se attivato; è molto utile per i clienti della zona).
4. **Mettere il link "Guida alle taglie" nella scheda prodotto** accanto al selettore taglia e aggiungere "Consulenza taglia su WhatsApp".
5. Aggiornare la Privacy Policy e il copyright e aggiungere le recensioni Google del negozio (anche solo il punteggio con un link) in home e nel footer.

---

## Priorità complessive

| Priorità | Intervento | Impegno | Effetto atteso |
|---|---|---|---|
| 1 | Sistemare o togliere il popup newsletter rotto e non sovrapporlo al banner cookie | Basso | Il sito diventa usabile su telefono dal primo secondo |
| 2 | Contatti cliccabili (tel, wa.me con messaggio precompilato, mappa) e pagina Contatti | Basso | Più chiamate e chat, soprattutto da telefono |
| 3 | Pulsante "Prenota consulenza cerimonia / su misura" su home, pagine cerimonia e blog | Basso | Più appuntamenti per i servizi più redditizi |
| 4 | Scrivere la sezione Resi (14 giorni) e uniformare i tempi di consegna | Basso | Più fiducia e meno carrelli abbandonati; riduce il rischio legale |
| 5 | Nuova prima schermata della home con proposta chiara e riquadri dei servizi | Medio | Il visitatore capisce subito perché scegliere voi |
| 6 | Pagine prodotto: testi in italiano, niente stelline vuote, filtri taglia, intro per marchio | Medio | Più facile trovare e comprare, migliore posizionamento su Google |
| 7 | Tutorial "Un sarto a casa" collegato, landing "Sposo e cerimonia in Umbria" | Medio | Più richieste da fuori Spoleto |
| 8 | Pulizia: refusi, "Amazing BLOG", copyright 2020, autore "Argenttemp", orari domenica, titoli SEO | Basso | Immagine più curata e coerente con un negozio di eleganza |

I primi quattro interventi si fanno in pochi giorni, senza rifare il sito, e sono quelli che oggi fanno perdere più clienti.

### Limiti dell'analisi
Nella copia salvata non c'erano una scheda prodotto, il carrello, il checkout, le pagine cerimonia e la guida taglie, quindi non ho potuto valutarli. Alcune immagini vuote negli screenshot (prodotti e news) potrebbero dipendere dal caricamento differito durante la cattura e non da un difetto reale: vanno verificate sul sito online.
