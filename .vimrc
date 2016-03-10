set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion' "see usage :help easymotion.txt
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/vim-operator-highlight'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/NerdTree'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'honza/vim-snippets'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-vinegar'

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
" show existing tab with 4 spaces width
 set tabstop=4
" when indenting with '>', use 4 spaces width
 set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab
" set relative line number
" set relativenumber

" let g:solarized_termcolors = 256
" colorscheme 256-jungle
  colorscheme herald
" colorscheme brogrammer
" colorscheme jelleybeans
" colorscheme solarized
" colorscheme obsidian
" colorscheme Monokai

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
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
"""""""""""""""""""""""""""""""""""""""""""""
 map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""
" You Complete Me
"""""""""""""""""""""""""""""""""""""""""""""
 let g:ycm_global_ycm_extra_conf = "/Users/nicky/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
 let g:ycm_autoclose_preview_window_after_completion=0
 let g:clang_complete_macros=1
 set pumheight=8
 let g:ycm_error_symbol = '!>'
 let g:ycm_warning_symbol = 'W>'
 let g:ycm_enable_diagnostic_highlighting = 0
 let g:ycm_add_preview_to_completeopt = 1
 let g:ycm_autoclose_preview_window_after_insertion = 1
" make YCM compatible with UltiSnips
 let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-n>'

"""""""""""""""""""""""""""""""""""""""""""""
" Vim Operator Highlight 
"""""""""""""""""""""""""""""""""""""""""""""
 let g:ophigh_color = 14	" setting operator color
 " get filetype name by :set filetype?
 let g:ophigh_filetypes_to_ignore = {
			 \ 'asm':1, 'nerdtree':1 }

"""""""""""""""""""""""""""""""""""""""""""""
" Auto pairs 
"""""""""""""""""""""""""""""""""""""""""""""
 "let g:AutoPairsShortcutFastWrap = '<M-w>'
 let g:AutoPairsFlyMode = 0
"""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete.vim
"""""""""""""""""""""""""""""""""""""""""""""
"let g:neocomplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""
" keyboard remaps
"""""""""""""""""""""""""""""""""""""""""""""

" disable arrow keys
no <up> <nop>
no <down> <nop>
no <left> <nop>
no <right> <nop>

ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

" map insert 
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
