@if (@CodeSection == @Batch) @then
@echo off
title NeverSleep

rem ******************************************************
rem * Questo file .bat esegue l'invio del tasto F15 ogni *
rem * 60 secondi, prevendendo che il computer vada in    *
rem * modalita Inattiva/Ibernazione.                     *
rem *                                                    *
rem * Per favore leggere il file .me prima di avviare il *
rem * batch.                                             *
rem *                                                    *
rem * Autore: StormMX                                    *
rem * Versione: 1.0                                      *
rem ******************************************************

echo NeverSleep
echo.

echo Inizio
echo.

set SendKey=CScript //nologo //E:JScript "%~F0"

set /a i=0
set /P "hr=Inserire numero ore di funzionamento: "
set /a min=(%hr%*60)

:StartLoop
ping localhost -n 60 > nul
%SendKey% "{F15}"
set /a i=%i%+1
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
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
