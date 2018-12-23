@echo off
set /a line=0
@echo -
@echo Type "contents" was chosen. Please provide the FULL PATH to the file which contains the contents. Note that this file must have files referenced, each on a new line. The specified files inside of the file you specify will be copied to the destination path that you provide.
@echo -
set /p pathName=
@echo Please provide the FULL PATH destination folder for the files to be copied to.
@echo -
set /p destinationPath=
@echo -
@echo [Result File] > results.txt
setlocal ENABLEDELAYEDEXPANSION
for /f "eol=;" %%i in (%pathName%) do (
	set /a line=line+1
	@echo Line !line!: & copy %%i %destinationPath%
	@echo Line !line!: %%i >> results.txt
	)
endlocal
@echo -