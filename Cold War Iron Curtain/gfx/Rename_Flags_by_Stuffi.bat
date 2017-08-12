@Echo off
echo.
echo Welcome to the Flags Rename Script
timeout /t 1 > NUL
echo.
echo Make sure that this .bat script has been put into your gfx folder!
echo.
set /p originalflag=Which flag name would you like to rename and copy? (ex.: USA_conservative.tga)
echo.
set /p newflag=What should the new name be? (ex.: USA_socialist.tga)
echo.
echo --------------------------------
echo        Your choice:
echo.
echo    Old Flag name = %originalflag%
echo    New Flag name = %newflag%
echo.
echo --------------------------------
PAUSE

for /f "delims=" %%i in ('dir /s /b /a-d "%originalflag%"') do (copy /y "%%i" "%newflag%")