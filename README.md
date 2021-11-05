# fairseq-on-docker

[Fairseq](https://github.com/pytorch/fairseq)をDocker上で動かすためのレポジトリ

# How to Run

```
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
./download_iwslt.sh

# Preprocess IWSLT Dataset
./preprocess_iwslt.sh

# Train NMT Model on IWSLT Dataset
./train_iwslt.sh

```

# Misc.

I have commented out `torch` and `torchaudio` requirements from fairseq's `setup.py`; otherwise it'll uninstall PyTorch from the container - This is the only modification that I have made from original fariseq.