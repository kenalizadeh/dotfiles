syntax on
set clipboard=unnamed
" Delete trailing whitespaces
command DeleteWS :%s/\s\+$//e
" Highlight duplicate lines
command HighlightDuplicateLines :syn clear Repeat | g/^\(.*\)\n\ze\%(.*\n\)*\1$/exe 'syn match Repeat "^' . escape(getline('.'), '".\^$*[]') . '$"' | nohlsearch
