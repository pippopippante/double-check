# Giudizio sulle analisi A e B – [nome azienda] (Spoleto)

Verifiche fatte su: `00-home`, `01-categoria` ("Il negozio"), `02-contatti` (.txt, .html, screenshot desktop e telefono).

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito |
|---|---|---|
| Nessun link `tel:`; il numero in intestazione porta a `/contatti` | A (00-home.html:568), B (02-contatti.html:662) | **Vero** su tutte e tre le pagine. Nel piè di pagina e in Contatti il numero è solo testo. |
| Titolo home "Salumeria e gastrostomia" | A, B (00-home.html:507) | **Vero** (anche og:title e twitter:title). |
| Modulo intitolato "Scoprire le promozioni sui prodotti umbri", solo Nome/E-mail/Telefono/Messaggio, pulsante "Invia" | A, B | **Vero**. |
| "Il negozio" manda al modulo per le pizze senza glutine, Contatti dice "Per ordinazioni contattate i titolari al numero…" | A (incoerenza esplicita), B | **Vero**. |
| H1 di Contatti "Vendita di salumi tipici con tartufo a Spoleto" | A, B | **Vero**. |
| Email [email] | A, B | **Vero**. |
| Mappa Google nel codice (riga 908) ma spazio bianco negli screenshot | A, B | **Vero** (grande vuoto sotto il modulo su desktop e telefono). |
| Oggetto email del modulo "Contatto dal tuo sito Italiaonline" (riga 771) | solo B | **Vero**. |
| Su telefono il modulo di Contatti non compare, piè di pagina tagliato a destra ("ALIMENTAR…", "Piazza del M…") | A, B | **Vero** nello screenshot; entrambi avvertono correttamente che va verificato su un telefono vero. |
| Home da telefono lunghissima (~13.800 px) con riquadri vuoti e "Regali m…", "Pausa pran…" tagliati | A, B | **Vero** (immagine 780×13852). |
| Riquadro grigio vuoto accanto a "Salumi, funghi e specialità umbre" su desktop | solo A | **Vero**. |
| Banner cookie copre più di metà della prima schermata su telefono | A | **Vero**. |
| Banner cookie copre "quasi tutto il primo schermo… anche sul desktop" | B | **Esagerato**: su desktop è una fascia che copre circa un terzo o metà della schermata. Su telefono è vero. I tre pulsanti blu uguali ci sono davvero, quindi il "rifiuta" ha già la stessa evidenza. |
| Orari solo in Contatti, non in home | A (B: "niente orari" in prima schermata) | **Vero**; coincidono con il `LocalBusiness` JSON-LD (vero, lo dicono entrambi). |
| "Monfalcone" invece di Montefalco, "uno delle botteghe", "è sono disponibili" | A, B | **Vero**. |
| Piè di pagina "Designed by \| Questa azienda è presente anche su e" con nomi vuoti, "modello lasciato a metà" | A | **In parte sbagliato**: nell'HTML ci sono i loghi Italiaonline, Pagine Gialle e Pagine Bianche (immagini `loading="lazy"`), solo non caricati nella copia. Si tratta di un difetto della copia, non del sito. Errore minore. |
| Classi `dm…` = costruttore Duda | A | Plausibile (le classi `dm…` e il footer Italiaonline sono coerenti). Non decisivo. |
| Solo l'icona Facebook, nessuna recensione | A, B | **Vero**. |
| "Stessa cosa per il numero nel piè di pagina" (porta a /contatti) | B | Impreciso: nel piè di pagina il numero non è un link, è solo testo. La conclusione (non chiamabile) resta giusta. |

## Voti

### A
1. **Correttezza: 4.** Quasi tutto è verificato con riferimenti di riga giusti. Unico errore: il piè di pagina "vuoto", che in realtà contiene loghi non caricati.
2. **Concretezza: 5.** Cita righe, testi esatti, screenshot e refusi. Il nuovo titolo e il testo per il modulo sono pronti da copiare.
3. **Importanza: 5.** Ha trovato tutti i problemi che contano per una bottega fisica: numero non chiamabile, modulo e percorso d'ordine confusi, impaginazione da telefono, "gastrostomia", orari assenti in home, scheda Google e recensioni, turisti stranieri.
4. **Utilità pratica: 5.** Tabella finale ordinata per priorità e sforzo, con i "minuti" prima delle "ore" e una sezione su come misurare i risultati. Il titolare sa cosa fare prima.
5. **Solidità delle motivazioni: 5.** Per ogni fonte indica quanto è affidabile, dichiara quando una cosa è solo un'ipotesi (WhatsApp, pagina inglese, spedizioni) e il campione USA di BrightLocal. Riconosce che un test A/B non servirebbe con numeri così piccoli. Non esagera il comportamento degli utenti.
6. **Sicurezza: 5.** Esclude esplicitamente le recensioni comprate o scambiate con sconti e non inventa recensioni. Il banner cookie è definito obbligatorio.

### B
1. **Correttezza: 4.** Quasi tutto è verificato e c'è una scoperta in più (l'oggetto "Italiaonline"). Esagera però il banner cookie su desktop ed è impreciso sul numero nel piè di pagina.
2. **Concretezza: 4.** Molto specifico sulla pagina Contatti (campi del modulo, oggetto email, allergie). Alcune proposte però sono inventate e non vengono dal sito: cesti da "30, 50 e 80 €", "ordini fino alle 12".
3. **Importanza: 4.** Coglie gli stessi problemi principali. Mette però il banner cookie al 3° posto con impatto "Alto", anche se esiste già un pulsante di rifiuto con la stessa evidenza, e mette "gastrostomia" solo al 5° posto nonostante il costo nullo e la grande visibilità.
4. **Utilità pratica: 4.** Priorità chiare con impatto e sforzo, e proposte di testo concrete. Mancano un metodo per misurare i risultati e un ordine "prima le cose da pochi minuti".
5. **Solidità delle motivazioni: 3.** Le affermazioni sul comportamento sono date per certe senza appoggio: "WhatsApp è il canale più comodo", "la maggior parte delle visite arriva dal telefono", "turisti quasi sempre stranieri". Separa poco i fatti dalle ipotesi.
6. **Sicurezza: 5.** Non dà consigli dannosi. Sui cookie cita correttamente il Garante (rifiuto con la stessa evidenza) e aggiunge il campo sulle allergie, che è una buona idea.

## Problemi importanti trovati solo da uno dei due (verificati)

**Solo A**
- Incoerenza esplicita tra "Il negozio" (prenotare con il modulo) e Contatti (ordinare per telefono), con la proposta di allineare i due testi.
- Grande riquadro grigio vuoto accanto a "Salumi, funghi e specialità umbre" nella home desktop.
- Un piano per la scheda Google Business Profile: recensioni, QR alla cassa, orari speciali per il Festival dei Due Mondi, divieto di recensioni false.
- Il pulsante "Invia" è generico e non si dice entro quanto arriva la risposta.

**Solo B**
- L'oggetto dell'email del modulo è "Contatto dal tuo sito Italiaonline" (02-contatti.html:771): il titolare non riconosce subito un ordine.
- Il banner cookie ha tre pulsanti blu identici e copre il titolo della home. Il problema c'è, ma B lo sopravvaluta.
- Un campo allergie/intolleranze nel modulo d'ordine, coerente con l'offerta senza glutine del negozio.

## Preferenza complessiva: A

A e B vedono quasi gli stessi problemi reali, ma A li verifica meglio, fa un solo errore minore e tiene separati i fatti dalle ipotesi.
L'ordine di A (prima gli interventi da pochi minuti come "gastrostomia" e `tel:`) e la parte su come misurare sono più utili al titolare.
B aggiunge due scoperte valide (oggetto Italiaonline, campo allergie), ma gonfia il problema del banner cookie e dà per certe preferenze degli utenti che non dimostra.

PUNTEGGI A=4,5,5,5,5,5 B=4,4,4,4,3,5 PREFERENZA=A
