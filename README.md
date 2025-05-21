# SDR Server

A ready-to-use Docker-based setup for deploying a AirSpy Server for Software Defined Radio (SDR) applications.

This project provides Docker Compose configurations and supporting files to simplify the deployment and management of AirSpy Server instances, along with various enhancements and features for flexible SDR operations.

For detailed information about the underlying server software used in this project, please visit the official [AirSpy](https://airspy.com/download/).

## Summary

The container provides the SpyServer application running on port `5555`. It also exposes several tools, which are listed below:

| Service   | Description                  | URL                              |
| --------- | ---------------------------- | -------------------------------- |
| SpyServer | The AirSpy SDR server.       | sdr://localhost:5555             |
| Glances   | Real-time system monitoring. | https://glances-sdr.andrelom.com |

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
