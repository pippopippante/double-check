# Giudizio sulle analisi A e B del sito [sito]

Verifiche fatte sui file salvati in `10siti/moda-multimarca` (testi, HTML, screenshot). Niente ricerche web.

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito | Prova |
|---|---|---|---|
| "Reso Gratuito" in evidenza, ma gratuito solo per il cambio; il reso con rimborso è a carico del cliente; dal secondo cambio si paga | A, B | **Vero** | 00-home.txt:86-88, 08-condizioni.txt:34-44 |
| Il pacco deve *arrivare* in magazzino entro 14 gg dalla ricezione, altrimenti il reso è rifiutato (più stretto della legge) | A, B | **Vero** | 08-condizioni.txt:48 |
| Contrassegno: non si rimborsano 4 € | A | **Vero** | 08-condizioni.txt:53, 58 |
| Sigillo di garanzia: senza sigillo il reso non è accettato | A (legale), B (solo forma) | **Vero** | 08-condizioni.txt:30 |
| Cambio via email, reso dall'area personale: due procedure | A, B | **Vero** | 08-condizioni.txt:40, 45 |
| "24/48 ore" contro "conferma entro 24 ore dal primo giorno lavorativo successivo" | A, B | **Vero** | 03-prodotto.txt:70, 07-condizioni.txt:62 |
| Russia in due fasce (40 € e 75 €); Baleari/Canarie extra UE; "Honk Kong", "kenia", "St kiits", "Monthe Athos" | A, B | **Vero** | 07-condizioni.txt:42, 52 |
| **L'Austria non è in nessuna fascia europea** | solo B | **Vero** | 07-condizioni.txt:35-57 |
| Telefono diverso: home solo cellulare, prodotti fisso + WhatsApp | A, B | **Vero** | 00-home.txt:92, 03-prodotto.txt:98-99 |
| Scheda prodotto desktop bianca; `cc-animate-init` 27 volte | A (punto secondario), B (priorità 1) | **Vero** (screenshot 03-prodotto-desktop; 27 occorrenze in 01/02/03). Mobile ok, quindi probabile artefatto di cattura: entrambi lo dicono | |
| Home desktop: banner Outlet senza testo/pulsanti, mancano titoli "Uomo"/"Donna" sui caroselli | solo B | **Vero** (00-home-desktop.jpg contro 00-home-telefono.jpg) | |
| "Dicono di noi…" vuoto su mobile | A, B | **Vero** (00-home-telefono.jpg) | |
| Trustindex inserisce `"@type":"Product","name":"[sito] Fashion"` con `ratingCount 1771` (a video 1776) in ogni pagina | solo A | **Vero** | 03-prodotto.html:752, 00-home.html:729 |
| Recensione da 1 stella "Supporto clienti che non risponde" nel markup | solo A | **Vero** | 00-home.html:729 |
| Countdown con scadenza fissa 30/09/2026 23:59:59; nome "Flash Weekend FW27" contro "FLASH WEEK" | solo A | **Vero** | 00-home.html:1314, 1276; 03-prodotto.txt:44 |
| Prezzo barrato 130 → 110,50 € su capi nuovi: da verificare con Omnibus | A, B | **Vero** (è un rischio da verificare, non una violazione accertata; entrambi lo dicono così) | |
| 733 articoli in "Nuovi arrivi", 20 alla volta | A, B | Coerente con i file | |
| "7 schede su 20 sono la maglia Sebastien" (A) / "i **primi** 7 risultati sono la stessa maglia" (B) | | A **vero**; B **impreciso**: il primo risultato è il trolley | 04-categoria.txt:42-62 |
| Titolo categoria "Accessori Uomo – Taggato con "NEW_AI_27"" | solo B | **Vero** | 05-categoria.html:5 |
| Categorie senza meta description; home senza H1 | solo B | **Vero** (nessun `name="description"` in 04/05; nessun `<h1` in 00-home.html) | |
| Gift card con "Dubbi sulla taglia? Personal Shopper", "Stagione: Gift Card", testo su reso 14 gg; "Prezzo normale €25,00" | A, B | **Vero** | 01-prodotto.txt:43-62 |
| Gift card "validità 1 anno" | B | **Vero** | 01-prodotto.txt:90 |
| Home mobile: nella prima schermata solo "NEW IN UOMO"; banner cookie copre metà schermo con solo "Accetta" e "Scopri di più" | A, B | **Vero** (00-home-telefono.jpg) | |
| "i 3 dati che interessano all'**85%** dei clienti" | B | **Numero senza fonte**, inventato | |
| "WhatsApp è il canale che converte di più" | B | **Senza prove** | |

## Voti

| Criterio | A | B | Motivo |
|---|---|---|---|
| 1. Correttezza | 5 | 4 | A: non ho trovato errori di fatto. B: "primi 7 risultati" impreciso e un "85%" inventato presentato come dato. |
| 2. Concretezza | 5 | 5 | Tutte e due citano frasi, righe di codice, prezzi e pagine precise di questo sito. |
| 3. Importanza | 5 | 4 | A coglie il nodo resi in tutta la sua portata legale (termine, contrassegno, sigillo) e il markup Trustindex `Product`, che è un rischio concreto per Google. B trova problemi veri, ma la priorità 1 è un probabile artefatto di cattura e trascura sigillo e contrassegno. |
| 4. Utilità pratica | 4 | 5 | B chiude con una tabella impatto/sforzo e passi molto operativi (tabella spedizioni, selettore paese, testi pronti). A ha un ordine chiaro e dice "come verificarlo", ma è più denso e fa più rimandi al legale. |
| 5. Solidità delle motivazioni | 5 | 3 | A dà a ogni prova un livello di affidabilità (A–E), segna le proprie ipotesi e cita la legge articolo per articolo. B usa affermazioni gonfiate senza fonte ("85% dei clienti", "WhatsApp converte di più", "reso gratuito tra i fattori che più incidono"). |
| 6. Sicurezza | 5 | 5 | Nessun consiglio dannoso. Entrambe spingono verso la conformità (resi, Omnibus, cookie). Il "ultimi 2 pezzi" di B va bene solo se il dato è reale, e B lo specifica. |

## Problemi importanti trovati solo da A (verificati)
- Dati strutturati Trustindex `@type: Product` con le recensioni del negozio, su ogni pagina e con un conteggio diverso (1771 contro 1776): rischio con Google.
- Rimborso del contrassegno al netto di 4 € e sigillo obbligatorio che può annullare il recesso: clausole legalmente a rischio.
- Countdown con scadenza fissa (va bene) ma nome della promo incoerente ("Flash Weekend" / "FLASH WEEK").
- Recensione negativa sul supporto clienti già visibile nel markup, collegata al rischio della promessa "reso gratuito".
- Mancano misure del capo e altezza/taglia del modello in "Taglia e Fit".

## Problemi importanti trovati solo da B (verificati)
- Austria assente da tutte le fasce europee: pagherebbe 75 € come "altre destinazioni".
- Home desktop: banner Outlet senza titolo né pulsanti e caroselli senza intestazioni Uomo/Donna.
- SEO: titolo categoria con il codice interno "Taggato con NEW_AI_27", categorie senza meta description, home senza H1.
- Nessun prodotto correlato / "completa il look" nelle schede, utile per arrivare alla soglia dei 100 €.
- Negozio fisico di Spoleto mostrato solo come foto nel footer.

## Preferenza complessiva: A
A è più corretta e più rigorosa: individua i rischi legali e SEO più gravi (clausole resi, schema `Product` di Trustindex) e distingue le prove dalle ipotesi.
B è più pratica e trova problemi reali che ad A sfuggono (Austria, SEO delle categorie, home desktop), ma mette al primo posto un probabile artefatto di cattura.
B inoltre usa numeri e affermazioni senza fonte. Per il titolare, gli errori evitati grazie ad A pesano di più.

PUNTEGGI A=5,5,5,4,5,5 B=4,5,4,5,3,5 PREFERENZA=A
