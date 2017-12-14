rem install "rest-test-service-secured" service and start it.
@echo off
echo "rest-test-service-secured" service is not available
echo install "rest-test-service-secured" service ...
C:\Microservices\rest-test-service-secured\rest-test-service.exe install
echo installed.

echo start "rest-test-service-secured" service...
net start rest-test-service-secured
echo started.