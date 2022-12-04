@ECHO off
PUSHD %~dp0

FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
SET ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,2%

ECHO %ldt%: Started running auto-updates.bat>>"C:\Users\billwallis\Desktop\auto-updates-log.txt"


:: Run VBScript windowless
::Wscript run-ops.vbs

:: Run VBScript with console
::Cscript run-ops.vbs


:: Run python windowless
::C:\Users\billwallis\PycharmProjects\webControl\venv\Scripts\pythonw.exe "C:\Users\billwallis\OneDrive - JaJa Finance\Data\Parsers\Warehouse Raw to Tidy\JAY222\main.py"
::C:\Users\billwallis\PycharmProjects\webControl\venv\Scripts\python.exe "C:\Users\billwallis\OneDrive - JaJa Finance\Data\Parsers\Warehouse Raw to Tidy\JAY222\main.pyw"

:: Run python with console
::C:\Users\billwallis\PycharmProjects\webControl\venv\Scripts\python.exe "C:\Users\billwallis\OneDrive - JaJa Finance\Data\Parsers\Warehouse Raw to Tidy\JAY222\main.py"


::TIMEOUT /t 2

FOR /F "usebackq tokens=1,2 delims==" %%i IN (`wmic os get LocalDateTime /VALUE 2^>NUL`) DO IF '.%%i.'=='.LocalDateTime.' SET ldt=%%j
SET ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,2%

ECHO %ldt%: Finished running auto-updates.bat>>"C:\Users\billwallis\Desktop\auto-updates-log.txt"
ECHO.>>"C:\Users\billwallis\Desktop\auto-updates-log.txt"
