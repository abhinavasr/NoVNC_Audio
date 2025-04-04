# noVNC + WebRTC Audio Docker Implementation

This project provides a simple, containerized solution for running a Chrome browser accessible via VNC with audio streaming capabilities. It uses noVNC for browser-based access and WebRTC for high-quality audio streaming.

## Features

- Browser-based remote desktop access (noVNC)
- Real-time audio streaming via WebRTC
- Chrome browser pre-installed
- Works on both Windows and Linux hosts
- Persistent browser downloads
- Simple one-click setup

## Quick Start

### Windows

1. Make sure Docker Desktop is installed and running
2. Clone this repository
3. Double-click `setup.bat`
4. Access your remote browser at http://localhost:5000/

### Linux/Mac

1. Make sure Docker and Docker Compose are installed
2. Clone this repository
3. Make the script executable: `chmod +x setup.sh`
4. Run the setup script: `./setup.sh`
5. Access your remote browser at http://localhost:5000/

## Login Credentials

- **Username:** kasm_user
- **Password:** password123 (set in docker-compose.yaml)

## Audio Configuration

The container is pre-configured with optimal WebRTC audio settings:

- Codec: Opus (high-quality audio codec)
- Sample rate: 48000 Hz
- Frame duration: 20ms
- Bitrate: 128 kbps

These settings provide a good balance between audio quality and bandwidth usage.

## Advanced Configuration

### Changing the Resolution

Edit the `RESOLUTION` environment variable in `docker-compose.yaml` to change the screen resolution.

### Customizing Audio Settings

You can adjust the following environment variables in `docker-compose.yaml`:

- `KASM_SVC_AUDIO_CODEC`: Audio codec (opus recommended)
- `KASM_SVC_AUDIO_SAMPLE_RATE`: Sample rate in Hz (44100 or 48000 recommended)
- `KASM_SVC_AUDIO_FRAME_DURATION`: Frame duration in ms (10-60, lower = less latency)
- `KASM_SVC_AUDIO_BITRATE`: Bitrate in kbps (higher = better quality)

## Troubleshooting

### Audio Issues

1. Make sure you're using a modern browser that supports WebRTC (Chrome, Edge, Firefox)
2. Check that your browser allows autoplay of media with sound
3. Click the audio icon in the noVNC interface to make sure it's enabled
4. Try restarting the container: `docker restart vnc-chrome`

### Connection Issues

1. Check container logs: `docker logs vnc-chrome`
2. Verify the container is running: `docker ps`
3. Make sure port 5000 is not in use by other applications
4. Check firewall settings if accessing from another device

## Security Considerations

1. The default VNC password should be changed in production environments
2. For production use, consider setting up HTTPS using a reverse proxy
3. Limit access to trusted networks or users
4. Consider implementing additional authentication if exposed to the internet

## License

This project is provided under the MIT License.
