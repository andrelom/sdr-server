# SDR Server

A ready-to-use Docker-based setup for deploying a Spy Server for Software Defined Radio (SDR) applications.

This project provides Docker Compose configurations and supporting files to simplify the deployment and management of Spy Server instances, along with various enhancements and features for flexible SDR operations.

For detailed information about the underlying server software used in this project, please visit the official [AirSpy](https://airspy.com/download/).

## Development

### Getting Started:

First, make a copy of the `.env.template` file and rename it to `.env`. Update the values inside if needed.

```sh
cp .env.template .env
```

Then, start the project using the commands below.

```sh
# Start the project.
docker compose up -d;
```

To stop the Docker containers, just run the following command.

```sh
# Stops any previous run.
docker compose down;

# Optional: Prune all unused resources from the system.
docker system prune -af; docker volume prune -af; docker network prune -f;
```

## Project Status

This project is currently under development and is not considered stable.

## License

MIT
