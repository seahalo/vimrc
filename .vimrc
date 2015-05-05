set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" set tags=./tags;../tags;../../tags;../../../tags;../../../../tags
" :tselect MyClass

set nocp
filetype plugin on

syntax on

set fileformat=dos

set encoding=utf-8

set tabstop=4

autocmd BufEnter * silent! lcd %:p:h

" pressing Ctrl-S within a document will perform a :w <enter> keyboard combination.
nmap <c-s> :w<CR>    

" pressing Ctrl-S within a document while in 'insert' mode will escape to normal mode, perform a :w <enter, then press a to get back into insert mode. Your cursor may move during this event.
imap <c-s> <Esc>:w<CR>a

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"e **/<File>
"yiw	Copy current word
"yw		Copy current word (right part)
"yb		Copy current word (left part)
"y$		Copy current line (right part)
"yy		Copy current line
"cw		Change current word (right part)
"cb		Change current word (left part)
"ciw	Change word
"cc		Change whole line
"S		Change whole line
"c$		Change line (right part)
"c0		Change line (left part)
"
"
" Executing the line under cursor as an Ex command
" :execute getline(".")
"
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"

nmap <F11> :!start explorer %:p:h<CR>
imap <F11> <Esc><F11>

set autoread

set autoindent

" C-x C-o => Auto Complete
" gg=G	Format & Auto Indent
"
"

set shiftwidth=4
set expandtab
set autoindent
set smartindent

set laststatus=2

set hidden

" Use the :set hidden option and vim will hide the buffer until you come back to it.
"
"
set nu

