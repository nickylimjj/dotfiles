 set nocompatible              " vi iMproved, required
 filetype on                   " :h filetype ( vim tries to recognize the type of the file and set the filetype option)

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" OS Detection
function! GetRunningOS()
    if has ("win32")
        return "win"
    endif
    if has ("unix")
        if system('uname') =~ 'Darwin'
            return "mac"
        else
            return "linux"
        endif
    endif
endfunction

let os = GetRunningOS()

" Plugins
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'flazz/vim-colorschemes'
 Plugin 'bling/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'tpope/vim-surround' " :help surround
 Plugin 'tpope/vim-fugitive' " git wrapper
 Plugin 'Valloric/vim-operator-highlight'
 Plugin 'SirVer/ultisnips'
 Plugin 'honza/vim-snippets'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'yonchu/accelerated-smooth-scroll' 
 "Plugin 'ervandew/supertab'
 Plugin 'gerw/vim-HiLinkTrace' " :help hlt
 "Plugin 'shinokada/SWTC.vim'
 "Plugin 'DavidGamba/vim-vmath'
 Plugin 'kshenoy/vim-signature' " working with marks :h signature
 Plugin 'gosukiwi/vim-atom-dark'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-vinegar'
 Plugin 'dhruvasagar/vim-table-mode' 

" Generate tag file
 Plugin 'majutsushi/tagbar' " ctrl+] ctrl+t + download 
 Plugin 'xolox/vim-misc'
 Plugin 'xolox/vim-easytags'
  
" WebDev Plugins
 Plugin 'mattn/emmet-vim'
 Plugin 'digitaltoad/vim-pug'
 Plugin 'gorodinskiy/vim-coloresque'
 Plugin 'kchmck/vim-coffee-script'
 Plugin 'groenewege/vim-less'

" All of your Plugins must added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" IMPORTANT: Uncomment one of the following lines to force
" " using 256 colors (or 88 colors) if your terminal supports it,
" " but does not automatically use 256 colors by default.
 set t_Co=256
 let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : ''  }
  
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""
 syntax on
 set ignorecase " Prepend with \C for case-sensitive search
 set number	" Numbers on the left
 set cursorline " Highlight line cursor is on
 set hlsearch " highlights search
 set incsearch " Jumps to search results as I type
 set nopaste " Prevents indent chaining
 set laststatus=2 " black status line at bottom of window
 set backspace=2 " make backspace work like normal
 set expandtab
 set softtabstop=4 " when 'tab' in insert mode, use 4 spaces width
 set shiftwidth=4 " when '>>', insert 4 spaces
 set wrap " Wraps text in window
 let g:netrw_liststyle=3 " Explorer list style
 let mapleader=","
"""""""""""""""
" Registers
"""""""""""""""
" :reg to view registers
" Ctrl + r <reg name> to paste register contents when in insert mode
" Special registers
" "/ current search pattern
" "- small delete
" "= expression register (evaluate expressions)
" ": last : command
" ". last inserted text
" "% filename of current buffer
" "# filename of alt buffer

"""""""""""""""
" colorschemes
"""""""""""""""
" colorscheme 256-jungle
" colorscheme herald
" colorscheme onedark
" colorscheme brogrammer
  colorscheme jelleybeans
" colorscheme solarized
" colorscheme obsidian
" colorscheme Monokai

"""""""""""""""
" buffers
"""""""""""""""
 set hidden " allows bufferes to be hidden if it's modified
 nnoremap <leader>be :enew<CR>
 nnoremap <leader>bn :bnext<CR>
 nnoremap <leader>bp :bprevious<CR>
 nnoremap <leader>bq :bprevious <BAR> bd #<CR> " idea of closing a tab
 nnoremap <leader>bl :ls<CR>
 nnoremap <leader>b? :map <leader>b<CR>
  
"""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""
 set guifont=Liberation\ Mono\ for\ Powerline\ 10 
 let g:airline_theme = 'behelit'
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#enabled = 1 " list buffers across the top
 let g:airline#extensions#tabline#fnamemod = ':t' " list just the filename
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tagbar#enabled = 1
 let g:airline#extensions#whitespace#enabled = 0 
 let g:airline#extensions#syntastic#enabled = 1
  
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
" clock in vim (mac only)
    if os == "mac"
     function! AirlineInit()
       let g:airline_section_y = airline#section#create('%{strftime("%H:%M")}')
       let g:airline_section_c = '%t'
       endfunction
       autocmd VimEnter * call AirlineInit()
    endif

"""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""
" :UltiSnipsEdit to modify snips that are associated to certain filetypes
 "let g:UltiSnipsExpandTrigger="<tab>"
 "let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<C-n>"
 
"""""""""""""""""""""""""""""""""""""""""""""
" Gitgutter
"""""""""""""""""""""""""""""""""""""""""""""
 let g:gitgutter_map_keys = 0 
  
"""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep
nmap <leader>gl :Glog
nmap <leader>gp :Git pull<cr>
nmap <leader>gP :Git push<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gbrowse<cr>
nnoremap <leader>g? :map <leader>g<cr>
  
"""""""""""""""""""""""""""""""""""""""""""""
" Emmet
"""""""""""""""""""""""""""""""""""""""""""""
 "Use emmet only for html and css files
 let g:user_emmet_install_global = 0
 autocmd FileType html,css EmmetInstall
 let user_emmet_expandabbr_key = '<C-e>' "key to expand abbreviation
 
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
 let g:ycm_filetype_blacklist = {'html': 1, 'css': 1}

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
 nmap <leader>c <plug>NERDCommenterToggle
 let g:NERDSpaceDelim = 1
 let g:NERDCompactSexyComs = 1
 let g:NERDCommentEmptyLines = 1
 let g:NERDTrimTrailingWhitespace = 1
nnoremap <leader>c? :map <leader>c<cr>

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
" Remaps
"""""""""""""""""""""""""""""""""""""""""""""

" enable mouse scroll
 set mouse=a

 " map to system clipboard
 vmap <F9> "+y


" Remaps
 noremap <C-n> :vsp <bar> :Explore<CR>
 ino jk <Esc>
 nnoremap ; :
 nnoremap : ;
 nnoremap rn :set relativenumber! rnu?<cr>
  
"""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""
" insert line above/below
 nnoremap <CR> o <Esc>
 nnoremap <SPACE> O <Esc>

 nnoremap <F8> :hardcopy <Esc>
