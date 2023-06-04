" CoC
exec 'source' vim_home . 'config/plugins/coc.vim'
" NerdTree
exec 'source' vim_home . 'config/plugins/nerdtree.vim'

" --------
"  Lexma
" --------
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1

" --------------------
" Rainbow_parentheses
" --------------------
let g:rainbow_active = 1

" --------------------
" DelimitMate
" --------------------
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" --------------------
" sbd
" --------------------
nnoremap <silent> <leader>qq :Sbd<CR>
nnoremap <silent> <leader>QQ :Sbdm<CR>

" ---------------
"  fzf + ripgrep
" ---------------
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF <CR>

" ----------------
"  CtrlSF
" ----------------
" vmap <C-F>f <Plug>CtrlSFVwordExec
" nmap <C-F>f <Plug>CtrlSFCwordExec
" nmap <C-F>/ <Plug>CtrlSFPwordPath

" ----------------
"  vim-codereview
" ----------------
nnoremap <silent> <leader>C :CodeReviewCommentChange<CR>

" -----------------------
"  vim-airline
" -----------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "base16_spacemacs"

" ---------
"  Copilot
" ---------
let g:copilot_enabled=0
nnoremap <silent> <leader>ce :Copilot enable<CR>
nnoremap <silent> <leader>cd :Copilot disable<CR>
