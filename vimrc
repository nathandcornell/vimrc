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
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/vimproc.vim', { 'build' : 'make' }

Plug 'StanAngeloff/php.vim'
Plug 'bling/vim-airline'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-sbd'
Plug 'fatih/vim-go'
Plug 'fholgado/minibufexpl.vim'
Plug 'gregsexton/gitv'
Plug 'honza/vim-snippets'
Plug 'hail2u/vim-css3-syntax'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'joonty/vim-phpqa.git'
Plug 'mattn/emmet-vim.git'
Plug 'mxw/vim-jsx'
Plug 'nvie/vim-flake8'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/indenthtml.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'vimwiki/vimwiki'
Plug 'Yggdroot/indentLine'
Plug 'wincent/command-t', {
\   'build_commands': ['make', 'ruby'],
\   'build': {
\     'unix': 'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
\     'mac':  'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
\   },
\ }
Plug 'zchee/deoplete-jedi'

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
" Force 256 color mode if available
if $TERM =~ "-256color"
    set t_Co=256
endif
set t_Co=256
colorscheme jellybeans
if has ("gui_running")
    autocmd!
    autocmd GUIEnter * colorscheme jellybeans
else
    colorscheme n8colors
endif

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
set foldlevelstart=2
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
" match NearLength /\%.\{96,100}/

set colorcolumn=80 " Color the 80th column differently as a wrapping guide.

" match NearLength /\%<80v.\%>75v/
" 2match OverLength /\%<86v.\%>80v/
" 2match OverLength /\%101v.*/

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

" paste mode shortcut
inoremap <silent> <leader>v  <esc>:set paste!<CR> i
nnoremap <leader>vv :set paste!<CR>

"new empty tab
nnoremap <leader>mm :enew<CR>

vnoremap // y/<C-R>"<CR>

" ----------------
" Plugin settings
" ----------------
"
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

" ---------------
" Session
" ---------------
let g:session_autosave = 0
let g:session_autoload = 0
nnoremap <leader>os :OpenSession<CR>

" ---------
" phpqa
" ---------
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_messdetector_autorun = 0

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
" deoplete
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

" power tab
imap <silent><expr><tab> TabWrap()

" Enter: complete&close popup if visible (so next Enter works); else: break undo
inoremap <silent><expr> <Cr> pumvisible() ?
            \ deoplete#mappings#close_popup() : "<C-g>u<Cr>"
