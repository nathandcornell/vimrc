set colorcolumn=100 " Color the 80th column differently as a wrapping guide.
match NearLength /\%<100v.\%>95v/
2match OverLength /\%<106v.\%>100v/
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

set ts=4
set sw=4
