#!/bin/sh

# install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt-get install git-lfs

#install python binding
pip install deepspeech-gpu

# #clone repository

# git clone https://github.com/hammashamzah/DeepSpeech

# #cd to repo

# cd DeepSpeech

# make virtualenv

# virtualenv -p python2.7 deepspeech_ds

#install requirements

pip install -r requirements.txt


python util/taskcluster.py --target . --arch gpu

# naively uninstall tensorflow and install the gpu version

# pip uninstall tensorflow
# pip install 'tensorflow-gpu==1.4.0'

# test training
./bin/run-ldc93s1.sh

