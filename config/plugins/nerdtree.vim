nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1

" Close Vim if NERDTree is the last buffer
augroup nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
    \&& b:NERDTreeType == "primary") | q | endif
  autocmd VimEnter * execute "normal \<c-w>w"
augroup END
