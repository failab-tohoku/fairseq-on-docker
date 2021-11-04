#!/usr/bin/env bash

# install fairseq here
# otherwise bind-mounting `fairseq` dir will overwrite necessary files
# such as egg_info and *so files
pip install --editable .

bash