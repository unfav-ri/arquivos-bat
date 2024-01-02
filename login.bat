::Login
@echo OFF
color 0A
cls
title admin login
set pass=0
set time=3
echo Hello World!
:start
set /p pass=Please enter the password:
if %pass%==admin goto ok
echo Incorrect password! You have %time% attempt(s) left.
set /A time=%time%-1
if %time%==-1 goto end
goto start
:end
echo You have exceeded the maximum number of attempts. The password hint is: "admin".
exit

:ok
title Welcome admin
echo Successfully logged in!
pause >nul
