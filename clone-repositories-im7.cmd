@echo off

call .github\build\windows\find-bash.cmd

if "%~1"=="" (
  %BASH% -c "./clone-repositories.sh --imagemagick7"
) else (
  %BASH% -c "./clone-repositories.sh --imagemagick7 --commit %~1"
)
