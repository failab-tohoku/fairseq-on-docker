#!/usr/bin/env bash

# Install fairseq through ENTRYPOINT
# otherwise bind-mounting `fairseq` dir will overwrite necessary files
# such as egg_info and *so files
echo 'Installing fairseq...'
pip install --editable .
pip install sacrebleu[ja]
echo 'done.'

bash
