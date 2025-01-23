# Suppl-AI Docker

## Description
This repository contains the Dockerfile and the necessary files to build a Docker image for the Suppl-AI project.

## Requirements
 - VsCode Workspace
```batch
owershell -Command "iwr https://codehex16.github.io/resources/workspace/RUN.bat -OutFile run.bat; .\run.bat; rm run.bat"
```

```bash
curl -s https://codehex16.github.io/resources/workspace/RUN.sh -o run.sh && bash run.sh && rm run.sh
```

## Usage
To build the Docker image, run the following command:
```bash
docker compose build
```

To run the Docker container, run the following command:
```bash
docker compose up -d
```

To stop the Docker container, run the following command:
```bash
docker compose down
```