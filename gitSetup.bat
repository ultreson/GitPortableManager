::git clones projects given with FirstTimeSetup.bat
::using git user email in "email.txt"
::and git username in "name.txt"
::and git project names in "projects.txt"
::cloning in folder given in location.txt
@echo off
set /p email=< data\email.txt
set /p location=< data\location.txt
set /p username=< data\username.txt
start /w "%ProgramFiles%\Git\git-bash.exe" git config --global user.email "%email%" & git config --global user.name "%username%"
for /F "tokens=*" %%P in (data\projects.txt) do (
	cd /D %USERPROFILE%\%location%\
	start /w "%ProgramFiles%\Git\git-bash.exe" git clone https://github.com/%username%/%%P.git
	start "" /D "%USERPROFILE%\%location%\%%P" "%ProgramFiles%\Git\git-bash.exe"
)