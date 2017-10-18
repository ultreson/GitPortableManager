Setlocal EnableDelayedExpansion
@echo off
if not exist data mkdir data
SET /P email=enter your git email : 
echo %email%> data\email.txt
SET /P username=enter your git username : 
echo %username%> data\username.txt
echo enter where you want the projects to be cloned
SET /P location=%USERPROFILE%\
if not exist %USERPROFILE%\%location% mkdir %USERPROFILE%\%location%
echo %location%> data\location.txt
SET /P nbProjects=enter the number of projects to clone : 
SET /P firstproject=enter the name of the first project : 
echo %firstproject%> data\projects.txt
IF %nbProjects% GTR 1 (
	SET nbProjects = %nbProjects% 
	FOR /L %%A IN (2,1,%nbProjects%) DO (
		SET /P project=enter the name of  project %%A : 
		echo !project!>> data\projects.txt
	)
)