set nocompatible
let g:vim_home = get(g:, 'vim_home', expand('~/.vim/'))

" Load plugins (via VimPlug):
exec 'source' vim_home . 'config/plugins.vim'
" Plugin Settings
exec 'source' vim_home . 'config/plugins/config.vim'
" UI and colorscheme settings:
exec 'source' vim_home . 'config/ui.vim'
" Behavioral settings:
exec 'source' vim_home . 'config/behavior.vim'
" Keymappings
exec 'source' vim_home . 'config/mappings.vim'

" ----------------
"  Python support
" ----------------
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" ----------------
"  File Locations
" ----------------
set backupdir=~/.vim/.backup
set directory=~/.vim/.tmp
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif
