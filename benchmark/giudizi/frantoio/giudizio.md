# Giudizio sulle analisi A e B – [sito]

Verifiche fatte solo sui file della copia salvata (testi, HTML, screenshot desktop e telefono).

## Verifica delle affermazioni principali

| Affermazione | Chi | Esito | Prova |
|---|---|---|---|
| Nessuna parola su spedizioni, costi, resi, recesso | A, B | **Vero** | grep "spedizion/consegn/gratuit/recesso" su tutti gli HTML: 0 risultati |
| 74 prodotti, 9 per pagina, 9 pagine; 14 categorie | A, B | **Vero** | 04-categoria.txt "1–9 di 74", paginazione fino a 9 |
| Shop apre con "Palle del Nonno", "Coglioni di mulo", pizza esaurita, confezioni natalizie; niente olio | A, B | **Vero** | 04-categoria.txt e screenshot |
| I due salami sono senza foto | solo A | **Vero** | 04-categoria-desktop.jpg: riquadri senza immagine |
| Primo prodotto in home = pizza di Pasqua esaurita, senza nome, solo "€17.00" | A, B | **Vero** | 00-home.txt, screenshot; schema `OutOfStock` in 01-prodotto.html |
| Titolo "Un profumo intenso…" invisibile su desktop per `visibility:hidden` + classe `wow` | A (effetto), B (effetto + causa) | **Vero** | 00-home.html riga 464; spazio bianco nello screenshot |
| Descrizione olio identica, 2 frasi, "spremitura a freddo" | A, B | **Vero** | 02 e 03-prodotto.txt identici |
| Etichetta in foto: "novello", "non filtrato", "100% italiano", "Selezione" | A, B | **Vero** | 02-prodotto-desktop.jpg |
| Pulsante Google+ nei link di condivisione | solo A | **Vero** | `google-plus` in 01/02/03-prodotto.html; icona G+ nello screenshot |
| Schema prodotto `valueAddedTaxIncluded: false` | solo A | **Vero** | 01/02/03-prodotto.html |
| Prezzi al litro: 750 ml 18,67; 3 L e 5 L entrambi 15 €/L | A (parziale), B | **Vero** | 45/3 = 75/5 = 15. A però dice che il prezzo al litro "spinge verso la lattina grande", senza notare che la 5 L non costa meno della 3 L: l'ha notato solo B |
| Su telefono il prodotto arriva dopo ricerca + 14 categorie (~1.700 px) | A, B | **Vero** | 02-prodotto-telefono.jpg: la foto parte a circa 1.750 px su 6.536. "Quasi due schermate" (A) è un po' esagerato: con densità 2x sono circa 850 px CSS, cioè una schermata abbondante |
| Screenshot telefono dello shop di circa 10.000 px, un prodotto per riga | B | **Vero** | 04-categoria-telefono.jpg: 780×10.246 |
| Dopo "Aggiungi al carrello" si resta in home, cambia solo il contatore "1 Prodotto – €14.00" | A, B | **Vero** | 06-carrello.txt |
| Contatti: "1 Prodotto – €28.00" | A, B | **Vero** (l'interpretazione "due pezzi contati come uno" è un'ipotesi, e tutti e due lo dicono) | 07-contatti.txt |
| Link Instagram rotto (`href="#" onclick="return false"`) | solo B | **Vero** | 00-home.html riga 644 |
| Icone pagamento non cliccabili, `alt=""`; link privacy del banner cookie nascosto (`cmplz-hidden`, `href="#"`) | solo B | **Vero** | 00-home.html righe 299-300 e 650-657 |
| P.IVA solo nella pagina Contatti, footer senza indirizzo/P.IVA | A, B | **Vero a metà** | Nell'HTML il footer contiene "Copyright L'Antico Frantoio … P.iva [P.IVA]", ma ha `visibility:hidden` (classe `wow`) e non si vede. Il visitatore non la vede, quindi il senso è giusto. B però ha letto l'HTML e scrive "non nel footer", cosa imprecisa. Nessuno dei due ha colto che basta rendere visibile quella riga |
| Stesso telefono per negozio e ristorante | solo A | **Vero** | 07-contatti.txt: [telefono] per entrambi |
| Mappa bloccata dal consenso ai cookie di marketing | A, B | **Vero** | 07-contatti. A però la descrive come "riquadro grigio": in realtà è un'anteprima di mappa verde con sopra la scritta. È un errore piccolo |
| Modulo senza casella privacy; pulsante "Invia" con lo stile del browser | A, B | **Vero** | L'unico "privacy" in 07-contatti.html è quello del banner cookie; il pulsante si vede nello screenshot |
| Nessuna email né `tel:` cliccabile | A, B | **Vero** | nessun `mailto:` o `tel:` negli HTML |
| Nessuna recensione (`aggregateRating` assente) | A, B | **Vero** | 0 occorrenze |
| Meta description della home tronca ("…giovani ragazzi"), titoli "- [nome azienda]" | solo B | **Vero** | 00-home.html |
| Pizza: titolo "Pizza al formaggio", descrizione "Torta di Pasqua", mancano ingredienti e allergeni | solo B | **Vero** | 01-prodotto.txt |

Cosa non hanno visto né A né B: nell'HTML della home c'è anche un titolo nascosto **"Disponibile Olio nuovo"** (riga 464, stessa animazione `wow`). Il sito ha già un annuncio stagionale, ma è invisibile. Questo rafforza la loro proposta di un preordine dell'olio nuovo.

Affermazioni normative di B (Reg. UE 1169/2011 art. 14, Reg. UE 2022/2104 sulle diciture "a freddo", Codice del Consumo artt. 14-15 e 49, D.Lgs. 70/2003 art. 7): sono coerenti con quello che so di queste norme e B le presenta con cautela ("va verificato con un consulente"). Non ho potuto verificarle sulle fonti, perché mi è stato chiesto di non fare ricerche web.

## Voti

| Criterio | A | B | Motivo |
|---|---|---|---|
| 1. Correttezza | 4 | 4 | Nessun errore grave in nessuno dei due. A: mappa "grigia", "quasi due schermate", e un prezzo al litro che secondo A spinge verso la 5 L quando costa quanto la 3 L. B: "P.IVA non nel footer" mentre è nell'HTML ma nascosta, pur avendo letto proprio quel codice. |
| 2. Concretezza | 5 | 5 | Tutti e due citano prodotti, prezzi, file e righe di codice reali. B scende più nel dettaglio (classi CSS, `href="#"`, tabella €/L); A ha dettagli propri (Google+, IVA nello schema, salumi senza foto, stesso numero di telefono). |
| 3. Importanza | 4 | 5 | Tutti e due mettono al centro la mancanza di informazioni sulla spedizione, la scheda dell'olio, la home e lo shop. Solo B vede i rischi più seri per un produttore di olio: informazioni obbligatorie dell'etichetta non disponibili online, diciture "spremitura a freddo" e "100% italiano" contro "Umbria", allergeni, prezzo al litro obbligatorio, 5 L non conveniente, Instagram rotto. |
| 4. Utilità pratica | 5 | 4 | A è più snello, con esempi pronti (testi per la home, fascia di rassicurazione, raggruppamento delle categorie, preordine olio nuovo, modulo per i regali aziendali) e una tabella di priorità chiara. B è ordinato e dice come misurare i risultati, ma è appesantito da citazioni e livelli A/B/C/E: il titolare fa più fatica a capire da dove partire. |
| 5. Solidità delle motivazioni | 4 | 4 | A argomenta bene sul caso concreto (vetro fragile, stagione, cesti di Natale), ma alcune frasi sono assolute ("prima causa di carrelli abbandonati"). B separa i fatti dalle ipotesi e dichiara la debolezza del confronto prima/dopo. Però usa statistiche generiche e poco pertinenti (il +124% di NN/g, Deloitte sulla velocità senza averla misurata, Spiegel) che danno un'impressione di rigore maggiore di quella reale. |
| 6. Sicurezza | 4 | 5 | A propone frasi come "Spedizione in tutta Italia in 48 h" e "Imballo sicuro", e suggerisce di "importare" le recensioni Google, senza ricordare che vanno pubblicate solo se vere e con le regole Omnibus. Inoltre non tratta le diciture dell'etichetta, che sono un rischio legale. B avverte esplicitamente contro scarsità e timer finti e contro recensioni filtrate, e chiede di usare le diciture solo "se vere". |

## Problemi importanti trovati solo da uno dei due (verificati)

**Solo A:**
- Due salumi in cima allo shop **senza foto**.
- Pulsante **Google+** ancora presente nelle schede prodotto: fa sembrare il sito trascurato.
- Dati strutturati con **`valueAddedTaxIncluded: false`** (da correggere).
- **Stesso numero di telefono** per negozio e ristorante; mancano recapiti separati per ordini e prenotazioni.
- Proposta di un'**unica scheda olio con scelta del formato** al posto di 7 schede quasi uguali.
- Modulo per **regali aziendali e preventivi di cesti** prima di Natale; categoria "Regali" valida tutto l'anno.

**Solo B:**
- **La lattina da 5 L costa al litro quanto la 3 L** (15 €/L): il formato grande non conviene.
- **Prezzo al litro obbligatorio** e assente.
- **Informazioni obbligatorie per la vendita di alimenti online** assenti (Reg. 1169/2011 art. 14); **allergeni e ingredienti** mancanti nella pizza.
- **Diciture dell'olio a rischio**: "spremitura a freddo" non è una dicitura regolamentata; il testo contraddice l'etichetta (non filtrato/novello contro "intatti a lungo"; "100% italiano" contro l'Umbria di cui parla il sito).
- **Causa tecnica del titolo invisibile** (`visibility:hidden` + `wow`), con la soluzione precisa; lo stesso problema su "Seguici".
- **Link Instagram rotto** in tutte le pagine; **link privacy del banner cookie nascosto**; icone di pagamento finte.
- **Meta description tronca** e titoli delle pagine deboli.
- Avvertenza su **scarsità finta e recensioni** (rischio sanzioni AGCM).

## Preferenza complessiva: B

B individua più problemi che contano davvero per un frantoio che vende online: le diciture dell'olio e le informazioni di legge, il prezzo al litro, la 5 L non conveniente, Instagram rotto. Tutti sono verificati nei file e i consigli sono più prudenti sul piano legale.
A è più facile da leggere e più operativo, con buone idee commerciali (formati riuniti in una scheda, regali aziendali, salumi senza foto), ma gli manca il capitolo sulla conformità, che è un rischio reale.
Per il titolare, B vale di più. È però più pesante da leggere: conviene usare la tabella di priorità di B insieme agli esempi pratici di A.

PUNTEGGI A=4,5,4,5,4,4 B=4,5,5,4,4,5 PREFERENZA=B
