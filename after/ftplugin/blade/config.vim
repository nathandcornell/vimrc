set colorcolumn=100 " Color the 80th column differently as a wrapping guide.
match NearLength /\%<100v.\%>95v/
2match OverLength /\%<106v.\%>100v/

set ts=2
set sw=2
