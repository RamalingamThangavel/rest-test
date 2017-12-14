@rem install rest-test-service service and start it.

@echo off
echo "rest-test-service" service is not available
echo install "rest-test-service" service...
C:\Microservices\rest-test-service\rest-test-service.exe install
echo installed.

echo start "rest-test-service" service
net start rest-test-service
echo started.