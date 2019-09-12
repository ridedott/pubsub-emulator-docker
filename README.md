# pubsub-emulator

A Docker image running the GCP PubSub Emulator.

## Usage

```bash
docker pull docker.pkg.github.com/ridedott/pubsub-emulator-docker/pubsub-emulator:latest
docker run ridedott/pubsub-emulator:latest
```

## Getting Started

These instructions will get you an instance of the GCP pubsub-emulator running on your
local machine for testing purposes.

### Prerequisites

Minimal requirements to set up the project:

- [Docker](https://docs.docker.com/install/)
    - Make sure to
        [authenticate to Github Package registry](https://help.github.com/en/articles/configuring-docker-for-use-with-github-package-registry#authenticating-to-github-package-registry).

### Building

```bash
docker build .
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## Built with

### Automation

- [GitHub Actions](https://github.com/features/actions)

## Versioning

This project reflects Google's pubsub-emulator gcloud component versioning. Using the `gcloud`
CLI utility, the current pubsub-emulator version can be obtained by running the followin command:

```bash
gcloud components list --filter pubsub-emulator --format="value(latest_version_string)"
```

