# SDR Server

This project offers an easy-to-use Docker setup for running an AirSpy Server and OpenWebRX, making it simple to get started with Software Defined Radio (SDR) applications.

It includes Docker Compose configurations and all the necessary files to help you quickly deploy and manage the servers. Plus, it comes with various enhancements and features to support flexible SDR operations.

If you’d like to learn more about the software that powers this project, check out the official sites:

- [AirSpy](https://airspy.com/)
- [OpenWebRX](https://www.openwebrx.de/)

## Summary

The container provides the SpyServer application running on port `5555`. It also exposes several tools, which are listed below:

| Service   | Description                               | URL                                |
| --------- | ----------------------------------------- | ---------------------------------- |
| AirSpy    | The AirSpy SDR server.                    | sdr://localhost:5555               |
| OpenWebRX | Accessible, browser-based radio receiver. | https://openwebrx-sdr.andrelom.com |
| Glances   | Real-time system monitoring.              | https://glances-sdr.andrelom.com   |

## Getting Started

First, make a copy of the `.env.template` file and rename it to `.env`. Update the values inside if needed.

```sh
cp .env.template .env
```

After the update, modify the newly created `.env` file by adjusting the environment variable values accordingly.

### Docker

Then, start the project using the commands below.

```sh
# Start the project.
docker compose up -d;
```

#### Optional

To stop the Docker containers, just run the following command.

```sh
# Stops any previous run.
docker compose down;

# Optional: Prune all unused resources from the system.
docker system prune -af; docker volume prune -af; docker network prune -f;
```

## Available Target Platforms

The supported Linux target platforms include:

| Platform     | Architecture Description          | Common Use Cases                                   |
| ------------ | --------------------------------- | -------------------------------------------------- |
| linux/amd64  | 64-bit x86 architecture           | Desktops, laptops, servers with Intel/AMD CPUs.    |
| linux/arm64  | 64-bit ARM architecture (AARCH64) | Raspberry Pi 4+, ARM servers, Apple M1/M2/M3 Macs. |
| linux/arm/v7 | 32-bit ARM architecture (ARMv7)   | Raspberry Pi 2/3, older embedded ARM devices.      |

You can set the target platform by modifying the `AIRSPY_TARGET_PLATFORM` environment variable in the `.env` file.

## Project Status

This project is currently under development and is not considered stable.

## License

MIT
