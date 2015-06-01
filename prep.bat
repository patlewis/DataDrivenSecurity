@ECHO OFF
SET PDIR=%1
IF EXIST %PDIR% GOTO HAVEPDIR
MKDIR %PDIR%
MKDIR %PDIR%\R
MKDIR %PDIR%\data
MKDIR %PDIR%\docs
MKDIR %PDIR%\output
MKDIR %PDIR%\python
MKDIR %PDIR%\support
MKDIR %PDIR%\tmp
<NUL (SET/P Z=) >%PDIR%\readme.md
DIR %PDIR%
EXIT /b
:HAVEPDIR
ECHO Directory exists