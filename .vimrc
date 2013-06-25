set nocompatible " No old vi
set number " Line numbers
set wildmenu " Bash-style tab complete
set wildmode=list:longest
set showmatch " Matching brackets
set hlsearch " Search should highlight
syntax on " Lexical highlighting
set autoindent " Auto-indenting

" Non-PEP8: 4 spaces.
set noexpandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Pyflakes
filetype on " enables filetype detection
filetype plugin on " enables filetype specific plugins
