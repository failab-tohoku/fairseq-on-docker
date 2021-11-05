#!/usr/bin/env bash

# install fairseq here
# otherwise bind-mounting `fairseq` dir will overwrite necessary files
# such as egg_info and *so files
echo 'Installing fairseq...'
pip install --editable .
echo 'done.'

bash
