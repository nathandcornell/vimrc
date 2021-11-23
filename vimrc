set nocompatible

" ---------
" vim-plug
" ---------
call plug#begin('~/.vim/vimplug-plugins')

Plug 'Raimondi/delimitMate'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }

Plug 'NLKNguyen/papercolor-theme'
Plug 'Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'psf/black', { 'commit': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1', 'for': 'python' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-sbd'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'dyng/ctrlsf.vim'
Plug 'gregsexton/gitv'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jaredgorski/spacecamp'
Plug 'jonathanfilip/vim-lucius'
Plug 'lambdalisue/vim-pyenv', {'for': 'python'}
Plug 'lucasprag/simpleblack'
Plug 'mxw/vim-jsx'
Plug 'nathandcornell/onehalf', {'rtp': 'vim/'}
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/indenthtml.vim'
Plug 'vim-scripts/indentpython.vim', {'for': 'python'}
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'wincent/command-t', {
\   'build_commands': ['make', 'ruby'],
\   'build': {
\     'unix': 'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
\     'mac':  'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
\   },
\ }
" Plug 'zchee/deoplete-jedi'

call plug#end()
" --------------
" end vim-plug
" --------------

" ----------------
" Python support
" ----------------
let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" ---------------
" Color
" ---------------
"" Force 256 color mode if available
" if $TERM =~ "-256color"
"     set t_Co=256
" endif
" set t_Co=256

" Truecolors!
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"" one-half colorscheme:
" if $LIGHT_TERMINAL == 1
"   colorscheme onehalflight
"   let g:airline_theme="onehalflight"
" else
"   colorscheme onehalfdark
"   let g:airline_theme="onehalfdark"
" endif

"" ayu colorscheme:
" if $LIGHT_TERMINAL == 1
"   let ayucolor="light"
" else
"   let ayucolor="dark"
" endif
" colorscheme ayu

"" SimpleBlack colorscheme:
" if $LIGHT_TERMINAL == 1
"   let ayucolor="light"
"   colorscheme ayu
" else
"   colorscheme simpleblack
" endif

"" SimpleBlack colorscheme:
if $LIGHT_TERMINAL == 1
  let ayucolor="light"
  colorscheme ayu
else
  colorscheme spacecamp
endif

"" Lucius colorscheme:
" if $LIGHT_TERMINAL == 1
"   LuciusWhite
" else
"   LuciusBlack
" endif
" colorscheme lucius

" -----------------------------
" File Locations
" -----------------------------
set backupdir=~/.vim/.backup
set directory=~/.vim/.tmp
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on
" set relativenumber " Relative Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
if exists('+colorcolumn')
  set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
endif
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set synmaxcol=350
set backup             " Turn on backups
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=450     " Time to wait for a command (after leader for example).
set foldlevelstart=4
set foldmethod=indent
set formatoptions=crql
set iskeyword+=\$,-    " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=5        " Keep three lines below the last line when scrolling
set sidescroll=1       " Sidescrolling more natural
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set softtabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set cindent
set autoindent
set smarttab
set expandtab

" ---------------
" Searching
" ---------------
" set ignorecase " Case insensitive search
" set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
" set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
"   \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
"   \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:··
" set listchars=tab:
" show trailing spaces as dots
" set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=     " Disable mouse

" Better complete options to speed it up
set complete=.,w,b,u,U
set completeopt-=preview

"-----------------
" For crontab
" ----------------
au FileType crontab set nobackup nowritebackup


" ----------------
" Mappings
" ----------------
let mapleader=","
let maplocalleader = "\\"

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Quickly open/reload vimrc
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" let's make escape better, together.
inoremap jk <esc>
inoremap jK <esc>
inoremap JK <esc>
inoremap Jk <esc>

" Window Movement
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>

nnoremap <silent> gn :bn<CR>
nnoremap <silent> gb :bp<CR>

"new empty tab
nnoremap <leader>mm :enew<CR>

vnoremap // y/<C-R>"<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----------------
" Plugin settings
" ----------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---------------
" Lexma
" ---------------
let g:lexima_enable_basic_rules = 1
" let g:lexima_enable_endwise_rules = 1
let g:lexima_enable_newline_rules = 1


" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1
" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif
" Start NERDTree on startup
" if ! &diff
"   autocmd VimEnter * if &filetype !=# 'vimwiki' | NERDTree | endif
" endif
autocmd VimEnter * execute "normal \<c-w>w"

" ---------
" phpqa
" ---------
" let g:phpqa_codesniffer_autorun = 0
" let g:phpqa_messdetector_autorun = 0

" --------------------
" Rainbow_parentheses
" --------------------
" autocmd VimEnter * RainbowParenthesesToggle
" autocmd Syntax * RainbowParenthesesLoadBraces
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

" --------------------
" Deoplete
" --------------------
let g:deoplete#enable_at_startup = 1
"use <tab> for completion
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
        return "\<tab>"
    elseif &omnifunc !~ ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction

function! EnterWrap()
  if pumvisible()
    return deoplete#mappings#close_popup()
  else
    <C-g>u<Cr>"
endfunction

" power tab
imap <silent><expr><TAB> TabWrap()

" Enter: complete&close popup if visible (so next Enter works); else: break undo
imap <silent><expr><Cr> EnterWrap()

" Ctrl K to exand/jump neosnippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/vimplug-plugins/honza/vim-snippets/snippets/'

" ----------------------
" PHPComplete
" ----------------------
" let g:phpcomplete_index_composer_command = '/usr/local/bin/composer'

" ----------------------
" Ale
" ----------------------
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'ruby': ['rubocop', 'trim_whitespace'],
\   'haml': ['rubocop', 'trim_whitespace'],
\   'css': ['scss-lint', 'trim_whitespace'],
\   'scss': ['scss-lint', 'trim_whitespace'],
\   'javascript': ['eslint', 'tsserver', 'trim_whitespace'],
\   'javascriptreact': ['eslint', 'tsserver', 'trim_whitespace'],
\   'typescript': ['eslint', 'tsserver', 'trim_whitespace'],
\   'typescriptreact': ['eslint', 'tsserver', 'trim_whitespace'],
\   'python': ['pyls']
\}
let g:ale_fixers = {
\   'javascript': ['eslint', 'trim_whitespace'],
\   'javascriptreact': ['eslint', 'trim_whitespace'],
\   'typescript': ['eslint', 'trim_whitespace'],
\   'typescriptreact': ['eslint', 'trim_whitespace']
\}

" ---------------
"  vim-jsx
" ---------------
let g:jsx_ext_required = 0 " Allow jsx highlighting in .js files

" ---------------
"  fzf + ripgrep
" ---------------
set rtp+=/usr/local/opt/fzf

nnoremap <C-p> :FZF <CR>

" ----------------
"  CtrlSF
" ----------------
vmap <C-F>f <Plug>CtrlSFVwordExec
nmap <C-F>f <Plug>CtrlSFCwordExec
nmap <C-F>/ <Plug>CtrlSFPwordPath

" ----------------
"  vim-codereview
" ----------------
nnoremap <silent> <leader>C :CodeReviewCommentChange<CR>

" -----------------------
"  LanguageClient-neovim
" -----------------------
" Required for operations modifying multiple buffers like rename.
set hidden

" Language Servers:
let g:LanguageClient_serverCommands = {
\  'python': ['pyls'],
\  'rust': ['rustup', 'run', 'nightly', 'rls']
\}

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" -----------------------
"  vim-airline
" -----------------------
let g:airline#extensions#tabline#enabled = 1
" let g:airline_statusline_ontop = 1
" let g:airline_powerline_fonts = 1
let g:airline_theme = "base16_spacemacs"
