""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
call plug#end()

""""""""""""""""""""""""""""""""""""
" General 2
""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme slate
set number
set rnu
set tw=79
set colorcolumn=81
highlight ColorColumn ctermbg=8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set hlsearch
set incsearch
nnoremap <space> :noh<CR>
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile

nnoremap <C-A> <Nop>

""""""""""""""""""""""""""""""""""""
" Better Copy and Paste
""""""""""""""""""""""""""""""""""""
set clipboard=unnamed

""""""""""""""""""""""""""""""""""""
" netrw
""""""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

""""""""""""""""""""""""""""""""""""
" Map leader key and ;-:
""""""""""""""""""""""""""""""""""""
let mapleader = ","
noremap : ;
noremap ; :

"""""""""""""""""""""""""""""""""""
" Bind F5 to save file if modified and execute python script in a buffer
""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <silent> <F5> :call SaveAndExecutePython()<CR>
autocmd FileType python inoremap <silent> <F5> <Esc>:call SaveAndExecutePython()<CR>i
autocmd FileType python vnoremap <silent> <F5> :<C-u>call SaveAndExecutePython()<CR>

""""""""""""""""""""""""""""""""""""
" Switching vim windows
""""""""""""""""""""""""""""""""""""
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

""""""""""""""""""""""""""""""""""""
" Run macros
""""""""""""""""""""""""""""""""""""
nnoremap Q @q
vnoremap Q :normal @q<cr>

""""""""""""""""""""""""""""""""""""
" Code Indentation
""""""""""""""""""""""""""""""""""""
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""""""""""""""""""
" sort selected rows
""""""""""""""""""""""""""""""""""""
vnoremap <Leader>s :sort<CR>

""""""""""""""""""""""""""""""""""""
" HTML support
""""""""""""""""""""""""""""""""""""
nnoremap <Leader>f :set syntax=html<CR>:%!tidy -q -i --show-errors 0<CR>
nnoremap <Leader>he :call HtmlEscape()<CR>
nnoremap <Leader>hu :call HtmlUnescape()<CR> 

""""""""""""""""""""""""""""""""""""
" Python build Function
""""""""""""""""""""""""""""""""""""
function! SaveAndExecutePython()
    " SOURCE [reusable window]:
    " https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright vnew ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright vnew '
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    " configuring the buffer
    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    setlocal number
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!python3 " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    " execute 'vertical resize 78'

    " make the buffer non modifiable
    " setlocal readonly
    " setlocal nomodifiable

    " go back to original window
    wincmd p
endfunction

""""""""""""""""""""""""""""""""""""
" HTML Entities function
""""""""""""""""""""""""""""""""""""
function! HtmlEscape()
    silent! %s/&/\&amp;/eg
    silent! %s/ /\&nbsp;/eg
    silent! %s/</\&lt;/eg
    silent! %s/>/\&gt;/eg
endfunction

function! HtmlUnescape()
    silent! %s/&amp;/\&/eg
    silent! %s/&gt;/>/eg
    silent! %s/&lt;/</eg
    silent! %s/&nbsp;/ /eg
endfunction
