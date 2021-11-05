#!/usr/bin/env bash
TEXT="/work/dataset/iwslt/iwslt14.tokenized.de-en"

mkdir -p /work/fairseq_data

fairseq-preprocess --source-lang de --target-lang en \
        --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
        --destdir /work/fairseq_data/iwslt16.tokenized.de-en \
        --workers 24
