---
name: double-check
description: Prima di creare o cambiare in modo significativo un pezzo importante di un progetto, fermati a studiare da fonti attendibili (ricerca scientifica, ricerca di settore, concorrenza filtrata) come farlo al meglio, invece di decidere a gusto. Usala quando si progetta o rifà una funzionalità, una pagina, un sistema o un testo che incide sull'esperienza di chi lo usa o sul risultato del progetto: pagine e flussi di siti (e-commerce, informazione, landing), UX e struttura, prezzi e promozioni, testi e copy, sistemi di gioco (battle pass, progressione, economia, onboarding), e simili, oppure quando si sceglie tra alternative senza un motivo chiaro, quando l'utente è in dubbio ("non lo so", "fai te") o chiede di cercare online come fare qualcosa del prodotto (non documentazione tecnica, errori o librerie). Vale anche per i dettagli piccoli se toccano comodità o fastidio di chi usa il prodotto. In revisioni e audit caricala all'inizio: ti dice in che ordine lavorare (prima l'analisi completa con gli occhi di chi usa il prodotto, poi ricerca solo sui 2-4 punti chiave, poi un controllo pratico finale) e non trasforma l'analisi in una ricerca. Non per bug fix, refactoring, piccole modifiche o codice la cui correttezza non dipende da come si comportano le persone.
---

# Double check

Prima di costruire un pezzo importante, studia come si fa al meglio. Decidi sulle prove, non sul gusto.

**Questa skill è uno strumento, non una lente.** Non deve diventare il centro del lavoro: il lavoro resta fare la cosa migliore per chi la userà, guardando tutto. La ricerca serve solo nei pochi punti dove il gusto non basta. Se ti accorgi di stare cercando fonti su tutto, fermati e torna al quadro generale.

## 1. Chi la usa e cosa conta

L'obiettivo è **la versione migliore per chi la usa**: che sia chiara, comoda, piacevole, affidabile, che non faccia perdere tempo né fiducia. Il risultato del progetto (vendite per un e-commerce, lettori che tornano per un sito di informazione, giocatori che restano per un gioco) è la conseguenza. All'inizio stabilisci (o chiedi, se non è ovvio) chi lo usa e qual è il risultato.

Una scelta che spreme l'utente (inganni, dark pattern, pressione falsa) peggiora il risultato nel tempo (resi, abbandoni, recensioni, sanzioni) e non si fa, anche se la fanno altri.

## 2. Quando fermarsi a studiare

Fermati se la risposta è **sì a tutte e tre**:

1. **Sbagliare fa danno?** Sì se almeno uno:
   - **peggiora l'esperienza di chi lo usa**: lo confonde, gli fa perdere tempo, lo frustra, gli toglie fiducia, lo esclude (accessibilità), o rende il prodotto meno piacevole. È il criterio principale.
   - incide sul risultato del progetto (sezione 1). Attenzione: questo errore è invisibile. Il codice funziona, nulla si rompe, ma il risultato è peggiore e nessuno se ne accorge.
   - è difficile da cambiare dopo (struttura dei dati, economia di un gioco già in mano ai giocatori, architettura dell'informazione)
2. **Altrimenti deciderei a gusto?** Se la risposta giusta è già chiara (convenzione standard, bug, richiesta precisa dell'utente), non serve.
3. **Qualcuno l'ha studiato?** Se esistono studi, dati di settore o casi documentati, cercali. Se è davvero nuovo, ragiona e dichiara che è un'ipotesi.

Segnali che devono farti fermare anche a metà lavoro:
- stai scegliendo tra alternative senza un motivo esplicito
- stai scrivendo "gli utenti preferiscono..." / "questo aumenta..." senza fonte
- stai copiando uno schema "perché si fa così"
- la risposta onesta a "perché così?" sarebbe "perché è bello" o "perché è comune"
- **l'utente è in dubbio** ("non lo so", "non saprei", "fai te"): è il segnale più forte
- **un tentativo è stato bocciato** ("è terribile, trova un'altra strada"): non tirare a indovinare di nuovo, studia
- stai per contraddire una ricerca fatta in precedenza sul progetto: dillo e spiega cosa è cambiato

Se l'utente chiede esplicitamente una ricerca ("fa uno studio", "cerca come fanno", "ci sono studi?"), falla sempre, e rispondi a tutte le domande che pone: "è obbligatorio per legge?" e "serve davvero o è un ingombro?" sono due ricerche diverse. Se dice "non darmi per forza ragione", cerca apposta le prove contro la sua idea (e contro la tua).

Non fermarti per: bug fix, refactoring, piccole modifiche, dettagli visivi che non cambiano come ci si trova chi usa il prodotto, o se l'utente ha detto di procedere senza ricerca. Un dettaglio piccolo (un pulsante che compare e scompare, la dimensione di un riquadro, un font, il nome del carrello) merita comunque una ricerca se può rendere l'esperienza scomoda o fastidiosa.

Il momento migliore è **prima di iniziare** la funzionalità (in pianificazione), non a ogni riga.

**Intensità proporzionata.** Una ricerca vera (web, subagenti, 5-10 fonti) solo per le 1-3 decisioni più grosse del lavoro. Per il resto bastano i pacchetti già pronti, o il buon senso dichiarato come tale. Non ogni frase ha bisogno di una fonte o di un livello.

### Nelle revisioni e negli audit

Qui l'errore tipico è trasformare l'analisi in una ricerca e perdere di vista l'esperienza d'uso. L'ordine è:

1. **Analisi normale, completa, con gli occhi di chi usa il prodotto.** Percorri il progetto come farebbe un utente vero, da telefono e da computer: trova quello che cerca? Capisce cosa fare? Cosa lo rallenta, lo confonde, lo frustra o gli manca? Guarda navigazione, contenuti, flussi (es. dalla scheda al carrello al pagamento), link e pulsanti che non funzionano, dettagli trascurati (dati demo, testi di prova, elementi vecchi), ricerca e filtri, cosa succede quando qualcosa è vuoto o va storto. Cerca anche conti che non tornano (es. un pacchetto che costa più dei pezzi), promesse non mantenute e incoerenze tra pagine.
2. **Scegli le priorità** in base a quanto ogni problema pesa sull'esperienza e sul risultato.
3. **Usa la ricerca solo sulle 2-4 conclusioni più importanti**, per verificarle, capire come correggerle al meglio, o scoprire rischi che a occhio non si vedono (es. obblighi di legge con il pacchetto `legale-ue-it.md`).
4. **Controllo pratico finale**: prima di consegnare, rileggi il progetto e verifica di non aver trascurato problemi concreti d'uso perché eri concentrato sulla ricerca.

## 3. Come studiare

Annuncia in una riga cosa stai per studiare (es. "Mi fermo a studiare come si progettano i battle pass"), così l'utente può dire di saltare.

0. **Trasforma il tema in una domanda che porta a una scelta**: non "come si fa una pagina prodotto?" ma "il pulsante d'acquisto resta fisso o sta nel riquadro?". Se la risposta non può cambiare quello che farai, non serve cercarla.
1. **Prima conosci a fondo il progetto stesso**: i suoi contenuti e dati reali (prezzi, testi, catalogo, configurazioni, pagine collegate). I problemi specifici del progetto spesso valgono più di qualsiasi principio generale. La ricerca esterna completa questa conoscenza, non la sostituisce.
2. **Controlla se c'è un pacchetto di conoscenza** per il campo (sotto). Se copre la domanda, usalo e basta.
3. **Cerca fonti** con ricerca web, aprendo le pagine, non fidandoti degli snippet. Priorità alle fonti forti della scala (sez. 4). Cerca anche cosa potrebbe smentire la prima idea (studi contrari, contesti in cui l'effetto sparisce), non solo conferme.
4. **Studia la concorrenza** se utile, passandola al filtro (sez. 5).
5. **Fermati a circa 5-10 fonti buone**, poi decidi. Se le fonti concordano, anche meno.
6. **Rendi esplicito il limite** alla fine della ricerca:
   > Ho consultato N fonti su [temi coperti]. Non ho approfondito: [temi rimasti aperti]. Vuoi che continui su uno di questi?

Pacchetti di conoscenza (carica solo quello che serve):
- `references/ecommerce/evidenze.md`: checkout, pagina prodotto, velocità, recensioni, prezzi
- `references/ecommerce/legale-ue-it.md`: cosa è vietato in Italia/UE (urgenza, scarsità, sconti, recensioni, accessibilità)
- `references/testi-web.md`: come si legge sul web; titoli, descrizioni, CTA, microcopy per qualsiasi sito
- `references/studi-deboli.md`: effetti psicologici famosi che non reggono. **Controllalo prima di citare qualsiasi "principio psicologico"**, in qualsiasi campo

**Ricerche ampie → subagente.** Solo per le decisioni grosse: se la ricerca richiede molte fonti o più temi separati, delegala a un subagente (general-purpose), uno per tema, anche in parallelo. Passagli: la domanda precisa, il contesto del progetto (cosa è, per chi, risultato che conta), e le regole delle sezioni 4 e 5. Chiedigli di restituire solo la sintesi: raccomandazioni con link e livello, più cosa non ha coperto. Le ricerche piccole (1-3 fonti) falle direttamente.

Se un campo diventa ricorrente, i risultati della ricerca possono diventare un nuovo pacchetto (proponilo all'utente).

## 4. Scala di affidabilità

Ogni prova esterna usata per una decisione importante dichiara il livello (non serve per le osservazioni sul progetto stesso né per i punti minori):

- **A**: meta-analisi, risultati replicati, oppure obbligo di legge
- **B**: ricerca sistematica su larga scala o enti riconosciuti del settore (es. Baymard e Nielsen Norman Group per il web; dati di settore pubblicati per i giochi)
- **C**: singolo studio, singolo esperimento, singolo A/B test o postmortem pubblicato, talk di esperti (es. GDC) con dati
- **D**: pratica diffusa tra i concorrenti (passata al filtro della sez. 5)
- **E**: ragionamento o opinione, da scrivere come **ipotesi**, mai come fatto

Regole anti-invenzione:
- **Mai citare uno studio, un numero o una percentuale a memoria.** O viene da un pacchetto, o l'hai aperto in questa sessione con il link. Altrimenti scrivi "non verificato" o non citarlo.
- **Senza fonte non vuol dire senza proposta.** Se non hai una prova, proponi comunque la soluzione più sensata, marcata come ipotesi (E), e di' cosa servirebbe per confermarla. Non lasciare un punto aperto con "non ho un dato".
- Uno studio di laboratorio con pochi partecipanti non dimostra cosa succede nel prodotto reale: dichiaralo.
- Distingui cosa le persone **dicono** di preferire da cosa **fanno**: un sondaggio di gradimento non dimostra che una scelta migliori il comportamento. Preferisci le prove sul comportamento.
- Se le prove sono in conflitto, dillo e spiega quale pesa di più e perché.
- Le fonti che vendono qualcosa (tool, agenzie, "X statistiche che devi conoscere") citano spesso numeri senza origine: risali alla fonte originale o scartale.

## 5. Concorrenza con filtro

La concorrenza (o prodotti simili) è una fonte debole (D): serve a trovare idee e convenzioni, non a dimostrare che qualcosa funziona.

1. **Scegli 3-5 esempi**: almeno un leader e almeno uno di dimensione/contesto simile al nostro.
2. **Estrai lo schema** (cosa fanno, dove, come), non l'estetica.
3. **Filtra ogni schema**:
   - **Convergenza**: lo fanno quasi tutti? È una convenzione, gli utenti se la aspettano. Lo fa uno solo? Esperimento o errore.
   - **Perché funziona per loro**: dipende da qualcosa che noi non abbiamo? (brand noto, pubblico enorme, fiducia già costruita, budget, contenuti)
   - **Contesto**: stesso pubblico, tipo di prodotto, fascia di prezzo, piattaforma?
   - **Coerenza con prove A-C**: se le contraddice, vincono le prove salvo motivo specifico.
   - **Legalità ed etica**: se è un dark pattern o è vietato, si scarta anche se lo fa un grande.
   - **Bias del sopravvissuto**: "chi ha successo lo fa" non dimostra che sia questo a farlo avere successo.
4. **Verdetto per ogni schema**: adotta / adatta (come) / scarta (perché).

## 6. Formato delle raccomandazioni

Per le decisioni importanti, breve (i punti minori bastano in una riga):

```
**Cosa**: [la scelta concreta]
**Perché**: [prova + fonte/link], livello [A-E]
**Vale per noi?**: [perché il contesto corrisponde, o cosa cambia]
**Rischio**: [cosa potrebbe rendere sbagliata la scelta]
**Come verificarlo**: [metrica da guardare o test]
```

Ogni fonte citata ha il suo link, anche quelle prese dai pacchetti (i link sono nei file): "Baymard, B" senza link non basta. Le prove che vengono dal progetto stesso citano il file o la pagina.

Dichiara il principio applicato, così la scelta è controllabile. Più raccomandazioni: ordinale per impatto atteso × affidabilità.

## 7. I dati del progetto vincono

La prova più forte per un progetto specifico sono i suoi dati: i contenuti del progetto stesso (vedi sez. 3, punto 1), analytics, registrazioni di sessione, resi, domande al supporto, recensioni, telemetria di gioco. Se esistono, usali prima di tutto il resto.
Con pochi utenti un test A/B non arriva a risultati affidabili: si decide sulle prove esterne e si monitora prima/dopo, sapendo che è un segnale debole.
