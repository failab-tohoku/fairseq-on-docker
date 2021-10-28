FROM nvcr.io/nvidia/pytorch:21.07-py3

COPY fairseq /code/fairseq
RUN pip install --editable /code/fairseq
WORKDIR /code/fairseq