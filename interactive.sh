#!/usr/bin/env bash

docker run -it \
--gpus all \
--rm  \
--mount type=bind,source="$(pwd)"/fairseq_model,target=/fairseq_model \
--mount type=bind,source="$(pwd)"/fairseq_data,target=/fairseq_data \
--mount type=bind,source="$(pwd)"/shell,target=/code/shell \
testing-fairseq /bin/bash
