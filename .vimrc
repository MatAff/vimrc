" Set welcome message
" :echo "Hi Mat welcome back!"

:syntax on

" Remap jk to be <esc> in insert mode
:inoremap jk <esc> 
:vnoremap jk <esc> 

" Add relative line number
:set number relativenumber

" Set leader and local leader symbols
let mapleader = '-'
let maplocalleader = "\\"

" Move line up or down
:noremap - ddp
:noremap _ ddkP

" Use Ctrl-U to convert word to uppercase in insert mode
:inoremap <c-u> <esc>bveUea

" Remaps to open .vimrc in a seperate window
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Abbreviations
:iabbrev #i #include
:iabbrev abin #include <stdio.h><CR>#include <iostream><CR>#include <vector><CR>#include <string><CR>
:iabbrev abns using namespace std;

" MA Created macros
" Use f to convert 'i < size' to a full for loop
let @f='^ywifor(size_t pi = 0;$a; ++pi)$^y0opa{opa}Opa    '
"let @g='^ywifor(size_t pi = 0;$a; ++pi)@p'
" Use p to add { } 
let @p='^y0opa{opa}Opa    '

