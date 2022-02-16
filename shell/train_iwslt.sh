#!/usr/bin/env bash

DATASET="/work00/${HOST_USERNAME}/fairseq-on-docker/fairseq_data/iwslt14.tokenized.de-en"
SAVE_DIR="/work00/${HOST_USERNAME}/fairseq-on-docker/fairseq_model/iwslt_2014"

mkdir -p  ${SAVE_DIR}

fairseq-train \
    ${DATASET} \
    --save-dir ${SAVE_DIR} \
    --arch transformer_iwslt_de_en --share-decoder-input-output-embed \
    --optimizer adam --adam-betas '(0.9, 0.98)' --clip-norm 0.0 \
    --lr 5e-4 --lr-scheduler inverse_sqrt --warmup-updates 4000 \
    --dropout 0.3 --weight-decay 0.0001 \
    --criterion label_smoothed_cross_entropy --label-smoothing 0.1 \
    --no-epoch-checkpoints \
    --max-tokens 4096 \
    --ddp-backend no_c10d \
    --log-interval 10 2>&1 | tee ${SAVE_DIR}/log.txt
