# Giudizio sulle analisi A e B – [nome azienda] (Spoleto)

Metodo: ogni affermazione importante è stata confrontata con i file salvati (`00-home`, `01-categoria` = brand VISII, `02-categoria` = blog, `03-condizioni` = privacy, `04-condizioni` = termini): testo, HTML e screenshot.

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito | Prova |
|---|---|---|---|
| Home "Consegna in 48 ore se compri entro le 13" contro Termini "3 giorni lavorativi, ordini prima delle 11:00" e "conferma entro 24h + corriere 24/48h" | A, B | **Vero** | `00-home.txt`; `04-condizioni.txt` |
| Recesso "entro 10 giorni dalla consegna", sotto il minimo legale di 14 | A, B | **Vero** (testo presente; il minimo di 14 giorni dell'art. 52 è corretto) | `04-condizioni.txt` |
| La sezione "Resi" ha solo il titolo | A, B | **Vero** | `04-condizioni.html` ~r. 830, dopo il titolo la pagina finisce |
| Spedizione 6 €, gratis sopra 90 € | A, B | **Vero** | `04-condizioni.txt` |
| Popup newsletter = solo immagine con `href="#"` (`target="_blank"`), senza campo email | A, B | **Vero** | `00-home.html` r. 1770-1779 |
| `popup_delay_enable":"no"` su tutte le pagine | A, B | **Vero** | presente in tutti e 5 gli HTML |
| Popup + banner cookie + pulsante WhatsApp coprono la prima schermata; WhatsApp sopra il banner | A, B | **Vero** | `00-home-telefono.jpg`, `01-categoria-desktop.jpg` |
| Il vero modulo newsletter (con campo email) è sopra il footer | A | **Vero** | `01-categoria-desktop.jpg` |
| WhatsApp flottante senza messaggio precompilato (`pre_filled:""`) | B | **Vero** | tutti gli HTML |
| Numeri di telefono e WhatsApp nel footer come testo semplice, non `tel:`/`wa.me` | A, B | **Vero** (nessun `href="tel:"` nel sito; anche l'email del footer non è `mailto:`) | `00-home.html` r. 1417-1419 |
| "Un sarto a casa": "Tutorial" senza link, pulsante verso `/negozio/` | A, B | **Vero** | `00-home.html` r. 1152-1158 |
| Domenica con gli stessi orari dei giorni feriali | A, B | **Vero** (da verificare con il titolare) | footer di tutte le pagine |
| Stelle vuote (`star-rating none`) sotto i prodotti | A, B | **Vero** | 8 occorrenze in home, visibili negli screenshot |
| Testi in inglese "THERE ARE 4 PRODUCTS", "SHOWING ALL 4 RESULTS", "Continue Reading", "Posted On" | A, B | **Vero** | `01-categoria.txt`, `02-categoria.txt` |
| Titoli "Amazing BLOG Archivi", "visii collection Archivi"; titolo home senza nome del negozio | A, B | **Vero** | `<title>` negli HTML |
| Nessuna meta description in nessuna pagina | A, B | **Vero** | nessun `name="description"` |
| Nessuna og:image | A | **Vero** | nessun `og:image` |
| Refusi "trasfomandosi", "inclusità", "qualoratrovassi", "Piumiuno", "PHILOSOPY" | A, B | **Vero** | `00-home.txt` |
| Autore "Argenttemp", blog di 9 pagine, ultimo articolo maggio 2025 | A, B | **Vero** | `02-categoria.html` (link a `page/9/`) |
| Widget "Commenti recenti: Nessun commento da mostrare" | B | **Vero** | `02-categoria.txt` |
| Copyright © 2020; Instagram con lo "Sbaracco 3-6 settembre" | A, B | **Vero** | `00-home.txt` |
| "Nuovi arrivi": 8 capi quasi tutti da uomo, nessuno da donna | B | **Vero nella sostanza** | `00-home.txt` |
| Privacy "aggiornata al 25/05/2018"; titolare è una persona con un indirizzo diverso da quello del negozio (Loc. Piediluco 18) | A, B | **Vero** | `03-condizioni.txt` r. 21, 96 |
| La privacy parla di "contact form", "accesso cliente", cookie di profilazione cancellati dopo 1 mese | A | **Vero** | `03-condizioni.txt` r. 33, 47, 71 |
| La privacy indica il titolare come "**DPO**" | A | **Falso**: la parola "DPO" non compare. Il titolare è indicato come "Sig. [nome]". Errore minore | `03-condizioni.*` |
| Immagine "accessori donna" con `alt=""` | A | **Vero** | `00-home.html` r. 819 |
| Menu Brand con `levis-2`, `nike-costum`, circa 70 marchi | B | **Vero** | menu negli HTML |
| `joseph-ribkoff` e `joseph-ribkoff-fashion` "entrambi nel menu Brand" | B | **Impreciso**: i due URL esistono davvero, ma il secondo è nel carosello dei marchi in home, non nel menu. Errore minore | `00-home.html` r. 663 e 1038 |
| Pagina brand senza filtri né descrizione, con selettore "16" e un menu a tendina vuoto | B | **Vero** | `01-categoria-desktop.jpg` |
| "Guida alle Taglie" solo nel footer | B | **Vero** per le pagine salvate | footer |
| Non esiste una pagina Contatti o un modulo | B | **Plausibile**: non c'è nel menu né nel footer | menu e footer |
| Immagini dei Nuovi arrivi e delle News vuote negli screenshot | A, B | **Vero**, ed entrambi segnalano correttamente che potrebbe dipendere dal caricamento differito | `00-home-telefono.jpg` |

Le cifre di fonti esterne citate da A (Baymard, NN/g, Spiegel, Deloitte) non sono verificabili qui, perché non potevo fare ricerche web. Però sono etichettate con un livello di affidabilità e con i loro limiti (es. Deloitte "correlazione, non esperimento"; Spiegel "applicato per analogia"). Questo è un comportamento corretto.

## Voti

| Criterio | A | B | Nota |
|---|---|---|---|
| 1. Correttezza | 4 | 4 | Quasi tutto è verificato. A sbaglia su "DPO", B è impreciso sul duplicato nel menu. Entrambi sono errori marginali. |
| 2. Concretezza | 5 | 5 | Entrambi citano righe dell'HTML, testi esatti, prezzi e numeri. B aggiunge i link `tel:`/`wa.me` già scritti e i marchi con URL errati. A aggiunge og:image, `alt=""` e i dettagli della privacy. |
| 3. Importanza | 5 | 4 | Individuano lo stesso nucleo: popup rotto, percorso cerimonia → contatto, resi/recesso, stelle e testi del template. A segnala in più due rischi legali concreti (privacy non allineata, regola del prezzo più basso negli ultimi 30 giorni se gli sconti fino all'80% arrivano sul sito). B mette il recesso illegale solo al 4° posto. |
| 4. Utilità pratica | 4 | 5 | B ha una tabella a 8 priorità con impegno ed effetto, e raccomandazioni numerate per sezione, pronte da girare al webmaster. A è ottimo ("primi tre passi in una giornata"), ma è più lungo e più discorsivo. |
| 5. Solidità delle motivazioni | 4 | 3 | A separa i fatti verificati dalle ipotesi (livelli A-E), dichiara i limiti delle fonti e propone metriche prima/dopo realistiche per un negozio piccolo. B afferma effetti senza giustificarli ("più chiamate e chat", "concorrenza online più debole", "Più richieste da fuori Spoleto"). |
| 6. Sicurezza | 5 | 5 | Nessun consiglio dannoso. Entrambi chiedono di portare il recesso a 14 giorni e di far verificare i documenti legali. A chiede il consenso per le foto dei clienti. B suggerisce "Reso gratuito" e "Ritiro in negozio" solo se veri o attivati. |

## Problemi importanti trovati solo da A (verificati)
- Nessuna pagina ha un'immagine di anteprima (og:image): i link condivisi su WhatsApp e Facebook escono senza foto.
- La privacy policy descrive funzioni che il sito non ha (contact form, accesso cliente, profilazione con conservazione di 1 mese) e va riallineata a quello che il sito fa davvero. A però sbaglia il dettaglio "DPO".
- Rischio sulla regola del prezzo barrato (più basso degli ultimi 30 giorni) se gli sconti fino all'80% dello Sbaracco compaiono sul sito.
- Instagram in home ferma a una promozione scaduta ("Sbaracco 3-6 settembre").
- `alt=""` sull'immagine "Accessori Donna" e sul popup (accessibilità).
- Il modulo newsletter funzionante esiste già sopra il footer, quindi il popup è ridondante oltre che rotto.

## Problemi importanti trovati solo da B (verificati)
- WhatsApp flottante senza messaggio precompilato (`pre_filled:""`).
- Non esiste una pagina Contatti né un modulo di prenotazione, e l'email non è cliccabile.
- "Nuovi arrivi" solo da uomo: chi cerca abbigliamento da donna non trova nulla in home.
- Elenchi prodotti senza filtri per taglia o prezzo, in contrasto con il punto di forza delle taglie comode. La "Guida alle Taglie" è solo nel footer.
- Pagina brand senza descrizione, menu a tendina vuoto, menu Brand con circa 70 voci e slug errati (`levis-2`, `nike-costum`).
- Widget "Nessun commento da mostrare" nel blog.
- Il titolo della home non contiene il nome del negozio.

## Preferenza complessiva: A (di poco)
Le due analisi coincidono per circa l'80% e sono entrambe accurate. B è più operativo e trova più difetti concreti sull'e-commerce (filtri taglia, wa.me precompilato, pagina Contatti).
A però mette al primo posto il recesso a 10 giorni, che è illegale, e la sezione Resi vuota. Aggiunge anche altri rischi legali reali (privacy, prezzi barrati).
Inoltre A distingue con onestà i fatti verificati dalle ipotesi, mentre B promette effetti senza giustificarli.

PUNTEGGI A=4,5,5,4,4,5 B=4,5,4,5,3,5 PREFERENZA=A
