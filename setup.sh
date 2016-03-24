if [ ! -d ~/.vim/.backup ]; then
  mkdir ~/.vim/.backup
fi

if [ ! -d ~/.vim/.tmp ]; then
  mkdir ~/.vim/.tmp
fi

if [ ! -d ~/.vim/.undo ]; then
  mkdir ~/.vim/.undo
fi

DEIN_INSTALL_DIR="$HOME/.vim/other/repos/github.com/Shougo/dein.vim"

if [ -d "$DEIN_INSTALL_DIR" ]; then
  rm -rf $DEIN_INSTALL_DIR
fi

mkdir -p $DEIN_INSTALL_DIR

git clone https://github.com/Shougo/dein.vim "$DEIN_INSTALL_DIR"

vim +"call dein#install()" +qall

if [ ! -f ~/.vimrc ]; then
  ln -s ~/.vim/vimrc ~/.vimrc
else
  mv ~/.vimrc ~/.vimrc.old
  ln -s ~/.vim/vimrc ~/.vimrc
fi
