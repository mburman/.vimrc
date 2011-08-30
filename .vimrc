"""" .vimrc
" Author: Manish Burman

"""""""""""""""""
" General 
"""""""""""""""""
"
" detect type of file
" filetype on
"
" don't make noise on error messages
set noerrorbells

set runtimepath+=$HOME/.vim/
"""""""""""""""""
" Colors
"""""""""""""""""

syntax on

"""""""""""""""""
" Files/Backups
"""""""""""""""""

" make backup
set backup

" where to put the backup 
set backupdir=~/.backup

" tell vim where to put the swp files
set dir=~/.tmp

""""""""""""""""
" Visual Cues
""""""""""""""""

" show matching brackets
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" don't blink
set novisualbell

" always show status line
set laststatus=2

" highlights the background in a subtle red for text that goes over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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
set wrap

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

