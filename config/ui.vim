" ----------------------
"  Colorscheme Settings
" ----------------------
" use 'truecolors' if terminal supports it:
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if $LIGHT_TERMINAL == 1
  let ayucolor="light"
  colorscheme ayu
else
  colorscheme spacecamp
endif

syntax enable

" --------
"  UI
" --------
set encoding=utf-8 " UTF-8 encoding is important for LSP integrations
set synmaxcol=350  " Don't highlight past 350 chars (performance)
set ruler          " Ruler on
set number         " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
set hlsearch       " Highlight search results

" Color the 80th column differently as a wrapping guide.
if exists('+colorcolumn')
  set colorcolumn=80
endif

" --------
"  Visual
" --------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set list        " Show invisible characters

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw
set listchars=""          " Reset the listchars
set listchars=tab:··      " make tabs visible
set listchars+=trail:·    " show trailing spaces as dots
" The character to show in the last column when the line goes beyond the screen
set listchars+=extends:>
" The character to show in the first column when the line goes beyond the screen
set listchars+=precedes:<

" --------
"  Sounds
" --------
set noerrorbells
set novisualbell
set t_vb=

" --------
"  Mouse
" --------
set mousehide  " Hide mouse after chars typed
set mouse=     " Disable mouse
