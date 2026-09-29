# Prove e-commerce verificate

Verificate il 2026-09-26. Livello di affidabilità tra parentesi.

## Checkout e carrello

Fonte: Baymard Institute, https://baymard.com/lists/cart-abandonment-rate e https://baymard.com/research/checkout-usability

- Tasso medio documentato di abbandono carrello: **~70%** (media di 50 studi). (B)
- Motivi di abbandono durante il checkout (sondaggio Baymard, esclusi i "stavo solo guardando"): (B)
  - 40% costi extra troppo alti (spedizione, tasse, commissioni)
  - 20% consegna troppo lenta
  - 19% non si fidavano a dare la carta
  - 18% il sito richiedeva la creazione di un account
  - 17% checkout troppo lungo/complicato
  - 17% errori o crash del sito
  - 13% politica resi insoddisfacente
  - 12% non riuscivano a vedere/calcolare il costo totale in anticipo
  - 9% metodi di pagamento insufficienti
- Un checkout ideale può avere **12-14 elementi di form**; la media USA ne mostra ~23. Il miglioramento del design del checkout vale un potenziale **+35%** di conversione sui grandi siti. (B)
- Il 62% dei siti non rende l'acquisto come ospite abbastanza visibile: gli utenti credono che l'account sia obbligatorio. (B)

Cosa ne segue:
- Costo totale (spedizione inclusa) visibile il prima possibile: pagina prodotto o carrello, non all'ultimo passo.
- Acquisto come ospite come opzione più evidente; proporre l'account dopo l'ordine.
- Solo i campi necessari; indirizzo con autocompletamento; un campo "nome completo" invece di due quando possibile.
- Riepilogo ordine sempre visibile; data di consegna stimata esplicita.
- Metodi di pagamento locali che il pubblico usa davvero (verificare per il paese).

## Pagina prodotto

Fonte: https://baymard.com/blog/current-state-ecommerce-product-page-ux (30.000+ pagine valutate)

- 52% dei siti desktop e 62% dei mobile hanno UX della pagina prodotto "mediocre" o peggio. (B)
- Lacune più frequenti: (B)
  - 57% usa menu a tendina per le taglie invece di pulsanti
  - 37% non ha immagini "in scala" (prodotto accanto a qualcosa di riferimento o in uso)
  - 67% non mostra stima di spedizione/costo totale nella pagina prodotto
  - 44% non mostra o non linka bene la politica resi
  - 89% non risponde alle recensioni negative
  - 89% non permette la lista desideri senza registrazione
  - 81% non mostra il prezzo unitario per prodotti in quantità
- Aree con problemi gravi più comuni: scheda tecnica, spedizione e resi, recensioni, sezione "acquista", prodotti correlati. (B)

## Velocità

Fonte: Deloitte, "Milliseconds Make Millions" (2020), https://www.deloitte.com/ie/en/services/consulting/research/milliseconds-make-millions.html

- 30 milioni di sessioni, 37 brand: un miglioramento di **0,1 s** nella velocità mobile è associato a **+8,4%** conversioni retail e **+9,2%** valore medio ordine. (C: studio osservazionale commissionato da Google, correlazione non esperimento; la direzione è però coerente con molta altra evidenza)
- Il famoso "Amazon perde l'1% per ogni 100 ms" è un aneddoto di una presentazione interna del 2006: non citarlo come prova. (E)

## Recensioni

Fonte: Spiegel Research Center, Northwestern University (2017), https://spiegel.medill.northwestern.edu/how-online-reviews-influence-sales/

- Un prodotto con 5 recensioni ha probabilità di acquisto **+270%** rispetto a uno senza recensioni. (C)
- La probabilità di acquisto raggiunge il massimo con voto medio **4,0-4,7**; sopra 4,7 cala (percepito "troppo bello per essere vero"). (C)
- L'effetto delle recensioni è maggiore sui prodotti costosi (+380%) che su quelli economici (+190%). (C)

Cosa ne segue: mostrare recensioni anche negative, non filtrarle (è anche un obbligo di legge, vedi `legale-ue-it.md`); rispondere alle negative; le prime recensioni valgono moltissimo, quindi raccoglierle attivamente dopo la consegna.

## Prezzi

- **Prezzi che finiscono in 9**: in tre esperimenti sul campo (catalogo di abbigliamento) hanno aumentato la domanda; l'effetto è più forte sui prodotti nuovi e più debole se c'è già un segnale "Saldi". Anderson & Simester 2003, https://link.springer.com/article/10.1023/A:1023581927405 (C: esperimento sul campo reale, ma un solo rivenditore)
  - Non adatto a un posizionamento premium/lusso: lì il prezzo tondo comunica qualità (E, da verificare per il caso specifico).
- **Spedizione gratuita / effetto prezzo zero**: gli utenti reagiscono a "gratis" in modo sproporzionato rispetto a un piccolo costo; per la soglia di spedizione gratuita calcola margini e valore medio ordine prima di sceglierla. (C, Shampanier, Mazar & Ariely 2007, Marketing Science, esperimenti di laboratorio: https://pubsonline.informs.org/doi/10.1287/mksc.1060.0254)
