if [ ! -d ~/.vim/.backup ]; then
  mkdir ~/.vim/.backup
fi

if [ ! -d ~/.vim/.tmp ]; then
  mkdir ~/.vim/.tmp
fi

if [ ! -d ~/.vim/.undo ]; then
  mkdir ~/.vim/.undo
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

if [ ! -f ~/.vimrc ]; then
  ln -s ~/.vim/vimrc ~/.vimrc
else
  mv ~/.vimrc ~/.vimrc.old
  ln -s ~/.vim/vimrc ~/.vimrc
fi
