@echo off
setlocal
set srcDir=%USERPROFILE%\Downloads
set /p "destFolder=Enter file location within Documents: "
set destDir=%USERPROFILE%\Documents\%destFolder%

set lastmod=
pushd %srcDir%
for /f "tokens=*" %%a in ('dir /b /o-d /a-d 2^>NUL') do set lastmod=%%a & goto :xx
:xx
if "%lastmod%"=="" echo Could not locate files.&goto :eof
:::
echo Moved --> %lastmod%<-- to --> %destDir% <--
move "%lastmod%" "%destDir%"