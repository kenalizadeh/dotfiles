syntax on
set clipboard=unnamed
filetype on
filetype plugin indent on

:hi ErrorMsg ctermfg=1 ctermbg=0 guifg=Magenta
:hi Error ctermfg=1 ctermbg=0 guifg=Magenta
:hi vimError ctermfg=1 ctermbg=0 guifg=Magenta

" W=w Q=q WQ=wq
command W w
command Q q
command WQ wq

" Delete trailing whitespaces
command DeleteWS :%s/\s\+$//e
" Highlight duplicate lines
command HighlightDuplicateLines :syn clear Repeat | g/^\(.*\)\n\ze\%(.*\n\)*\1$/exe 'syn match Repeat "^' . escape(getline('.'), '".\^$*[]') . '$"' | nohlsearch
