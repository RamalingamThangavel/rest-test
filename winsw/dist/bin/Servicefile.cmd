:: Generic service installation file
::
:: @author Syed Abbas
:: psuedo code:
:: 1. Check if service exists
:: 2. If doesn't exist install
:: 3. Replace binaries
:: 4. Stop service (only if installed and running)
:: 5. Start service

@echo off
set _Service=@dist.project.id@
sc query %_Service% > nul
if  /I "%ERRORLEVEL%" NEQ "0" (
	goto install
)
goto :eof
:install
echo Installing service...
%CD%/%_Service%.exe install
echo Service installed.
goto start
:start
net start %_Service%
if  /I "%ERRORLEVEL%" NEQ "0" (
	echo Could not start service, check logs.
)
:stop



