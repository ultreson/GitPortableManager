::git clones 
::using git user email in "email.txt"
::and git username in "name.txt"
::and git project names in "projects.txt"
::cloning in folder given in location.txt

set /p email=< email.txt
set /p location=< location.txt
start "" /d "%USERPROFILE%\%location%\" /w "%ProgramFiles%\Git\git-bash.exe" git config --global user.email '%email%'
set /p username=< username.txt
for /F "tokens=*" %%P in (projects.txt) do (
	cd /D %USERPROFILE%\%location%\
	start /w "%ProgramFiles%\Git\git-bash.exe" git clone https://github.com/%username%/%%P.git
	start "%%A" /D "%USERPROFILE%\%location%\%%P" "%ProgramFiles%\Git\git-bash.exe"
)