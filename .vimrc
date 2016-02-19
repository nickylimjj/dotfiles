set nocompatible              " be iMproved, required
filetype plugin indent on     " required
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-bufferline'
Plugin 'easymotion/vim-easymotion' "see usage :help easymotion.txt
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-vinegar'
"Plugin 'Townk/vim-autoclose'
"Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/NerdTree'
"Plugin 'honza/vim-snippets'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'ervandew/supertab'

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

"""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""
 syntax on
 set number	" Numbers on the left
 set laststatus=2
 set backspace=2
" let g:solarized_termcolors = 256
  colorscheme 256-jungle
" colorscheme jelleybeans
" colorscheme solarized
" colorscheme obsidian
" color scheme Monokai

"""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""
 set guifont=Liberation\ Mono\ for\ Powerline\ 10 
 let g:airline_theme = 'badwolf'
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#syntastic#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#tabline#enabled = 1

 if !exists('g:airline_symbols')
   let g:airline_symbols = {}
 endif
  " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.crypt = '🔒'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

"""""""""""""""""""""""""""""""""""""""""""""
" bufferline
"""""""""""""""""""""""""""""""""""""""""""""
 let g:bufferline_echo = 1
 let g:bufferline_active_buffer_left = '['
 let g:bufferline_active_buffer_right = ']'
 let g:bufferline_show_bufnr = 1

"""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""
" :UltiSnipsEdit to modify snips that are associated to certain filetypes
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
"""""""""""""""""""""""""""""""""""""""""""""
 map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""
" You Complete Me
"""""""""""""""""""""""""""""""""""""""""""""
 let g:ycm_global_ycm_extra_conf = "/Users/nicky/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]


"""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete.vim
"""""""""""""""""""""""""""""""""""""""""""""
"let g:neocomplete#enable_at_startup = 1
