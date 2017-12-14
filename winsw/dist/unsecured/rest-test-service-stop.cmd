rem stop and uninstall rest-test-service

@echo off
sc query "rest-test-service" | find /i "RUNNING"
if not ERRORLEVEL 1 (
    echo "rest-test-service" service is running
    echo stop "rest-test-service" service...
    net stop rest-test-service
    echo stopped.

    echo uninstall "rest-test-service" service...
    C:\Microservices\rest-test-service\rest-test-service.exe uninstall
    echo uninstalled.
) else (
    echo "rest-test-service" service is not running
    echo uninstall "rest-test-service" service...
    C:\Microservices\rest-test-service\rest-test-service.exe uninstall
    echo uninstalled.
)