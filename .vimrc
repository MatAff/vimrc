:echo "Hi Mat welcome back!"

" remap jk to mean ESC
:inoremap jk <esc> k
:vnoremap jk <esc> k
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
