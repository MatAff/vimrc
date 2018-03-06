" Set welcome message
" :echo "Hi Mat welcome back!"

:syntax on

" Remap jk to be <esc> in insert mode
:inoremap jk <esc> k
:vnoremap jk <esc> k

" Set line at 80 characters
":set colorcolumn=80

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

" Use ww to comment out line
:noremap ww I//<esc>
:noremap www I/*<esc>
:noremap eee A*/<esc>

" Use sw for 'swap word' aka yank word and go to insert mode
":noremap sw ywi

" Remaps to open .vimrc in a seperate window
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Abbreviations - Include
:iabbrev #i #include

:iabbrev abin #include 
\<stdio.h>
\<CR>#include <iostream>
\<CR>#include <vector>
\<CR>#include <string>
\<CR>

:iabbrev abistr #include <string>
:iabbrev abivec #include <vector>
:iabbrev abialgo #include <algorithm>

:iabbrev abns using namespace std;
:iabbrev abpr #pragma once
:iabbrev abcontains bool found = (std::find(list.begin(), list.end(), var) != list.end());<CR>#include <algorithm>

" java abbreviations
:autocmd FileType java :iabbrev Sys System.out.println(

" JAVA SHORT HAND
" Abbreviations (for less common statements)
:autocmd FileType java :iabbrev cl public class <C-r>=expand('%:t:r') <CR> {<CR><CR><CR><CR>}
:autocmd FileType java :iabbrev mn public static void main(String[] args) {<CR><CR><CR><CR>    }
:autocmd FileType java :iabbrev impUtil import java.util.*;<CR><CR>
:autocmd FileType java :iabbrev impStream import java.util.stream.*;<CR><CR>
:autocmd FileType java :iabbrev impConc import java.util.concurrent.*;<CR><CR>

" Remappings (for common statements)
:autocmd FileType java :nnoremap <leader>pk opackage <C-r>=expand('%:h')<CR>;<CR><CR>
:autocmd FileType java :nnoremap <leader>cl public class <C-r>=expand('%:t:r') <CR> {<CR><CR><CR><CR>}
:autocmd FileType java :nnoremap <leader>mn public static void main(String[] args) {<CR><CR><CR><CR>    }
:autocmd FileType java :nnoremap <leader>pr ISystem.out.println(<esc>A);<esc>

" Template h file
:iabbrev abh #pragma once<CR>#include <stdio.h><CR>#include <iostream><CR>#include <vector><CR>#include <string><CR><CR>// ClassName<CR>class ClassName<CR>{<CR>public:<CR>    ClassName();<CR>    ClassName(int arg1);<CR>    ~ClassName ();<CR>    bool methodName();<CR>    std::string toString();<CR>private:<CR>    int var1<CR>};<CR>


" MA Created macros
" Use f to convert 'i < size' to a full for loop
let @f='^ywifor(size_t pi = 0;$a; ++pi)$^y0opa{opa}Opa    '
"let @g='^ywifor(size_t pi = 0;$a; ++pi)@p'
" Use p to add { } 
let @p='^y0opa{opa}Opa    '
let @t=':%s/\t/    /g'
