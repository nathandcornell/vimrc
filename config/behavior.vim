" ---------------
" Behaviors
" ---------------
set backup             " Turn on backups
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=450     " Time to wait for a command (after leader for example).
set formatoptions=crql " See ':help fo-table'
set iskeyword+=\$,-    " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=5        " Keep three lines below the last line when scrolling
set sidescroll=1       " Sidescrolling more natural
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------
"  Folding
" ---------
set foldmethod=indent  " Fold on indentations
set foldlevelstart=4   " Automatically fold anything over 4 indentations

" ---------------
" Text Format
" ---------------
set tabstop=2                  " 2 spaces per tab
set shiftwidth=2               " 2 Tabs under smart indent
set softtabstop=2              " 2 insert 2 spaces after tab
set backspace=indent,eol,start " Delete everything with backspace
set autoindent                 " Maintain indentation on new lines
set smarttab                   " Delete tabstop # of spaces when deleting
set expandtab                  " Insert spaces instead of tab characters
set cindent                    " 'smart' C-style indenting

" ---------------
" Searching
" ---------------
set incsearch  " Incremental search

" ------------
"  Completion
" ------------
set complete=.,w,b,u,U
set completeopt-=preview
