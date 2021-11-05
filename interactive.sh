#!/usr/bin/env bash

PROJECT_NAME=fairseq_on_docker
WORKDIR=/work00/$(id -un)/${PROJECT_NAME}

mkdir -p "${WORKDIR}"

docker run -it \
--gpus all \
--rm  \
--mount type=bind,source="${WORKDIR}",target=/work \
--mount type=bind,source="$(pwd)"/fairseq,target=/code/fairseq \
--mount type=bind,source="$(pwd)"/shell,target=/code/shell \
--shm-size=2gb \
fairseq-on-docker
