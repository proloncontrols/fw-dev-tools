
@echo off

rem   Replace forward slashes, if any, by back slashes in input arguments
rem   Forward slashes don't seem to work with elevate application
set Source=%1
set Source=%Source:/=\%
set Destination=%2
set Destination=%Destination:/=\%

rem   Perform actual rename/copy of loader to STM32CubeProgrammer loaders folder
rem   elevate application is used because the destination is located in C:\Program Files
echo --------------------------------------------------
echo Copying loader to STM32CubeProgrammer folder: %Destination%
%~dp0elevate -wait4exit xcopy /Y %Source% %Destination%

rem   %~dp0 is used to get the directory where this batch file resides
