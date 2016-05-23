 set nocompatible              " be iMproved, required
 filetype off

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" Plugins
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'flazz/vim-colorschemes'
 Plugin 'bling/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'bling/vim-bufferline'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'tpope/vim-surround' " :help surround
 Plugin 'Valloric/vim-operator-highlight'
 Plugin 'SirVer/ultisnips'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'yonchu/accelerated-smooth-scroll'
  
 Plugin 'ervandew/supertab'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'gerw/vim-HiLinkTrace'
 "Plugin 'shinokada/SWTC.vim'
 "Plugin 'DavidGamba/vim-vmath'
 Plugin 'kshenoy/vim-signature' "working with marks :h signature
 Plugin 'gosukiwi/vim-atom-dark'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-vinegar'

" Generate tag file
 Plugin 'majutsushi/tagbar'
 Plugin 'xolox/vim-misc'
 Plugin 'xolox/vim-easytags'
  
" WebDev Plugins
 Plugin 'mattn/emmet-vim'

" All of your Plugins must b; added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" IMPORTANT: Uncomment one of the following lines to force
" " using 256 colors (or 88 colors) if your terminal supports it,
" " but does not automatically use 256 colors by default.
 set t_Co=256
 let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : ''  }

" Show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'),col('.')), 'synIDattr(v:val, "name")')
endfunc
 
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
 set cursorline " Highlight line cursor is on
 set hlsearch " highlights search
 set incsearch " Jumps to search results as I type
 set nopaste " Prevents indent chaining
 set laststatus=2 "black status line at bottom of window
 set backspace=2
" show existing tab with 4 spaces width
 set softtabstop=4
" when indenting with '>', use 4 spaces width
 set shiftwidth=4
" On pressing tab, insert 4 spaces
 set expandtab
" Explorer list style
 let g:netrw_liststyle=3

" colorscheme 256-jungle
" colorscheme herald
 colorscheme onedark
" colorscheme onedark
" colorscheme brogrammer
" colorscheme jelleybeans
" colorscheme solarized
" colorscheme obsidian
" colorscheme Monokai

"""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""
 set guifont=Liberation\ Mono\ for\ Powerline\ 10 
 let g:airline_theme = 'behelit'
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#syntastic#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tagbar#enabled = 1
 let g:airline#extensions#whitespace#enabled = 0 
" YCM
 let g:airline#extensions#ycm#enabled = 1 
 let g:airline#extensions#ycm#error_symbol = 'E:'
 let g:airline#extensions#ycm#warning_symbol = 'W:'
 
 if !exists('g:airline_symbols')
   let g:airline_symbols = {}
 endif
 "" unicode symbols
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
  
 let g:airline_section_error = 1
" clock in vim
 function! AirlineInit()
   let g:airline_section_y = airline#section#create('%{strftime("%H:%M")}')
   endfunction
   autocmd VimEnter * call AirlineInit()
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
 let g:AutoPairsShortcutFastWrap='<C-w>'

"""""""""""""""""""""""""""""""""""""""""""""
" NERD Commenter
"""""""""""""""""""""""""""""""""""""""""""""
 map ,c <plug>NERDCommenterToggle

"""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete.vim
"""""""""""""""""""""""""""""""""""""""""""""
 let g:neocomplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""
" Make the 81st column stand out
"""""""""""""""""""""""""""""""""""""""""""""
 highlight ColorColumn ctermbg = magenta
 call matchadd('ColorColumn', '\%81v', 100)

"""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""
 let g:tagbar_ctags_bin='/usr/local/bin/ctags'
 let g:tagbar_width=60
 noremap <leader>8 :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""
" keyboard remaps
"""""""""""""""""""""""""""""""""""""""""""""

" enable mouse scroll
 set mouse=a

" disable arrow keys
 no <up> <nop>
 no <down> <nop>
 no <left> <nop>
 no <right> <nop>

 ino <up> <nop>

 ino <down> <nop>
 ino <left> <nop>
 ino <right> <nop>

" map create extra line
 nmap <CR> o <Esc>
 nmap <SPACE> O <Esc>

" remaps
 noremap <leader>k :vsp<CR> :E<CR>
 imap ii <Esc>
 nnoremap ; :
 nnoremap : ;
 nnoremap rn :set relativenumber! rnu?<cr>
