uv tool install --upgrade pynvim

npm install -g typescript-language-server
npm install -g eslint

if [ ! -d ~/.vim/.backup ]; then
  mkdir ~/.vim/.backup
fi

if [ ! -d ~/.vim/.tmp ]; then
  mkdir ~/.vim/.tmp
fi

if [ ! -d ~/.vim/.undo ]; then
  mkdir ~/.vim/.undo
fi

if [ ! -d ~/.vim/vimplug-plugins ]; then
  mkdir ~/.vim/vimplug-plugins
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

if [ ! -f ~/.vimrc ]; then
  ln -s ~/.vim/vimrc ~/.vimrc
else
  mv ~/.vimrc ~/.vimrc.old
  ln -s ~/.vim/vimrc ~/.vimrc
fi
