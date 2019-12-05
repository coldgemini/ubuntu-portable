# ~/.profile: executed by the command interpreter for login shells.  
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login  
# exists.  
# see /usr/share/doc/bash/examples/startup-files for examples.  
# the files are located in the bash-doc package.  
  
# the default umask is set in /etc/profile; for setting the umask  
# for ssh logins, install and configure the libpam-umask package.  
#umask 022  
  
# if running bash  
  
# set PATH so it includes user's private bin directories  
PATH="$HOME/bin:$HOME/.local/bin:$PATH"  
  
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64  
#anaoconda2  
#MATLAB  
PATH=/home/xiang/MATLAB/R2017a/bin:$PATH
#export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4:/usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4:/usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4:/usr/lib/x86_64-linux-gnu/libstdc++.so.6:/usr/lib/x86_64-linux-gnu/libfreetype.so.6:/usr/lib/x86_64-linux-gnu/libtiff.so.5  
export LD_PRELOAD=$LD_PRELOAD:/usr/lib/x86_64-linux-gnu/libstdc++.so.6:/usr/lib/x86_64-linux-gnu/libprotobuf.so.9  
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH  
  
  
#before compile caffe not include python lib  
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/src/cuda6-8/lib64"  
  
#after  compile caffe include python lib  
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64  
  
export LD_INCLUDE_PATH="/usr/local/cuda/include:$LD_INCLUDE_PATH"  
#export PYTHONPATH="$HOME/src/caffe-master-debug/python:$HOME/src/anaconda2/lib/python2.7/site-packages/graphviz:$PYTHONPATH"  
