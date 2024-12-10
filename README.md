# Never Sleep

- **Autore:** StormMX  
- **Versione:** 1.0  

## Descrizione

**NeverSleep** è uno script Batch semplice e leggero progettato per mantenere il computer attivo. Lo script simula la pressione del tasto `F15` ogni 60 secondi, impedendo al sistema di entrare in modalità sleep o inattività.

Questo script nasce dall'esigenza di mantenere il PC attivo durante lunghe attese di connessione alle VPN aziendali.  

**N.B.:** Lo script è progettato per uso personale. Utilizzalo con cautela e solo su dispositivi su cui hai autorizzazione.

## Requisiti

- **Sistema operativo:** Windows (testato su Windows 10).  
- **CScript:** Deve essere disponibile sul sistema (incluso di default in Windows per eseguire codice JScript).  

## Funzionamento

### Clonare il repository

Per iniziare, clonare il repository con il seguente comando:

```bash
git clone https://github.com/StormMX/never_sleep.git
```

### Avviare CMD

Avviare un terminale CMD e posizionarsi nella directory con il comando:

```cmd
cd <directory_clone_repository>
```

Eseguire lo script digitando:

```cmd
NeverSleep.bat
```

### Script

Una volta avviato richiederà l'inserimento del numero di ore di funzionamento, simulando la pressione del tasto `F15` ogni 60 secondi.

Esempio di output:

```cmd
NeverSleep

Start

Inserire numero ore di funzionamento: 2
Sono passati - 5 minuti - dall'avvio dello script
Sono passati - 10 minuti - dall'avvio dello script
.
.
.
Sono passati - 120 minuti totali

End
```

### Interruzione

Lo script termina automaticamente dopo il numero di minuti specificato.

É possibile interrompere manualmente l'esecuzione chiudendo la finestra del terminale o premendo Ctrl+C.

## Note

Questa è una prima versione dello script, sviluppata per favorire la semplicità del sistema.

Il tasto simulato `F15` potrebbe non essere supportato su tutte le tastiere o configurazioni hardware, se si riscontrano problemi, è possibile modificare il tasto nel codice dello script.

Non vi è nessun controllo sull'input fornito dall'utente, se inseriti valori diversi da numeri interi verrà compromesso il corretto funzionamento.

CScript deve essere abilitato per un corretto funzionamento.

Per segnalare bug o suggerire miglioramenti, utilizza il sistema di Issues del repository GitHub.
