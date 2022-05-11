@ECHO OFF &SETLOCAL ENABLEDELAYEDEXPANSION &BREAK OFF
REM VARIABLES DEFINITION

:VARIABLES
@ECHO ON
	SET IEL=if errorlevel GTR
	SET DIRECTORY=C:\Results
	SET PONTMAP=:
	CLS
::--------------------------------------------- BEGIN ---------------------------------------------------	

:MAP_GFK
@ECHO OFF
TITLE NETWORK MAP TOOL!
ECHO.
ECHO===================================================================================
ECHO        000000       00000000      00000   0000       0000     000000
ECHO        000000       00000000      00000   0000      00  00    00   00
ECHO          00            00         00 00   0000      00  00    00   00
ECHO          00            00         00 00  00 00      00  00    00   00 
ECHO          00            00         00  00 00 00      000000    00  00
ECHO          00            00         00  0000  00      000000    00000
ECHO          00            00         00   00   00      00  00    00 
ECHO          00            00         00   00   00      00  00    00 
ECHO        000000          00         00        00      00  00    00
ECHO        000000          00         00        00      00  00    00
ECHO====================================================================================
ECHO========= CHOOSE ONE OF THE OPTIONS BELOW:                                                   
ECHO=========                                                                                 
ECHO=========      1) FINANCE MAPS (U:, V:, X: and Z:)                                                 
ECHO=========      2) HR MAPS (E:, F:, G: and H:)                                               
ECHO=========      3) IT MAPS (M:, N:, O: and P:)                                     
ECHO=========                                                                                    
ECHO=========                                            
ECHO=========  [X] "X" TO EXIT      [M] "M" TO STANDARD MAPS (COMMON MAPS)   
ECHO=====================================================================================================
ECHO.
ECHO HOSTNAME : %ComputerName%
ECHO USUARIO  : %userdomain%\%username%
ECHO.
SET /P OPMAPGFK=TYPE THE OPTION AND PRESS ENTER:
   %IEL% 0 GOTO MAP_GFK
	if %OPMAPGFK% == M GOTO MAP_DEFAULT
	else if %OPMAPGFK% == 1 GOTO MAP_FINANCE
	else if %OPMAPGFK% == 3 GOTO MAP_HRMAPS
	else if %OPMAPGFK% == 4 GOTO MAP_ITMAPS
	else if %OPMAPGFK% == X GOTO EXIT_MAP
	else if %OPMAPGFK% == x GOTO EXIT_MAP
		) ELSE (
		chcp 65001
			MSG * INSIRA UMA OPÇÃO VALIDA!
		GOTO MAP_GFK
		)

:MAP_DEFAULT
	cls
	ECHO WAIT FOR THE MAPPING PROCESS...
	net use r: /delete /Y
	net use s: /delete /Y
	net use f: /delete /Y
	net use h: /delete /Y
	net use r: "\\servername\patch"
	net use s: "\\servername\patch"
	net use f: "\\servername\patch"
	net use h: "\\servername\patch"	
		GOTO EXIT_MAP

:MAP_FINANCE
	cls
	ECHO WAIT FOR THE MAPPING PROCESS...
	net use u: /delete /Y
	net use v: /delete /Y
	net use x: /delete /Y
	net use z: /delete /Y
	net use u: "\\servername\patch"
	net use v: "\\servername\patch"
	net use x: "\\servername\patch"
	net use z: "\\servername\patch"	
		GOTO EXIT_MAP

:MAP_HRMAPS
	cls
	ECHO WAIT FOR THE MAPPING PROCESS...
	net use e: /delete /Y
	net use f: /delete /Y
	net use g: /delete /Y
	net use h: /delete /Y
	net use e: "\\servername\patch" 
	net use f: "\\servername\patch" 
	net use g: "\\servername\patch" 
	net use h: "\\servername\patch"
		GOTO EXIT_MAP

:MAP_ITMAPS
	cls
	ECHO WAIT FOR THE MAPPING PROCESS...
	net use m: /delete
	net use n: /delete
	net use o: /delete
	net use p: /delete
	net use m: "\\servername\patch"
	net use n: "\\servername\patch"
	net use o: "\\servername\patch"
	net use p: "\\servername\patch"
		GOTO EXIT_MAP
		
:EXIT_MAP
@echo off
CLS
	SETLOCAL
			chcp 65001
			MSG * %USERNAME% THANKS TO USE THIS TOOL!
	ENDLOCAL
exit