@if (@CodeSection == @Batch) @then
@echo off
title NeverSleep

rem ******************************************************
rem * Questo file .bat esegue l'invio del tasto F15 ogni *
rem * 60 secondi, prevenendo che il computer vada in     *
rem * modalita Inattiva/Ibernazione.                     *
rem *                                                    *
rem * Per favore prendere visione dei file .md           *
rem * prima di avviare il batch.                         *
rem *                                                    *
rem * Autore: StormMX                                    *
rem * Versione: 1.0                                      *
rem ******************************************************

echo NeverSleep
echo.

echo Inizio
echo.

rem Imposta il comando per eseguire la sezione JScript del file corrente
set SendKey=CScript //nologo //E:JScript "%~F0"

set /a i=0
set /P "hr=Inserire numero ore di funzionamento: "
set /a min=(%hr%*60)

:StartLoop
rem Attende circa 60 secondi usando il comando ping (su se stesso) come timer
ping localhost -n 60 > nul
rem Invia il tasto F15, raramente utilizzato dalla maggior parte delle applicazioni
%SendKey% "{F15}"
set /a i=%i%+1
rem Ogni 5 minuti stampa un messaggio sul tempo trascorso dall'avvio dello script
set /a check=%i% %% 5
if %check%==0 (echo Sono passati - %i% minuti - dall'avvio dello script)
if %i%==%min% (goto EndLoop)
goto StartLoop
:EndLoop

echo Sono passati - %i% minuti totali
echo.

echo Fine
echo.

pause

@end

// *** Sezione JScript ***

// Crea un oggetto Shell per accedere alle funzioni di sistema
var WshShell = WScript.CreateObject("WScript.Shell");

// Simula la pressione del tasto passato come argomento
WshShell.SendKeys(WScript.Arguments(0));
