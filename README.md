# fairseq-on-docker

[Fairseq](https://github.com/pytorch/fairseq)をDocker上で動かすためのレポジトリ

# How to Run

```shell
git clone git@github.com:failab-tohoku/fairseq-on-docker.git
cd fairseq-on-docker

# building container through `docker build`
./build.sh        

# diving into the container through `docker run`
./interactive.sh  

# 以降はコンテナ内部で実行される
# プロンプトが
# root@c187cecdbc1c:/code/fairseq#
# みたいになっていればOK

cd /code/shell

# Download IWSLT Dataset
# A downloaded data will be saved to /work/dataset
./download_iwslt.sh

# Preprocess IWSLT Dataset
# Preprocessed data will be saved to /work/fairseq_data
./preprocess_iwslt.sh

# Train NMT Model on IWSLT Dataset
# Model parameter will be saved to /work/fairseq_model
./train_iwslt.sh
```

# Repository Overview

- `fairseq` and `shell` directories are bind mounted to the container.
  - This means that your edits on these directories will be automatically synced to the running image.
  - This is really convenient if you are implementing your model, shell scripts, etc.
- `/work00/<your_username>/fairseq_on_docker` is also bind mounted to the container
  - If you save something in `/work` of the container, then it will be synced to the host.
- If you want to bind another directory, edit `interactive.sh`

```
<project_root>
├── Dockerfile
├── README.md
├── build.sh
├── entrypoint.sh
├── fairseq  # binded to /code/fairseq
├── interactive.sh 
└── shell  # binded to /code/shell
```

# Misc.

I have commented out `torch` and `torchaudio` requirements from fairseq's `setup.py`; 
otherwise it'll uninstall PyTorch from the container - This is the only modification that I have made from the original fariseq.