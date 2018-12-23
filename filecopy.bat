@echo off
title File Copier v1.1
@echo Please indicate whether you would like to copy a file, or copy from the contents of a file, by saying either "file" or "contents" below:
@echo ----
set /p whichType=
@echo ----
:main (
	if %whichType% == file (
		goto typeFile
	) else if %whichType% == contents (
		goto typeContents
	) else if %whichType% == end (
		@echo -
		@echo Terminating program..
		@echo -
		goto End
	) else (
		goto invalid
	)
)
:typeFile (
	call lib\typeFile
	goto End
)
:typeContents (
	call lib\typeContents
	goto End
)
:invalid (
	call lib\typeInvalid
	goto End
)
:End
@echo Done.
pause