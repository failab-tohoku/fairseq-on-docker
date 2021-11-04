FROM nvcr.io/nvidia/pytorch:21.07-py3

COPY entrypoint.sh /code/entrypoint.sh

COPY fairseq /code/fairseq
WORKDIR /code/fairseq

ENTRYPOINT ["bash", "/code/entrypoint.sh"]
