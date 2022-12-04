@ECHO OFF

:: Basic declaration
SET VAR=Some Value
ECHO The value of VAR is %VAR%
PAUSE

:: Using user input (/p)
SET /p INPUT="Type something!"
ECHO You typed in %INPUT%
PAUSE

:: Evaluating a string {/a)
SET EQUATION=1+1
SET /a VALUE=%EQUATION%
ECHO %EQUATION% is %VALUE%
PAUSE
