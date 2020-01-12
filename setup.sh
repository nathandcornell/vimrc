if [ ! -d $HOME/.vim/.backup ]; then
  mkdir $HOME/.vim/.backup
fi

if [ ! -d $HOME/.vim/.tmp ]; then
  mkdir $HOME/.vim/.tmp
fi

if [ ! -d $HOME/.vim/.undo ]; then
  mkdir $HOME/.vim/.undo
fi

if [ ! -d $HOME/.vim/vimplug-plugins ]; then
  mkdir $HOME/.vim/vimplug-plugins
fi

if [ -d $HOME/.vim/bundle/Vundle.vim ]; then
  rm -rf $HOME/.vim/bundle/Vundle.vim
fi

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
