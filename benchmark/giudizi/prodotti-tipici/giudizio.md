# Giudizio sulle analisi A e B: [nome azienda]

Ho verificato solo sulla copia salvata: i testi .txt di tutte le 9 pagine, l'HTML della home e delle schede, gli screenshot della home e della categoria su desktop.

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito |
|---|---|---|
| Due telefoni diversi: [telefono] nel footer, [telefono] nei Termini | A, B | **Vero** (07-condizioni.txt) |
| Recesso di 14 giorni "dalla data dell'ordine" (07) contro "dalla ricezione" e "14 giorni lavorativi" (08) | A, B | **Vero** |
| Citato il D.Lgs. 185/1999 e il D.Lgs. 196/03; refusi "Shoify Payments in tutta. sicurezza" | A, B | **Vero** |
| Manca l'esclusione del recesso per i prodotti deperibili | A, B | **Vero**: le policy non ne parlano |
| Reso "dalla tua pagina account personale" (07) contro rispedizione all'indirizzo del negozio (08) | A, B | **Vero** |
| Clausola che fa decadere il recesso "per mancanza della confezione esterna e/o dell'imballaggio originale" | B | **Vero** (08) |
| Costo di spedizione assente in tutte le pagine salvate; c'è solo il link nel footer | A, B | **Vero** |
| Codice SKU visibile sotto il prezzo: "VI015/PAS001/SAL007/FUN001", "LEG005/SAL010/" | A, B | **Vero** (01, 02; la scheda 03 non lo mostra) |
| Box Selezione di Norcia a 45 € con "prosciutto trancio 1,7 kg circa", mentre il solo prosciutto "Trancio 1,4kg Circa" costa 45 € | B | **Vero** (02-prodotto.txt, 00-home.txt, 05-categoria.txt): è un'incongruenza grave |
| Tre riquadri della home con `href=""` | A, B | **Vero** (00-home.html, righe 1103-1148) |
| Anche il pulsante "Tutti gli oli" ha `href=""` | B | **Vero** (riga 2557) |
| Le slide del carosello hanno `data-title=""` e un link vuoto; il primo schermo è una foto senza testo né pulsante | A | **Vero** (righe 1013-1017 e screenshot) |
| "Il primo schermo è una foto con il titolo *L'Umbria a casa tua*" | B | **Impreciso**: il titolo sta sotto lo slider, non sopra la foto |
| "Sulla Box Pranzo Umbro la prima riga è la temperatura di servizio" | B | **Leggermente impreciso**: il testo comincia con "MONTEFALCO SAGRANTINO DOCG – Cantina SCACCIADIAVOLI 750ml", e subito dopo viene la temperatura. Il senso del rilievo resta giusto |
| Nella griglia categoria su desktop si vedono solo le foto, senza nome né prezzo, e a sinistra c'è una colonna vuota | A | **Vero** (04-categoria-desktop.jpg) |
| Menu con 7 categorie e nessuna voce per le box | A, B | **Vero** |
| Badge `shopify-product-reviews-badge` presente ma nessuna recensione visibile | A, B | **Vero** (02-prodotto.html). La chiusura dell'app nel 2024 è un dato esterno, plausibile |
| Immagini con `alt="Banner Image"` e H1 della home nascosto (`sr-only`) | A | **Vero** |
| Modulo WhatsApp caricato nell'HTML (whatsapp.v4) | B | **Vero** (riga 35) |
| Indirizzo scritto "[indirizzo]" nel testo e "[indirizzo]" nel footer; nomi "[nome azienda]" e "[nome azienda]" | B | **Vero** |
| "Prodotti tipici umbri a KM 0 direttamente a casa tua!" | B | **Vero** (è citato correttamente; la critica è sensata) |
| Refusi "ESSICCATTE" e "produrre di Trevi" | A, B | **Vero** |
| Il testo tecnico compare due volte nella scheda (anteprima e descrizione) | A | **Vero** (01-prodotto.txt) |
| Foto con parametro `?v=1640011264` (dicembre 2021) | B | **Vero**, ma è un dettaglio irrilevante |
| Carrello vuoto con solo "Continua a navigare qui"; newsletter senza incentivo | A (e B per la newsletter) | **Vero** |

## Voti

| Criterio | A | B | Motivo |
|---|---|---|---|
| 1. Correttezza | 4 | 4 | A non contiene errori di fatto rilevanti. B descrive in modo impreciso il primo schermo della home e l'inizio della scheda Pranzo Umbro. Tutto il resto è verificato, compresa la scoperta sulla Box Norcia. |
| 2. Concretezza | 5 | 5 | Entrambe citano elementi precisi: righe dell'HTML, testi, prezzi, codici. |
| 3. Importanza | 4 | 5 | B individua l'incongruenza di prezzo sulla Box Norcia (rischio di reclami o di perdita economica), gli alcolici venduti ai minori, il menu senza box e la clausola illegittima sull'imballo. A invece coglie meglio la griglia del catalogo senza nomi né prezzi. |
| 4. Utilità pratica | 4 | 5 | A dà un ordine chiaro, ma mette la riscrittura legale prima delle schede box. B ha un piano in 10 passi con sforzo e impatto, una scadenza legata al Natale e, per ogni intervento, come verificarne l'effetto. |
| 5. Solidità delle motivazioni | 4 | 4 | A ragiona in modo concreto, ma il suo "impatto atteso" è poco argomentato. B classifica le fonti per affidabilità e segnala quali punti sono solo ipotesi. Alcuni numeri però sono spesi con eccessiva sicurezza: il "+270%" di probabilità d'acquisto con 5 recensioni, e le percentuali di Baymard applicate a un piccolo negozio. |
| 6. Sicurezza | 4 | 5 | A suggerisce testi come "Spedizione in 24/48h" (il sito dichiara 1-3 giorni) e "Imballo termico per i freschi" senza chiedere se sia vero: promesse potenzialmente ingannevoli. Propone anche una soglia di spedizione gratuita senza verificare i margini. B mette "solo se è vero" dove serve, richiama l'art. 17-bis sugli sconti e il tema dei minori. |

## Problemi importanti trovati solo da A (verificati)
- Nella griglia delle categorie su desktop non si vedono nome e prezzo dei prodotti, e c'è una colonna filtri vuota di circa 250 px. B nota nomi e prezzi illeggibili solo su telefono.
- Lo slider in apertura della home non ha testo né pulsante (`data-title=""`).
- Le immagini hanno `alt="Banner Image"` e l'H1 della home è nascosto.
- Nella scheda prodotto il testo tecnico è ripetuto due volte.
- Il carrello vuoto non propone nessun prodotto.

## Problemi importanti trovati solo da B (verificati)
- **Box Selezione di Norcia**: a 45 € dichiara un prosciutto da 1,7 kg, mentre il solo prosciutto da 1,4 kg costa 45 €. È un errore nella descrizione o una vendita in perdita.
- Il pulsante "Tutti gli oli" ha il link vuoto.
- Il nome e l'indirizzo dell'azienda sono scritti in modo diverso da una pagina all'altra.
- La clausola che fa decadere il recesso per mancanza dell'imballo originale.
- La vendita di vino senza alcuna verifica della maggiore età.
- Lo slogan "KM 0" riferito a prodotti spediti.
- Partita IVA e ragione sociale non visibili nelle pagine salvate.

## Preferenza complessiva: B
B ha trovato il problema singolo più grave e più facile da correggere, la Box Norcia, che A non vede. In più accompagna ogni consiglio con cautele di legge e di veridicità ("solo se è vero", sconti, minori).
A è più precisa sul lato visivo (slider, griglia del catalogo), ma alcuni testi che propone promettono cose non verificate.
Il piano di B, con priorità, verifiche e scadenza prima di Natale, è più utile al titolare, nonostante due piccole imprecisioni nella descrizione.

PUNTEGGI A=4,5,4,4,4,4 B=4,5,5,5,4,5 PREFERENZA=B
