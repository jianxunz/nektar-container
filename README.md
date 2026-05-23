# Nektar++ Container

This repository builds a custom Nektar++ Docker image based on the official `nektarpp/nektar` image.

## Pull image

```bash
docker pull ghcr.io/jianxunz/nektar-container:latest

## Run the container with the current folder mounted

On Ubuntu/Linux, run this command from your working directory:

```bash
sudo docker run --rm -it \
  --mount type=bind,source="${PWD}",target=/work \
  -w /work \
  ghcr.io/jianxunz/nektar-container:latest
