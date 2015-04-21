" Vim color file tailored legibility on black background.
" Based on John Rhee's excellent colorscheme "icansee"
"
" Maintainer:   Nate Cornell <nathandcornell@gmail.com>
" Last Change:  2013/11/07  v0.1

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "n8colors"

" color settings for these terminal types:
" Black     term=NONE cterm=NONE ctermfg=0 ctermbg=0
" DarkRed   term=NONE cterm=NONE ctermfg=1 ctermbg=0
" DarkGreen term=NONE cterm=NONE ctermfg=2 ctermbg=0
" Brown     term=NONE cterm=NONE ctermfg=3 ctermbg=0
" DarkBlue  term=NONE cterm=NONE ctermfg=4 ctermbg=0
" DarkMagenta   term=NONE cterm=NONE ctermfg=5 ctermbg=0
" DarkCyan  term=NONE cterm=NONE ctermfg=6 ctermbg=0
" Gray      term=NONE cterm=NONE ctermfg=7 ctermbg=0
" DarkGray  term=NONE cterm=bold ctermfg=0 ctermbg=0
" Red       term=NONE cterm=bold ctermfg=1 ctermbg=0
" Green     term=NONE cterm=bold ctermfg=2 ctermbg=0
" Yellow        term=NONE cterm=bold ctermfg=3 ctermbg=0
" Blue      term=NONE cterm=bold ctermfg=4 ctermbg=0
" Magenta   term=NONE cterm=bold ctermfg=5 ctermbg=0
" Cyan      term=NONE cterm=bold ctermfg=6 ctermbg=0
" White     term=NONE cterm=bold ctermfg=7 ctermbg=0

"" Element     |term             |cterm         |ctermbg           |ctermfg           |gui        |guibg          |guifg
hi Comment      term=bold                                           ctermfg=DarkGray                               guifg=DarkGray
hi colorcolumn                                   ctermbg=DarkBlue   ctermfg=DarkRed                guibg=DarkBlue  guifg=DarkRed
hi Constant     term=underline                                      ctermfg=DarkGreen  gui=NONE                    guifg=DarkGreen
hi Cursor                                                                                          guibg=fg        guifg=Orchid
hi Directory    term=bold                                           ctermfg=Cyan                                   guifg=Cyan
hi Error        term=reverse                     ctermbg=Black      ctermfg=Red                    guibg=Black     guifg=Red
hi ErrorMsg     term=standout                    ctermbg=Black      ctermfg=DarkRed                guibg=Black     guifg=DarkRed
hi Identifier   term=underline                                      ctermfg=Cyan                                   guifg=Cyan
hi Ignore                                                           ctermfg=Black                                  guifg=bg
hi IncSearch    term=reverse      cterm=reverse                                        gui=reverse
hi LineNr       term=underline                                      ctermfg=Gray                                   guifg=Gray
hi ModeMsg      term=bold         cterm=bold                                           gui=bold
hi MoreMsg      term=bold                                           ctermfg=Green      gui=bold                    guifg=SeaGreen
hi NonText      term=bold                                           ctermfg=DarkGreen  gui=bold                    guifg=DarkGreen
hi Normal                                                           ctermfg=Gray                                   guifg=Gray
hi PreProc      term=underline                                      ctermfg=Gray                                   guifg=Gray
hi Question     term=standout                                       ctermfg=Green      gui=bold                    guifg=Green
hi Search                                        ctermbg=Blue       ctermfg=White                  guibg=Blue      guifg=White
hi Special      term=bold                                           ctermfg=Red                                    guifg=Red
hi SpecialKey   term=bold                                           ctermfg=DarkGray                               guifg=DarkGray
hi Statement    term=bold                                           ctermfg=Yellow     gui=NONE                    guifg=Yellow
hi StatusLine   term=reverse,bold cterm=reverse                                        gui=reverse
hi StatusLineNC term=reverse      cterm=reverse                                        gui=reverse
hi Title        term=bold                                           ctermfg=Magenta    gui=bold                    guifg=Pink
hi Todo         term=standout                    ctermbg=DarkYellow ctermfg=Black                  guibg=Yellow    guifg=Black
hi Type                                                             ctermfg=Green      gui=NONE                    guifg=Green
hi Visual       term=reverse      cterm=reverse                                                    guibg=DarkGreen guifg=White
hi WarningMsg   term=standout                                       ctermfg=Yellow                                 guifg=Yellow
hi NearLength                                                       ctermfg=White                                  guifg=White
hi OverLength                                    ctermbg=DarkRed    ctermfg=White                  guibg=DarkRed

set background=dark
