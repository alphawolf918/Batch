@echo off
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
%backupcmd% "%USERPROFILE%\downloads" "%drive%\all\downloads"
%backupcmd% "%USERPROFILE%\Documents" "%drive%\all\docs"
@echo off
cls