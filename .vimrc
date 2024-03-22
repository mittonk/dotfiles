" Black and white for kindleberry pi.
"colorscheme quiet
syntax on

" https://docs.libretro.com/development/coding-standards/
set tabstop=3      " Display width of a physical tab character
set shiftwidth=3   " Auto-indent (e.g. >>) width
set expandtab      " Tab key indents with spaces
set textwidth=80
set softtabstop=0  " Disable part-tab-part-space tabbing

" Fancy searching.
set incsearch
set hlsearch

" Less PEP8.
"let g:pymode_lint_ignore='E501,W191'

" Readline-style tab completion.
set wildmode=longest,list
set wildmenu

filetype plugin indent on

" Splitting more natural.
set splitright
set splitbelow
