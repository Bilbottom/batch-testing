@ECHO OFF
FOR /F "tokens=1-5" %%A IN ("This is a short sentence") DO @echo %%A %%B %%D
PAUSE
