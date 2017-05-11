@setlocal enableextensions enabledelayedexpansion
@echo off
echo ________________________________________________________________________________
echo                          smdpatch.bat by Rottweiler
echo                 https://github.com/Rottweiler/smdpatch-batch
echo[
echo --------------------------------------------------------------------------------
FOR /R %%f IN (*.smd) DO (
echo Patching %%f
more +1 "%%f" > "%%f.temp"
xcopy %%f.temp %%f /y
del %%f.temp /f /q
)
pause
