#!/usr/bin/env bash

TEXT="/work00/${HOST_USERNAME}/fairseq-on-docker/dataset/iwslt/iwslt14.tokenized.de-en"
DEST="/work00/${HOST_USERNAME}/fairseq-on-docker/fairseq_data/iwslt14.tokenized.de-en"

mkdir -p /work/fairseq_data

fairseq-preprocess --source-lang de --target-lang en \
        --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
        --destdir $DEST \
        --workers 24
