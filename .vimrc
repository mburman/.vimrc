" .vimrc
" Author: Manish Burman

"""""""""""""""""
" General 
"""""""""""""""""

" detect type of file
filetype on

"""""""""""""""""
" Colors
"""""""""""""""""

syntax on

"""""""""""""""""
" Files/Backups
"""""""""""""""""

" make backup
"set backup

" where to put the backup 
"set backupdir=./

""""""""""""""""
" Visual Cues
""""""""""""""""

" show matching brackets
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" don't blink
set novisualbell

""""""""""""""""
" Search
""""""""""""""""

" highlight searched phrases
set hlsearch

" highlight search phrases as typed
set incsearch

" ignore case
set ignorecase

" only case insensitive if all characters are lowercase
set smartcase

" Press space to clear search highlighting and any message displayed 
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

"""""""""""""""""
" Vim UI
"""""""""""""""""

" Show lines & coloumn number
set ruler

" Screen lines for command-line
set cmdheight=2

" Line numbers
set number

" 4 spaces for indents
set shiftwidth=4

" auto indenting
set autoindent

" wrap long lines
set nowrap

" let backspace delete indent
set tabstop=4

set smarttab

set backspace=indent,eol,start

set smartindent

" sane indentation for paste
set pastetoggle=<F2>

" select when using mouse
set selectmode=mouse

" keep 500 lines of history
set history=500

"automatically enable mouse usage
set mouse=a

"spell check on
" set spell

