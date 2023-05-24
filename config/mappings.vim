let mapleader=","
let maplocalleader = "\\"

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Quickly open/reload vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" jk as escape to keep to the home row:
inoremap jk <esc>
inoremap jK <esc>
inoremap JK <esc>
inoremap Jk <esc>

" Window Movement
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>

" Buffer movement
nnoremap <silent> gn :bn<CR>
nnoremap <silent> gb :bp<CR>

" Open new empty buffer
nnoremap <leader>mm :enew<CR>
