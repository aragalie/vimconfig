"---VUNDLE CONFIGURATION

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'wesq3/vim-windowswap'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
5
"PLUGIN NerdCOMMENTER  options"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"PLUGIN SOLARIZED options"
colorscheme solarized8_dark_high

"PLUGIN-AIRLINE options
"let g:airline_theme='<simple>'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"PLUGIN Multiple Cursors  options"
"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line:

" Basic Settings

syntax on
set guifont=Menlo:h14
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start 
set noundofile
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set linebreak
set nolist
set formatoptions=qrn1
set spell spelllang=en_us
set colorcolumn=80
set clipboard=unnamed 
set relativenumber
set number

" Options Set by Alex 

set  nrformats= "treat all numbers as decimal, even if padded by 0
inoremap jj <ESC>
let mapleader = ","
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set termguicolors
autocmd! bufwritepost .vimrc source %
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") "remap Emmet to TAB " Quicksave command
map <Leader>n <esc>:tabprevious<CR> " easier moving between tabs
map <Leader>m <esc>:tabnext<CR>
noremap <C-n> :nohl<CR> " Removes highlight of your last search
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows
noremap <C-Z> :update<CR> " Quicksave command
vnoremap <C-Z> <C-C>:update<CR> " Quicksave command
inoremap <C-Z> <C-O>:update<CR> " Quicksave command
vnoremap <Leader>s :sort<CR> " map sort function to a key
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
highlight ColorColumn ctermbg=233
set history=700
set undolevels=700
set nobackup
set nowritebackup
set noswapfile
vnoremap < <gv  " better indentation/ easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap > >gv  " better indent" 
vmap Q gq " easier formatting of paragraphs
nmap Q gqap " easier formatting of paragraphs
nnoremap j gj
nnoremap k gk
nnoremap <leader>w <C-w>v<C-w>l",w to open a new vertical split

