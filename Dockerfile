FROM nektarpp/nektar:latest

LABEL org.opencontainers.image.title="Nektar++ container"
LABEL org.opencontainers.image.description="Custom Nektar++ container based on the official nektarpp/nektar image"
LABEL org.opencontainers.image.source="https://github.com/jianxunz/nektar-container"

SHELL ["/bin/bash", "-lc"]

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    git \
    vim \
    nano \
    less \
    python3 \
    python3-pip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["/bin/bash"]
