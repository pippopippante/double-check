# [nome azienda] ([sito]): analisi del sito per aumentare gli ordini

*Analisi basata solo sulla copia salvata il 26/09/2026 (9 pagine: home, 3 schede prodotto, pagina "Catalogo Esclusive 2026", categoria "_ESAURITI", carrello vuoto, condizioni di vendita, privacy).*

**Limite importante:** tutti gli screenshot mostrano solo il blocco "Sei maggiorenne?" e, nelle schede prodotto, un reCAPTCHA a immagini. Non ho quindi potuto vedere l'impaginazione reale delle pagine: le valutazioni su layout e ordine dei contenuti vengono dall'HTML e dal testo, non dalle immagini.

---

## 1. Di cosa vive il sito e cosa conta di più

[nome azienda] / [nome azienda] è un distributore di bevande di Spoleto, attivo da 50 anni. Ha un negozio fisico, un magazzino con migliaia di etichette e un e-commerce WooCommerce con "oltre 4.000 articoli". Spedisce in Italia (gratis sopra 170 €), in Europa, negli USA, in Canada e in Australia. Il cliente tipico cerca una bottiglia precisa (whisky, rum, gin, champagne, vini umbri), la confronta col prezzo di altri shop e compra, spesso per sé o da regalare. C'è anche un lato B2B/Horeca, ma sul sito è secondario.

L'obiettivo quindi è **che chi arriva su una bottiglia la compri, e compri abbastanza da superare i 170 €**. Le 4 parti che pesano di più:

| # | Parte | Perché è decisiva |
|---|---|---|
| 1 | **L'ingresso: blocco età, reCAPTCHA e testata ripetuta su ogni pagina** | È la prima cosa che vede *ogni* visitatore, su *ogni* pagina. Se è lenta o confusa, o se spinge il prodotto sotto la piega, penalizza tutto il resto. |
| 2 | **La scheda prodotto** | Chi arriva da Google, da Google Shopping (il sito usa il widget Merchant e i dati strutturati Product) o da un comparatore atterra qui. È qui che si decide l'acquisto. |
| 3 | **Navigazione del catalogo: categorie, liste, esauriti** | Con 4.000 articoli, chi non ha già un prodotto preciso in mente deve poter restringere la scelta in fretta. Riempire il carrello oltre i 170 € dipende da qui. |
| 4 | **Costi di spedizione, carrello e fattura** | Secondo Baymard i costi extra inattesi sono da anni la prima causa di abbandono del carrello (circa 39-48% degli abbandoni, a seconda di come si calcola). Qui i costi reali stanno solo nelle condizioni di vendita. |

La home conta meno. Chi compra alcolici online arriva quasi sempre direttamente su un prodotto, e i problemi della home sono in gran parte gli stessi della testata (punto 1).

---

## 2. Analisi e raccomandazioni, in ordine di priorità

### Priorità 1: Scheda prodotto (impatto più alto, lavoro contenuto)

**Cosa c'è oggi** (es. *La Valdotaine Grappa Achillea*, 26 €):
- Buono: prezzo chiaro, descrizione scritta a mano e competente, formato e gradazione (70 cl, 40%), pulsanti PayPal e Google Pay già sulla scheda (checkout rapido), dati strutturati Product/Offer con disponibilità, immagine con alt corretto.
- Nessuna informazione su **quanto costa la spedizione e quando arriva**. Accanto al pulsante non c'è nulla. L'unica frase è in testata ("Spedizione gratuita da 170 €") e i costi reali (10 € fino a 2 kg, 12 € da 2 a 5 kg, consegna in 2-4 giorni lavorativi) sono solo nella pagina Condizioni.
- Nessuna indicazione di **disponibilità** ("Disponibile / pronta per la spedizione"), anche se il sito la conosce (`instock`).
- **"Recensioni (0)"** su tutte e tre le schede. È una scheda vuota che mostra in evidenza che nessuno ha lasciato un giudizio, mentre il negozio ha un 4,9 su Google, Trustpilot ed eShoppingAdvisor.
- **Prodotti correlati esauriti**: in tutte e 3 le schede, 1 o 2 dei 3 correlati hanno "Leggi tutto" invece di "Aggiungi al carrello", cioè non sono acquistabili (es. Grappa Alexander Magnum, Bertagnolli 1870, Marzadro Diciotto Lune Magnum, Gin Bulldog Extra Bold). Questo spazio dovrebbe servire a far crescere lo scontrino.
- Due avvisi che pesano sulla decisione sono nascosti nel carrello o nelle condizioni: foto ed etichetta/annata possono non essere aggiornate, e i prodotti cubani non sono pagabili con PayPal.
- "Informazioni aggiuntive" contiene solo il peso (1,60 kg). Tutti i titoli sono in MAIUSCOLO, e questo li rende più faticosi da leggere, soprattutto su telefono.

**Cosa cambiare:**
1. **Sotto il prezzo o accanto al pulsante, un blocco fisso di 3 righe:** "✓ Disponibile, spedito in 2-4 giorni lavorativi" · "Spedizione Italia da 10 €, gratis sopra 170 €" · "Pagamento sicuro: carta, PayPal, Google Pay, bonifico". Si fa con un hook WooCommerce o con un blocco nel template della scheda. È la modifica con il miglior rapporto impatto/sforzo: toglie la sorpresa dei costi, che è la causa di abbandono n°1.
2. **Correlati solo disponibili:** attivare in WooCommerce "Nascondi dall'elenco i prodotti esauriti", oppure filtrare i correlati per stock. Meglio ancora proporre "Stessa distilleria / stessa categoria, fascia di prezzo simile".
3. **Recensioni:** o si nasconde la scheda "Recensioni (0)", oppure si attiva l'invio automatico della richiesta di recensione dopo la consegna, sul prodotto e non solo sul negozio. Intanto conviene mostrare sulla scheda una sola riga di fiducia ("4,9 ★ su Google, oltre N recensioni") vicino al pulsante.
4. **Avviso annata/etichetta** direttamente sulle schede di vini con annata e sulle rarità, con un link WhatsApp precompilato ("Vorrei conferma dell'annata di [prodotto]"). Chi compra per l'annata chiede prima, e si evitano resi e contestazioni. Stesso discorso per il divieto PayPal sui prodotti cubani: va scritto sulla scheda, non scoperto al pagamento.
5. **Per i prodotti esauriti** (vedi punto 3): mostrare "Esaurito" in modo chiaro e offrire "Avvisami quando torna" e "Chiedici su WhatsApp", visto che il testo in home dice che *"può darsi che sia riposta nei nostri scaffali"*.
6. Titoli in maiuscolo/minuscolo (almeno nel titolo H1 della scheda; basta un `text-transform` CSS se i dati restano come sono) e "Informazioni aggiuntive" con formato, gradazione, regione/paese, vitigno o materia prima.

### Priorità 2: L'ingresso (blocco età, reCAPTCHA, testata)

**Cosa c'è oggi:**
- **Blocco età** (plugin Age Gate) a tutto schermo su ogni primo accesso, con "Ricordami" già spuntato (bene). Su telefono il pulsante verde **"Chat" di WhatsApp copre parte del testo del blocco** ("You must be ___ to use this site"), e insieme al badge "4,9 ★" in basso rende la prima schermata confusa.
- Mentre il blocco è attivo il titolo della pagina diventa "Age Verification - ". È da verificare che Google veda il titolo vero; di solito Age Gate esclude i bot, ma va controllato in Search Console con "Controllo URL".
- **Nelle schede prodotto compare un reCAPTCHA a immagini** ("seleziona gli idranti / le strisce pedonali") sia su desktop che su telefono. Dall'HTML risulta che viene dal plugin PayPal Payments (`ppcp-recaptcha-v2-container`), cioè dalla protezione antifrode sui pulsanti di pagamento rapido. È possibile che sia comparso solo perché la pagina è stata aperta da un browser automatico. Ma se capita anche a una parte dei clienti veri (VPN, browser con protezione della privacy, reti aziendali), vuol dire chiedere un puzzle a chi sta solo *guardando* una bottiglia.
- **La testata ripetuta su ogni pagina** (prima del contenuto) contiene: widget Trustpilot, un titolo H1 "OFFERTISSIMA!", un banner promozionale 1024×427 (omaggio Poggiolaccio/Cantina Ninni, caricato ad agosto), "WE SHIP TO…", un badge eShoppingAdvisor, un banner B2B/Horeca 1024×256 che porta a "Il mio account" e "Spedizione gratuita da 170 €". Su telefono, in base alle proporzioni, i soli due banner occupano circa 450 px di altezza. Quindi sulla scheda prodotto nome, prezzo e pulsante finiscono con buona probabilità **sotto la prima schermata**. Inoltre ogni pagina ha due H1, e i banner non hanno testo alternativo.
- Menù doppio (barra alta con Gourmet/Birra/Tequila/Vodka/Rarità/FAQ, poi un menù principale con oltre 20 voci e "Faq" ripetuto).

**Cosa cambiare:**
1. **Verificare subito il reCAPTCHA** su 3-4 telefoni e browser reali (anche Safari e Firefox con protezione anti-tracciamento). Se appare, nelle impostazioni di WooCommerce PayPal Payments conviene limitarlo al checkout o disattivare il fallback v2 visibile, lasciando solo la verifica invisibile. Un puzzle di sicurezza su una pagina prodotto non ha ragione di esistere.
2. **Testata snella su schede prodotto, categorie e carrello:** una sola barra sottile con "Spedizione gratis in Italia sopra 170 € · Spediamo in UE/USA/CA/AU · 4,9 ★ Google" e basta. Banner promozionali e B2B solo in home (e sulla pagina Offerte). L'obiettivo è che su telefono foto, nome, prezzo e pulsante stiano nella prima schermata della scheda.
3. **Blocco età:** tenerlo, ma su telefono spostare più in basso o nascondere il pulsante "Chat" finché il blocco è aperto. Pulsanti in italiano o bilingui coerenti ("Sì, ho 18 anni" / "No") e più grandi. La verifica che conta legalmente è comunque quella in fase d'ordine, già prevista nelle condizioni.
4. Un solo sistema di recensioni ben visibile (quello con più recensioni e voto migliore) al posto di tre badge diversi (Trustpilot, eShoppingAdvisor, Google) che si contendono lo spazio.
5. Un solo H1 per pagina, testo alternativo sui banner, e "OFFERTISSIMA!" trasformato in un normale link o bottone.

### Priorità 3: Navigazione del catalogo (categorie, liste, esauriti)

**Cosa c'è oggi:**
- La barra laterale "Categorie prodotto" elenca **circa 60 voci**, in quest'ordine: **"_ESAURITI (198)"** per prima, poi "_NOVITA (1346)", "_OFFERTE (47)", "1 Lt... (340)", "Senza categoria (1)" e nove regioni con **(0)** prodotti (Basilicata, Calabria, Lazio, Liguria, Molise, Valle d'Aosta…). Sono etichette interne di magazzino esposte al cliente.
- La categoria **Esauriti** è una pagina pubblica di 13 pagine con 198 prodotti. Quasi tutti hanno solo "Leggi tutto", senza la scritta "Esaurito" nella lista (e in qualche caso compare "Aggiungi al carrello", es. Champagne Mumm Magnum: un'incoerenza da controllare).
- Le liste mostrano solo 16 prodotti per pagina e offrono **l'ordinamento ma nessun filtro**: niente prezzo, formato (70 cl / magnum / mignon), paese o regione, cantina o distilleria, età o annata. Con 535 whisky o 629 gin, scorrere 34-40 pagine non è realistico.
- Il "Catalogo Esclusive 2026" (le cantine in esclusiva per l'Umbria, un contenuto di valore soprattutto per bar e ristoranti) è solo un **PDF sfogliabile (flipbook)**: senza testo leggibile da Google e senza link ai prodotti acquistabili.
- La home mostra 28 "novità" e poi un testo di presentazione. Non ci sono ingressi per occasione (regalo, sotto 30 €, rarità, vini umbri), che sarebbero il percorso naturale per arrivare ai 170 €.

**Cosa cambiare:**
1. **Pulire la barra laterale:** togliere "_ESAURITI", "Senza categoria" e le categorie a 0 (in WooCommerce basta l'opzione "Nascondi categorie vuote" del widget). Rinominare "_NOVITA" in "Novità" e limitarla davvero agli ultimi 60-90 giorni; 1.346 "novità" non sono novità. Mettere in cima le categorie di punta (Whisky, Rum, Gin, Vini Umbria, Champagne).
2. **Esauriti in fondo o nascosti:** nelle categorie mostrare prima i disponibili. Molti plugin, o una piccola modifica alla query di WooCommerce, ordinano per stock. La pagina "Esauriti" va tolta dal menù; le singole schede esaurite possono restare online con "Avvisami quando torna" e alternative disponibili.
3. **Filtri a faccette** almeno su Whisky, Rum, Gin e Vini: prezzo, formato, paese/regione, produttore. WooCommerce ha i blocchi "Filtra per attributo/prezzo" nativi, ma prima serve popolare gli attributi, che oggi contengono solo il peso. È il lavoro più lungo di questo report ed è anche quello che rende davvero navigabili i 4.000 articoli.
4. **Catalogo Esclusive:** affiancare al PDF una pagina vera con una sezione per cantina (foto, 3 righe, link ai prodotti in vendita) e un modulo o bottone "Richiedi listino Horeca". Serve sia al cliente privato sia al B2B.
5. In home, sotto le novità, 4-6 ingressi: "Idee regalo", "Sotto i 30 €", "Vini dell'Umbria", "Rarità", "Offerte", "Magnum". Sulle 6 recensioni in fondo alla home vedi il punto 4.

### Priorità 4: Costi di spedizione, carrello e fattura

**Cosa c'è oggi:**
- Il carrello vuoto mostra due lunghi avvisi in maiuscolo (foto etichette; fattura) e "Il tuo carrello è vuoto / Ritorna al negozio", senza suggerimenti.
- L'avviso fattura dice che, se non si inseriscono i dati, *"la merce partirà con scontrino fiscale e non sarà più possibile emettere la fattura"*. Per un cliente aziendale è un rischio concreto, e il campo è segnato come "facoltativo".
- La tabella dei costi (Italia 10/12/15 €…, Europa da 30 €, USA da 65 €) e l'opzione "ritiro con proprio corriere a 0 €" sono solo nelle Condizioni. Non risulta un'opzione "ritiro in negozio a Spoleto", che per i clienti della zona sarebbe naturale.
- Le 6 "recensioni" in home sono commenti WordPress del 2020-2023, uno è una domanda senza risposta ("Avete il vov"), e il modulo dice "Devi essere connesso per inviare un commento". Danno l'idea di un sito poco curato proprio accanto ai badge 4,9.

**Cosa cambiare:**
1. **Barra di avanzamento verso la spedizione gratuita** nel mini-carrello e nel carrello ("Ti mancano 38 € per la spedizione gratuita"), più 3-4 suggerimenti di prodotti disponibili a basso prezzo (amari, mignon, toniche) per colmare la differenza. È il modo più diretto per alzare lo scontrino medio con la soglia di 170 € che già esiste.
2. **Stima della spedizione** visibile nel carrello prima del checkout, con il paese preimpostato, e un link breve "Costi e tempi di spedizione" a una pagina dedicata con la tabella, invece delle Condizioni generali.
3. **Fattura:** una casella "Mi serve la fattura" nel checkout che, se spuntata, rende obbligatori ragione sociale, P.IVA e codice univoco o PEC. Così si toglie l'avviso minaccioso e si elimina l'errore alla radice.
4. **Ritiro in negozio gratuito** ([indirizzo], Spoleto) come metodo di consegna, se il negozio può gestirlo.
5. Carrello vuoto: al posto dei due avvisi, "Offerte" e "Novità più vendute". Gli avvisi vanno spostati dove servono: annata sulla scheda, fattura nel checkout.
6. Home: sostituire i commenti WordPress con 3-4 recensioni recenti prese da Google o Trustpilot, e chiudere i commenti sulla pagina.

---

## 3. Riepilogo: da dove partire

| Ordine | Intervento | Sforzo | Effetto atteso |
|---|---|---|---|
| 1 | Verificare e, se serve, togliere il reCAPTCHA visibile dalle schede prodotto | basso | elimina un possibile blocco totale all'acquisto |
| 2 | Blocco "disponibile · spedizione da 10 €, gratis sopra 170 € · 2-4 giorni" accanto al pulsante | basso | meno abbandoni per costi inattesi |
| 3 | Testata snella fuori dalla home (prodotto in prima schermata su telefono) | basso-medio | più aggiunte al carrello da mobile |
| 4 | Correlati ed elenchi senza esauriti; sidebar ripulita | basso | più percorsi che finiscono in un prodotto acquistabile |
| 5 | Barra "ti mancano X € alla spedizione gratuita" + suggerimenti nel carrello | medio | scontrino medio più alto |
| 6 | Casella "Mi serve la fattura" e ritiro in negozio | medio | meno errori, più clienti aziendali e locali |
| 7 | Attributi prodotto + filtri a faccette sulle categorie grandi | alto | catalogo di 4.000 articoli davvero navigabile |
| 8 | Richiesta recensioni sui prodotti; pagina HTML per il Catalogo Esclusive | medio | più fiducia, più visibilità su Google, lead Horeca |

Per misurare i risultati: GA4 via Google Tag Manager è già installato e invia gli eventi e-commerce (`view_item` ecc.). Conviene confrontare, prima e dopo, il tasso scheda prodotto → carrello su mobile, il tasso carrello → ordine e lo scontrino medio.

---

### Fonti
- [Baymard: Cart Abandonment Rate Statistics](https://baymard.com/lists/cart-abandonment-rate): costi extra (spedizione, tasse, commissioni) come prima causa di abbandono.
- [Baymard: How to Reduce Cart Abandonment](https://baymard.com/blog/reduce-cart-abandonment): mostrare il costo totale prima del checkout.
- [Baymard: Handling Out of Stock Products](https://baymard.com/blog/handling-out-of-stock-products): gestione dei prodotti esauriti.
