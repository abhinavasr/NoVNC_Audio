#!/bin/bash

echo "=== Setting up noVNC with WebRTC Audio ==="

# Check if running on Windows
if [ -z "$(which cygpath 2>/dev/null)" ] && [ -z "$MSYSTEM" ]; then
    # Linux/Mac
    echo "Setting up on Linux/Mac"
    chmod +x *.sh
else
    # Windows
    echo "Setting up on Windows"
    # No special handling needed for this script
fi

# Stop any existing containers
echo "Stopping any existing containers..."
docker-compose down

# Start the containers
echo "Starting containers..."
docker-compose up -d

# Wait for services to initialize
echo "Waiting for services to initialize (15 seconds)..."
sleep 15

# Display connection information
echo ""
echo "=== Setup Complete ==="
echo ""
echo "Access your browser with audio via:"
echo "http://localhost:5000/"
echo ""
echo "Login credentials:"
echo "Username: kasm_user"
echo "Password: password123"
echo ""
echo "For optimal audio quality:"
echo "1. Use Chrome or Edge browser"
echo "2. Enable WebRTC in the connection settings"
echo ""
echo "Troubleshooting:"
echo "- View logs with: docker logs vnc-chrome"
echo "- Restart container with: docker restart vnc-chrome"
