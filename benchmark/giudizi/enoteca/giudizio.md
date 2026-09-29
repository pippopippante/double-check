# Giudizio sulle analisi A e B – [nome azienda] ([nome azienda], Spoleto)

Verifiche fatte sulla copia salvata (`pagine.txt`, 9 pagine: .txt, .html, screenshot desktop/telefono).

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito | Prova |
|---|---|---|---|
| `<title>` = "Age Verification - " su tutte le pagine | A, B | **Vero** | riga 25 di tutti i 9 HTML |
| Blocco banner in testa a ogni pagina: Trustpilot, H1 "OFFERTISSIMA!", banner 1024×427 Poggiolaccio/Cantina Ninni, "WE SHIP TO", badge eShoppingAdvisor alto 235 px, banner B2B 1024×256, "Spedizione gratuita da 170 €" | A | **Vero** | `00-home.html` righe 1162-1177, ordine e misure esatti |
| Banner con `alt=""` | A | **Vero** | stesse righe |
| "OFFERTISSIMA!" senza un'offerta collegata | B | **Falso** | l'H1 e il banner puntano a `/offerte-speciali/` (riga 1165-1167). B non vede proprio il blocco banner |
| reCAPTCHA di PayPal sulle schede prodotto (`isSingleProduct`) | A, B | **Vero** | screenshot 01 desktop/telefono e 02 desktop; `01-prodotto.html` riga 1990 |
| Pulsante WhatsApp "Chat" copre il testo del popup età su mobile | A, B | **Vero** | `00-home-telefono.jpg` |
| Registrazione obbligatoria per acquistare | A, B | **Vero** | condizioni, punto 1 |
| Recesso: rimborso "entro 30 giorni lavorativi… escluse spese di spedizione… D.Lgs 185/1999"; niente reso sui prodotti scontati dal 40% | A | **Vero** (e in contrasto con gli art. 56 e 59 del Codice del Consumo) | condizioni, punti 3 e 9 |
| Tono diffidente ("non mi serve più… et simili", "PayPal ovviamente incassa…") | A | **Vero** | condizioni, punto 9 |
| Quantità non caricate, "1 milione di pezzi" | A, B | **Vero** | condizioni 2b |
| "Champagne Mumm Magnum" nella categoria Esauriti con "Aggiungi al carrello" | A | **Vero** | `05-categoria.txt` righe 104-106 |
| Barra laterale: _ESAURITI in cima, regioni a 0, PASQUA (94), Senza categoria | A, B | **Vero** | tutti i .txt |
| Valle d'Aosta a 0 "mentre in home ci sono due grappe valdostane" | A | **Fuorviante** | le regioni sono sottocategorie di VINI ITALIA; una grappa non ci va comunque |
| Catalogo Esclusive solo come PDF dFlip | A, B | **Vero** | `04-categoria.html` riga 1173 |
| Commenti WordPress 2020-2023, "Avete il vov" senza risposta; "3.000" contro "4.000"; © 2015 | A, B | **Vero** | `00-home.txt` |
| Novità in home: A dice 26, B dice 25, 10 [nome azienda] di fila | A, B | **Conteggio sbagliato per entrambi** (sono 28); i 10 [nome azienda] sono veri | `00-home.txt` |
| Apple Pay, Google Pay e PayPal Pay Later sulla scheda | A | **Vero** | `01-prodotto.html` |
| Dati strutturati Product/Offer presenti | B (A: "da verificare") | **Vero** | `01-prodotto.html` riga 1865 |
| Barra fissa "Aggiungi al carrello" | B | **Vero** | `storefront-sticky-add-to-cart` |
| Chat WhatsApp con dati demo ("John Doe", "Hello! I'm testing the Social Chat plugin") nella configurazione | B | **Vero** (è nella configurazione; B dice correttamente che va verificato se il cliente lo vede) | `01-prodotto.html` riga 1867, home riga 1807 |
| Esiste solo "Ritiro con vostro corriere: € 0", manca il ritiro in negozio | B | **Vero** | condizioni, punto 5 |
| La spedizione è già calcolata nel carrello | B | **Vero** secondo le condizioni (punto 5); A propone di aggiungerla come se mancasse | condizioni, punto 5 |
| Titolo "Cart" in inglese | B | **Vero** | `06-carrello.txt` |
| "Miscela al 30" senza gradazione | B | **Vero** | `03-prodotto.txt` |
| Correlati di un amaro = gin e rum da 1 L | A, B | **Vero** | `03-prodotto.txt` |
| "Tutti gli screenshot mostrano solo il popup età" | B | **Impreciso**: gli screenshot delle schede 01 e 02 mostrano il reCAPTCHA (e lo dice B stesso più avanti) | screenshot |

## Voti

| Criterio | A | B | Nota |
|---|---|---|---|
| 1. Correttezza | 4 | 3 | A: piccoli errori (Valle d'Aosta/grappe, 26 novità, spedizione nel carrello). B: sbaglia su "OFFERTISSIMA senza offerta" e descrive la testata della home senza il blocco di banner che c'è davvero |
| 2. Concretezza | 5 | 5 | Tutte e due citano righe, file, prezzi, conteggi e impostazioni di WooCommerce |
| 3. Importanza | 5 | 4 | A trova i due problemi più pesanti che B non vede: clausole di recesso illegittime (rischio legale e di fiducia) e muro di banner prima del prodotto su ogni pagina. B ha in più il ritiro in negozio e la chat con dati demo, che però contano meno |
| 4. Utilità pratica | 5 | 5 | Tutte e due hanno una tabella di priorità, i percorsi delle impostazioni e cosa misurare. B è un po' più immediata per il titolare |
| 5. Solidità delle motivazioni | 4 | 4 | A assegna a ogni fonte un livello di affidabilità e segnala le ipotesi, ma usa molte statistiche Baymard generiche. B cita poco e resta ragionevole, con qualche frase gonfiata ("40 pagine non le sfoglia nessuno") |
| 6. Sicurezza | 5 | 5 | Nessun consiglio dannoso. A consiglia di far rivedere il testo legale da un avvocato. B non segnala le clausole illegittime, ma non consiglia niente di rischioso |

## Problemi importanti trovati solo da A (verificati)
- Clausole di recesso non conformi: rimborso in 30 giorni lavorativi senza spese di consegna, con riferimento al D.Lgs 185/1999 abrogato; niente reso sui prodotti scontati dal 40%. Va contro gli art. 56 e 59 del Codice del Consumo.
- Blocco di 7 elementi (Trustpilot, H1 "OFFERTISSIMA!", 2 banner grandi, badge da 235 px…) ripetuto su ogni pagina prima del contenuto. Su ogni pagina il primo H1 è "OFFERTISSIMA!" e i banner hanno `alt` vuoto.
- Un prodotto nella categoria Esauriti che si può mettere nel carrello (Mumm Magnum).
- Tono diffidente verso il cliente nelle condizioni ("non mi serve più… et simili").
- Categorie tecniche ("_NOVITA", "1 Lt...") visibili nella scheda prodotto.

## Problemi importanti trovati solo da B (verificati)
- Plugin della chat WhatsApp ancora con i dati demo ("John Doe", messaggio di test in inglese).
- Manca il ritiro in negozio: esiste solo "Ritiro con vostro corriere € 0", strano per un'azienda con punto vendita.
- Nessun filtro nelle categorie grandi (Gin 629, Whisky 535, Vini Italia 1.043).
- Carrello intitolato "Cart" in inglese e carrello vuoto senza proposte.
- Schede tecniche non uniformi (la Miscela al 30 non ha la gradazione).

## Preferenza complessiva: A
A ha verificato meglio il sito e ha trovato i due problemi con più impatto che B non vede: le clausole di recesso illegittime e il muro di banner prima di ogni prodotto.
B è concreta e trova cose utili (la chat con i dati demo, il ritiro in negozio, i filtri), ma sbaglia sulla testata della home e non vede il rischio legale.
Tutte e due sono pratiche e sicure: A vince per importanza e correttezza, non per quantità.

PUNTEGGI A=4,5,5,5,4,5 B=3,5,4,5,4,5 PREFERENZA=A
