" :echo "Hi Mat welcome back!"

" remap jk to mean ESC
:inoremap jk <esc> 
:vnoremap jk <esc> 
:syntax on

" Set line at 80 characters
:set colorcolumn=80

" Add relative line number
:set number "relativenumber

" Set leader and local leader symbols
let mapleader = '-'
let maplocalleader = "\\"

" Move line up or down
:noremap - ddp
:noremap _ ddkP

" Use Ctrl-U to convert word to uppercase in insert mode
:inoremap <c-u> <esc>bveUea

" Use ww to comment out line
:noremap ww I//<esc>
:noremap www I/*<esc>
:noremap eee A*/<esc>

" Use sw for 'swap word' aka yank word and go to insert mode
":noremap sw ywi

" Remaps to open .vimrc in a seperate window
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" MA Created macros
" Use f to convert 'i < size' to a full for loop
let @f='^ywifor(size_t pi = 0;$a; ++pi)$^y0opa{opa}Opa    '
"let @g='^ywifor(size_t pi = 0;$a; ++pi)@p'
" Use p to add { } 
let @p='^y0oylpa{opa}Opa    '
let @t=':%s/\t/    /g'
let @h='yypISystem.out.println("A");'

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
