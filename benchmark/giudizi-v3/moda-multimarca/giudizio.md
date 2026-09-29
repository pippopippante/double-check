# Giudizio sulle tre analisi di [sito] ([nome azienda], Spoleto)

Punto di vista: il titolare, affiancato da un esperto severo. Ho controllato le affermazioni principali sui file salvati: testi `.txt`, HTML (titoli, meta, dati strutturati, classi CSS, script) e screenshot desktop e telefono di home, prodotto, categoria e carrello.

## Verifiche dei fatti principali

| Affermazione | Chi la fa | Esito |
|---|---|---|
| Nei badge c'è "Reso Gratuito", ma il reso con rimborso è a carico del cliente e il cambio è gratuito solo la prima volta | A, B, C | **Vero** (08-condizioni) |
| Il reso deve *arrivare* in magazzino entro 14 gg dalla ricezione, una regola più stretta dell'art. 57 | A, B, C | **Vero** |
| Clausola sul sigillo di garanzia e trattenuta di 4 € sul contrassegno | A (profilo legale), C (solo come fatto) | **Vero** |
| "Consegna in 24/48 h" contraddetto da "conferma d'ordine entro 24 h dal primo giorno lavorativo successivo… accertata la disponibilità" | A, B, C | **Vero** (07-condizioni e schede) |
| Numero di telefono diverso tra home e schede | A, B, C | **Vero** |
| Russia presente in due fasce; Baleari e Canarie a 75 €; "Honk Kong" | A, B, C | **Vero** |
| **Austria assente da tutte le fasce**; Svizzera e USA non citati | solo B | **Vero** |
| Scheda prodotto desktop completamente bianca; 27 elementi `cc-animate-init` nella scheda della maglia | B (conteggio esatto), C, A (in secondo piano) | **Vero** (screenshot 02/03 desktop, HTML) |
| Anche il carrello desktop è bianco | solo C | **Vero** (06-carrello-desktop) |
| Banner Outlet desktop senza testo né pulsanti; caroselli desktop senza intestazione Uomo/Donna | B (entrambi), C (banner) | **Vero** |
| "Dicono di noi…" vuoto | A, B, C | Vero su mobile. Su desktop il titolo non c'è proprio: B lo descrive giusto, C scrive "vuoto sia su desktop sia su telefono" (**impreciso**) |
| Dati strutturati Trustindex `"@type":"Product","name":"[sito] Fashion"` con ratingCount 1771 (a video 1776) | solo A | **Vero** |
| Countdown con scadenza fissa 30/09/2026 nel codice; promo chiamata "Flash Weekend" nel codice e "FLASH WEEK" nei prezzi | solo A | **Vero** |
| Recensione da 1 stella "Supporto clienti che non risponde" nel markup | A | **Vero** |
| "Taglia e Fit" dice solo "Regular Fit — vestibilità comoda…" | A | **Vero** |
| Guida taglie sul trolley a taglia unica; "Dubbi sulla taglia?" e "Stagione: Gift Card" sulla gift card | A (entrambi), B e C (gift card) | **Vero** |
| Titolo "Accessori Uomo – Taggato con "NEW_AI_27"" | B, C | **Vero** |
| Home senza H1; categorie senza meta description | B | **Vero** |
| Refuso "rimoborsi" nella meta description della pagina resi | C | **Vero** |
| 7 schede su 20 in "Nuovi arrivi" sono la stessa maglia Sebastien | A, C | **Vero**. B scrive "i primi 7 risultati": il primo in realtà è il trolley (**lieve imprecisione**) |
| Molte immagini della griglia mobile vuote | B, C | **Vero** (04-categoria-telefono) |
| "Acquista ora" nero pieno, più evidente di "Aggiungi al carrello" (solo bordo) | C | **Vero** (03-prodotto-telefono) |
| Nessun prodotto acquistabile in home | C | **Vero** |
| "Mancano i prodotti correlati" nella scheda | C (come fatto), B ("nelle schede salvate non ce ne sono") | **Parzialmente falso**: l'HTML contiene due sezioni `product-recommendations` (intent=related, 8 prodotti; intent=complementary, 4 prodotti) caricate via JS, vuote solo nella copia. B lo dice con cautela, C lo dà per certo |
| Scalapay "Paga in 3 rate da 43,33 €" | C (riportato senza commento) | **Vero, ed è un bug che nessuno segnala**: 43,33 = 130/3, cioè il prezzo pieno, mentre il prezzo scontato è 110,50 € (le rate corrette sarebbero 36,83 €) |
| Baymard "consegna poco chiara 23%" | C | La statistica di Baymard riguarda la consegna *lenta*, non quella poco chiara: etichetta sbagliata (lieve) |
| "I 3 dati che interessano all'85% dei clienti"; "WhatsApp è il canale che converte di più" | B | **Numeri senza fonte, inventati o gonfiati** |

## Valutazione per analisi

### A
- **Correttezza 5**: non ho trovato errori di fatto. Tutto quello che ho verificato torna, compresi i dettagli tecnici (schema Trustindex, scadenza del countdown, classe di chiusura iubenda).
- **Concretezza 5**: cita frasi, prezzi e codici specifici del sito.
- **Importanza 4**: ha colto molto bene la questione resi e la sua parte legale. La scheda desktop bianca, però, finisce in fondo al punto 3 come nota tecnica, mentre è potenzialmente il problema più grave per le vendite. Mancano anche la home senza prodotti e il banner outlet desktop senza testo.
- **Utilità 4**: l'ordine delle priorità è chiaro e per ogni punto dice come verificarlo. È un po' orientata alla parte legale.
- **Solidità 5**: dichiara il livello di prova (A–E), marca le ipotesi come tali e rimanda al legale i punti dubbi. Non gonfia i numeri.
- **Sicurezza 5**: consigli prudenti e a norma (Omnibus, Garante, art. 56/57).
- **Esperienza d'uso 4**: buona sulla scelta della taglia, sulle varianti colore e sui filtri. Le sfuggono la gerarchia dei pulsanti, le immagini vuote nella griglia, il carrello desktop e il bug delle rate.

### B
- **Correttezza 4**: in generale accurata. Ha una lieve imprecisione ("primi 7 risultati") e dà per mancanti i correlati, che invece esistono ma sono caricati dinamicamente (lo dice con cautela).
- **Concretezza 5**: è l'unica a notare l'Austria mancante. Conta le 27 classi di animazione, trova il tag NEW_AI_27, l'H1 e le meta description mancanti, il `free-shipping-notice`.
- **Importanza 5**: mette al primo posto la scheda desktop vuota e subito dopo i resi. È la gerarchia giusta.
- **Utilità 5**: la tabella finale con impatto e sforzo è ottima, le azioni sono semplici e ordinate.
- **Solidità 3**: ci sono affermazioni gonfiate o senza fonte ("85% dei clienti", "WhatsApp converte di più", il reso gratuito "uno dei fattori che più incidono" senza dati).
- **Sicurezza 5**: nessun consiglio rischioso. Segnala Omnibus, recesso e cookie.
- **Esperienza d'uso 4**: coglie la home desktop (intestazioni e banner outlet), la griglia vuota, le varianti e il cookie banner. Le sfuggono la gerarchia dei pulsanti, il carrello desktop e le rate Scalapay sbagliate.

### C
- **Correttezza 4**: la gran parte è vera, ma ci sono alcuni errori: i correlati dati per "mancanti", "Dicono di noi" vuoto anche su desktop, l'etichetta Baymard sbagliata. Inoltre ha visto la cifra di Scalapay senza accorgersi che non torna con il prezzo scontato.
- **Concretezza 5**: molto aderente al sito (pulsanti, fisarmoniche, "rimoborsi", Visti di recente, dettaglio del reso con IBAN).
- **Importanza 5**: resi e consegna al primo posto e la scheda desktop bianca come verifica numero uno nel riepilogo. Aggiunge la home senza prodotti.
- **Utilità 5**: il riepilogo in 9 passi è ordinato. Il piano di test sul reso gratuito, con le metriche da misurare, è concreto.
- **Solidità 4**: Bower & Maxham è uno studio vero e pertinente, ma i suoi risultati vengono estesi con un po' di disinvoltura a un piccolo multimarca. Giglio.com è un confronto utile. Ha qualche citazione in più del necessario.
- **Sicurezza 5**: il countdown va usato solo con scadenze vere, il prezzo più basso a 30 giorni va indicato e il costo del reso va scritto esplicitamente. Nessun consiglio dannoso.
- **Esperienza d'uso 5**: è la più completa sul percorso di acquisto: gerarchia dei pulsanti, taglie esaurite con "Avvisami", fit vicino alle taglie, filtri a un tocco, carrello desktop bianco, home senza prodotti, hero mobile, immagini della griglia.

## Problemi importanti trovati da una sola analisi (verificati)

- **Solo A**:
  - dati strutturati Trustindex di tipo `Product` sulle schede, con le recensioni del negozio (1771 contro le 1776 mostrate): rischio per i risultati di Google;
  - rischio legale del sigillo di garanzia e della trattenuta di 4 € sul contrassegno (art. 56);
  - countdown con scadenza reale 30/09 e nomi della promo incoerenti ("Flash Weekend" / "FLASH WEEK");
  - guida taglie sul trolley a taglia unica;
  - "Taglia e Fit" senza misure.
- **Solo B**:
  - **Austria assente** dalla tabella spedizioni, quindi finisce a 75 € (anche Svizzera e USA non sono citate);
  - home senza H1 e categorie senza meta description;
  - caroselli dei brand desktop senza intestazioni Uomo/Donna.
- **Solo C**:
  - **carrello desktop bianco** come le schede;
  - **"Acquista ora" più evidente di "Aggiungi al carrello"**;
  - **home senza nessun prodotto acquistabile** durante la promo;
  - taglie esaurite senza "Avvisami";
  - refuso "rimoborsi" nella meta description.
- **Nessuna delle tre** segnala che il widget Scalapay calcola le rate sul prezzo pieno (43,33 € = 130/3) invece che su quello scontato di 110,50 €. C riporta la cifra senza accorgersene.

## Classifica

1. **C**: è la più utile per vendere. Copre meglio di tutte il percorso reale di chi compra (pulsanti, taglie, filtri, home, carrello) e ha le priorità giuste, anche se contiene qualche piccola inesattezza (i correlati, "Dicono di noi" su desktop).
2. **A**: è la più rigorosa e affidabile, senza errori e con i rischi legali e SEO più fini. Però relega la scheda desktop bianca a una nota secondaria e trascura parecchi dettagli di navigazione.
3. **B**: ha le priorità giuste e scoperte uniche (l'Austria, la SEO), ma perde punti per le statistiche inventate ("85%", "WhatsApp converte di più") e per l'esperienza d'uso meno approfondita rispetto a C.

PUNTEGGI A=5,5,4,4,5,5,4 B=4,5,5,5,3,5,4 C=4,5,5,5,4,5,5 CLASSIFICA=C>A>B
