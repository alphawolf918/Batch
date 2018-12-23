@echo off
title Image File Copier
set /a x=0
@echo Result File > results.txt
@echo Success File > success.txt
@echo Error File > error.txt
setlocal ENABLEDELAYEDEXPANSION
for /f "eol=;" %%i in (copy.txt) do (
	set /a x=x+1
	echo Line !x!: & copy %%i C:\SIPV7\Photo
	@echo Line !x!: %%i >> results.txt
	)
endlocal
@echo Done.
pause