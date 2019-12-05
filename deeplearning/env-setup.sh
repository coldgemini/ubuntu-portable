#setup basic software
sudo apt install openssh-server

#setup .bashrc.user
echo "source .bashrc.user" >> ~/.bashrc

#install cuda cudnn
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc.user
echo "export PATH=/usr/local/cuda/bin:$PATH" >> ~/.bashrc.user
sudo apt-get install libcupti-dev
echo "export CUDA_HOME=/usr/local/cuda" >> ~/.bashrc.user
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
#install intel MKL

#install vim
sudo apt install vim-gtk3
scp -r .vimrc .vim gemini@dsdp003:/home/gemini

#install python env
sudo apt-get install python-pip python3-pip 
scp -r .pip gemini@dsdp003:/home/gemini
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
sudo pip3 install virtualenv
sudo pip3 install virtualenvwrapper
echo "export WORKON_HOME=~/Envs" >> ~/.bashrc.user
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc.user
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc.user
mkvirtualenv -p /usr/bin/python2 python2
pip install numpy scipy matplotlib numpy scipy matplotlib h5py pyyaml opencv-python cython easydict pillow scikit-image
pip install jupyter
mkvirtualenv -p /usr/bin/python3 python3
pip install numpy scipy matplotlib numpy scipy matplotlib h5py pyyaml opencv-python cython easydict pillow scikit-image

pip install jupyter
sudo apt install python3-tk

#install tensorflow
sudo apt install python3-numpy python3-dev python3-pip python3-wheel
sudo apt install libopenmpi-dev openmpi-bin

#install keras
workon python3
pip install Keras

#install keras-retinanet
pip install keras-resnet
pip install --upgrade git+https://github.com/broadinstitute/keras-resnet
pip install git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI

cd ~/Workbench
git clone git@git.deepsight.ai:DeepLearningGroup/keras-retinanet-py3.git

#install mxnet
workon python2
pip install mxnet-cu90

#install caffe

#install detectron

#mount data folder
sudo apt install nfs-kernel-server
sudo mount -t nfs 192.168.1.200:/home/xiang/Data ~/Data
