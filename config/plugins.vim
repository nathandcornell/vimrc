" ---------
" vim-plug
" ---------
call plug#begin('~/.vim/vimplug-plugins')
Plug 'cespare/vim-sbd'
Plug 'jaredgorski/spacecamp'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rhysd/vim-wasm' " WAsm support
Plug 'rust-lang/rust.vim' " Rust support
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'

" ----------------------
"  Temporarily Disabled
" ----------------------
" Plug 'Raimondi/delimitMate'
" Plug 'Yggdroot/indentLine'
" Plug 'bling/vim-bufferline'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'cespare/vim-toml' " TOML file syntax"
" Plug 'davidhalter/jedi-vim', {'for': 'python'}
" Plug 'dyng/ctrlsf.vim'
" Plug 'github/copilot.vim'
" Plug 'gregsexton/gitv'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'honza/vim-snippets'
" Plug 'jonathanfilip/vim-lucius'
" Plug 'lambdalisue/vim-pyenv', {'for': 'python'}
" Plug 'lucasprag/simpleblack'
" Plug 'mxw/vim-jsx'
" Plug 'nathandcornell/onehalf', {'rtp': 'vim/'}
" Plug 'othree/html5.vim'
" Plug 'psf/black', { 'commit': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1', 'for': 'python' }
" Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-haml'
" Plug 'tpope/vim-rails'
" Plug 'vim-ruby/vim-ruby'
" Plug 'vim-scripts/indenthtml.vim'
" Plug 'vim-scripts/indentpython.vim', {'for': 'python'}
" Plug 'vimwiki/vimwiki'
" Plug 'wincent/command-t', {
" \   'build_commands': ['make', 'ruby'],
" \   'build': {
" \     'unix': 'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
" \     'mac':  'cd ruby/command-t && { make clean; ruby extconf.rb && make }',
" \   },
" \ }

call plug#end()
