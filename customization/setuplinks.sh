PROJ_HOME=""
source "${BASH_SOURCE%/*}/../proj_envs.sh"

[[ ! -z "$BASHRCUSER" ]] && echo "already sourcing .bashrc.user" || echo "adding source .bashrc.user to .bashrc"
if [[ -z "$BASHRCUSER" ]];then
    echo 'source ~/.bashrc.user' >> ~/.bashrc
fi
if [ ! -d $HOME/.backups ];then
    echo "creating .backups folder"
    mkdir $HOME/.backups
fi

if [ -L $HOME/.Xresources ];then
    echo "moving .Xresources to .backups folder"
    mv $HOME/.Xresources $HOME/.backups/.Xresources
    ln -s $PROJ_HOME/configs/link-files/urxvt/Xresources $HOME/.Xresources;
else
    ln -s $PROJ_HOME/configs/link-files/urxvt/Xresources $HOME/.Xresources;
fi
if [ -L $HOME/.i3status.conf ];then
    echo "moving .i3status.conf to .backups folder"
    mv $HOME/.i3status.conf $HOME/.backups/.i3status.conf
    ln -s $PROJ_HOME/configs/link-files/i3status.conf $HOME/.i3status.conf;
else
    ln -s $PROJ_HOME/configs/link-files/i3status.conf $HOME/.i3status.conf;
fi
if [ -L $HOME/.i3 ];then
    echo "moving .i3 folder to .backups folder"
    mv $HOME/.i3 $HOME/.backups/.i3
    ln -s $PROJ_HOME/configs/link-files/i3 $HOME/.i3;
else
    ln -s $PROJ_HOME/configs/link-files/i3 $HOME/.i3;
fi
if [ ! -L $HOME/.vimlocal ];then
    echo "moving .vimlocal folder to .backups folder"
    mkdir -p $HOME/.vimlocal/plugged
fi
if [ -L $HOME/.vim ];then
    echo "moving .vim folder to .backups folder"
    mv $HOME/.vim $HOME/.backups/.vim
    ln -s $PROJ_HOME/configs/link-files/vim $HOME/.vim;
else
    ln -s $PROJ_HOME/configs/link-files/vim $HOME/.vim;
fi
if [ -L $HOME/.vimrc ];then
    echo "moving .vimrc to .backups folder"
    mv $HOME/.vimrc $HOME/.backups/.vimrc
    ln -s $PROJ_HOME/configs/link-files/vimrc $HOME/.vimrc;
else
    ln -s $PROJ_HOME/configs/link-files/vimrc $HOME/.vimrc;
fi
if [ -L $HOME/.pip ];then
    echo "moving .pip to .backups folder"
    mv $HOME/.pip $HOME/.backups/.pip
    ln -s $PROJ_HOME/configs/link-files/pip $HOME/.pip;
else
    ln -s $PROJ_HOME/configs/link-files/pip $HOME/.pip;
fi
if [ -L $HOME/.bashrc.user ];then
    echo "moving .bashrc.user to .backups folder"
    mv $HOME/.bashrc.user $HOME/.backups/.bashrc.user
    ln -s $PROJ_HOME/configs/link-files/bashrc.user $HOME/.bashrc.user;
else
    ln -s $PROJ_HOME/configs/link-files/bashrc.user $HOME/.bashrc.user;
fi
if [ -L $HOME/.wgetrc ];then
    echo "moving .wgetrc to .backups folder"
    mv $HOME/.wgetrc $HOME/.backups/.wgetrc
    ln -s $PROJ_HOME/configs/link-files/wgetrc $HOME/.wgetrc;
else
    ln -s $PROJ_HOME/configs/link-files/wgetrc $HOME/.wgetrc;
fi
if [ -L $HOME/.urxvt ];then
    echo "moving .urxvt to .backups folder"
    mv $HOME/.urxvt $HOME/.backups/.urxvt
    ln -s $PROJ_HOME/configs/link-files/urxvt $HOME/.urxvt;
else
    ln -s $PROJ_HOME/configs/link-files/urxvt $HOME/.urxvt;
fi
if [ -L $HOME/Todo ];then
    echo "moving Todo to .backups folder"
    mv $HOME/Todo $HOME/.backups/Todo
    ln -s $PROJ_HOME/configs/link-files/todo $HOME/Todo;
else
    ln -s $PROJ_HOME/configs/link-files/todo $HOME/Todo;
fi
if [ -L $HOME/.todo.sh ];then
    echo "moving .todo.sh to .backups folder"
    mv $HOME/.todo.sh $HOME/.backups/.todo.sh
    ln -s $PROJ_HOME/configs/link-files/todo.sh $HOME/.todo.sh;
else
    ln -s $PROJ_HOME/configs/link-files/todo.sh $HOME/.todo.sh;
fi
