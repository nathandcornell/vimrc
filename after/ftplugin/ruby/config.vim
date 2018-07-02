set tabstop=2
set softtabstop=2
set shiftwidth=2
if exists('+colorcolumn')
  set colorcolumn=120 " Color the 80th column differently as a wrapping guide.
endif

" Run rspec on the current file:
nnoremap <F2> :!bundle exec rspec %<CR>

" Save macro to register 'r' that creates RSpec boilerplate from a class name:
let @r='Orequire "rails_helper"0jiRSpec.describe $a do'
