@echo off
set MATLAB=Q:\Program Files\MATLAB\R2009a
set MSVCDir=q:\program files\microsoft visual studio\vc98

set MSDevDir=q:\program files\microsoft visual studio\common\msdev98
"Q:\Program Files\MATLAB\R2009a\rtw\bin\win32\envcheck" INCLUDE "q:\program files\microsoft visual studio\vc98\include"
if errorlevel 1 goto vcvars32
"Q:\Program Files\MATLAB\R2009a\rtw\bin\win32\envcheck" PATH "q:\program files\microsoft visual studio\vc98\bin"
if errorlevel 1 goto vcvars32
goto make

:vcvars32
set VSCommonDir=q:\program files\microsoft visual studio\common
call "Q:\Program Files\MATLAB\R2009a\toolbox\rtw\rtw\private\vcvars32_600.bat"

:make
cd .
nmake -f robot_4DOF_jointspace.mk  GENERATE_REPORT=0
@if errorlevel 1 goto error_exit
exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
An_error_occurred_during_the_call_to_make
