@echo off
@echo -
@echo Type "file" was chosen. Please enter the FULL PATH of the file that you wish to copy.
@echo -
set /p pathName=
@echo -
@echo Please provide the FULL PATH of the destination folder where you would like this file to be moved to.
@echo -
set /p destinationPath=
@echo -
copy %pathName% %destinationPath%
@echo -