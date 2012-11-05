"""" .vimrc

" Author: Manish Burman

"""""""""""""""""
" General 
"""""""""""""""""
" detect type of file
filetype on

" don't make noise on error messages
set noerrorbells

set runtimepath+=$HOME/.vim/

" copy current visual selection to ~/.vbuf
vmap <C-c> :w! ~/.vbuf<CR>  
" copy current line to ~/.vbuf if no visual selection
nmap <C-c> :.w! ~/.vbuf<CR>
" paste the contents of the buffer file
nmap <S-v> :r ~/.vbuf<CR>

map ; :

" switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


" get dialog when :q :w or :wq fails
set confirm

"""""""""""""""""
" Colors
"""""""""""""""""
colors desert256
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

" select with mouse. To paste outside vim press shift and select.
set mouse=a

""""""""""""""""
" Visual Cues
""""""""""""""""

" show matching brackets
set showmatch
set showcmd
set ruler
set wildmenu

" how many tenths of a second to blink matching brackets for
set matchtime=5

" don't blink
set novisualbell

" always show status line
set laststatus=2

if exists('+colorcolumn')
set colorcolumn=80
else
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

""""""""""""""""
" Search
""""""""""""""""

" highlight searched phrases
set hlsearch

" highlight search phrases as typed
set incsearch

" ignore case
set ignorecase

" become case sensitive for uppercase 
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

" auto indenting
set autoindent
set cindent 

" wrap long lines
set wrap

set smarttab
set backspace=indent,eol,start
set smartindent

" sane indentation for paste
set pastetoggle=<F2>

set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab

" keep 10000 lines of history
set history=10000

" highlight trailing whitespaces
match Todo /\s\+$/

" strip trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
call cursor(l, c)
	endfun

autocmd FileType c,cpp,java,php,ruby,sh,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Insert ifndef headers to .h/.hpp files
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . "SRC_" . gatename . "_"
  execute "normal! o#define " . "SRC_" . gatename . "_"
  execute "normal! Go#endif  // " . "SRC_" . gatename . "_" 
  normal! kk
  endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

" Insert default html headers.
function! s:insert_html()
  execute "normal! i<html>"
  execute "normal! o<head><title></title></head>" 
  execute "normal! o<body></body>" 
  execute "normal! Go</html>" 
  execute "normal! kkwwl"
  endfunction
autocmd BufNewFile *.{html,htm,php} call <SID>insert_html()
" Start in insert mode.
autocmd BufNewFile *.{html,htm,php} start 

set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v][%p%%]\ [%L]
set cursorline cursorcolumn
