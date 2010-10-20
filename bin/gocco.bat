if "%OS%"=="Windows_NT" setlocal

:begin
set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.\

groovy -cp "%DIRNAME%..\jar\jhighlight-1.0.jar;%DIRNAME%..\jar\markdownj-0.3.0-1.0.2b4.jar" "%DIRNAME%..\src\gocco\Gocco.groovy" --template "%DIRNAME%..\src\gocco\template.html" %1 %2

if "%OS%"=="Windows_NT" endlocal
%COMSPEC% /C exit /B %ERRORLEVEL%