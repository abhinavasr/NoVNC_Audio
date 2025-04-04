@echo off
echo === Setting up noVNC with WebRTC Audio ===

REM Stop any existing containers
echo Stopping any existing containers...
docker-compose down

REM Start the containers
echo Starting containers...
docker-compose up -d

REM Wait for services to initialize
echo Waiting for services to initialize (15 seconds)...
timeout /t 15 /nobreak > nul

REM Display connection information
echo.
echo === Setup Complete ===
echo.
echo Access your browser with audio via:
echo http://localhost:5000/
echo.
echo Login credentials:
echo Username: kasm_user
echo Password: password123
echo.
echo For optimal audio quality:
echo 1. Use Chrome or Edge browser
echo 2. Enable WebRTC in the connection settings
echo.
echo Troubleshooting:
echo - View logs with: docker logs vnc-chrome
echo - Restart container with: docker restart vnc-chrome

pause
