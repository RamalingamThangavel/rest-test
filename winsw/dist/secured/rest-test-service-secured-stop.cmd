rem stop and un-install the rest-test-service-secured
 @echo off
 sc query "rest-test-service-secured" | find /i "RUNNING"
 if not ERRORLEVEL 1 (
     echo "rest-test-service-secured" service is running
     echo stop "rest-test-service-secured" service...
     net stop rest-test-service-secured
     echo stopped.

     echo uninstall "rest-test-service-secured" service...
     C:\Microservices\rest-test-service-secured\rest-test-service.exe uninstall
     echo uninstalled.
 ) else (
     echo "rest-test-service-secured" service is not running
     echo uninstall "rest-test-service-secured" service...
     C:\Microservices\rest-test-service-secured\rest-test-service.exe uninstall
     echo uninstalled.
 )