# Nektar++ Container

This repository builds a custom Nektar++ Docker image based on the official `nektarpp/nektar` image.

## Pull image

```bash
docker pull ghcr.io/jianxunz/nektar-container:latest

## Run the container with the current folder mounted

On Ubuntu/Linux, run this command from your working directory:

```bash
sudo docker run --rm -it \
  --user "$(id -u):$(id -g)" \
  --env HOME=/work \
  --mount type=bind,source="${PWD}",target=/work \
  -w /work \
  ghcr.io/jianxunz/nektar-container:latest
  
## Convert a Gmsh mesh to Nektar++ XML and VTU

For safer mesh conversion and ParaView visualisation, use the uncompressed XML/VTU output:

```bash
NekMesh M1.msh base_flow.xml:xml:uncompress 2>&1 | tee nekmesh.log

FieldConvert base_flow.xml base_flow.vtu:vtu:uncompress 2>&1 | tee fieldconvert.log
