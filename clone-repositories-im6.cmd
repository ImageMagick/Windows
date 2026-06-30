@echo off

call .github\build\windows\find-bash.cmd

if "%~1"=="" (
  %BASH% -c "./clone-repositories.sh --imagemagick6"
) else (
  %BASH% -c "./clone-repositories.sh --imagemagick6 --commit %~1"
)
