mkdir ~/.vim/.backup
mkdir ~/.vim/.tmp
mkdir ~/.vim/.undo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
ln -s ~/.vim/vimrc ~/.vimrc
