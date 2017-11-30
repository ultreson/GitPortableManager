@echo off
set /p email=github email address: 
set /p username=github username: 
start /w "%ProgramFiles%\Git\git-bash.exe" git config --global user.email "%email%" & git config --global user.name "%username%"