set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"------------PLUGIN LIST START------------

Plugin 'kien/ctrlp.vim'               "-----Search for anything from Vim
Plugin 'tpope/vim-fugitive'           "-----Git commands in Vim
Plugin 'vim-scripts/indentpython.vim' "-----Proper indentation behaviour for Python
Plugin 'vim-syntastic/syntastic'      "-----Check syntax on each save
Plugin 'nvie/vim-flake8'              "-----Check PEP8
Plugin 'jistr/vim-nerdtree-tabs'      "-----Use tabs

Plugin 'tmhedberg/SimpylFold'         "-----Code folding"
let g:SimpylFold_docstring_preview=1 "See the docstring for folded code

Plugin 'Valloric/YouCompleteMe'       "-----Autocomplete functionality
let g:ycm_autoclose_preview_window_after_completion=1 "Ensure the autocomplete window goes away when done with it
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> "Shortcut for goto definition
let g:ycm_python_binary_path = '/usr/bin/python' "Use the systems Python for autocomplete, as Anaconds is not supported

Plugin 'jnurmine/Zenburn'             "-----Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'

Plugin 'scrooloose/nerdtree'          "-----Proper file tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree "Hide .pyc files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

Plugin 'scrooloose/nerdcommenter'     "-----Nice looking comments
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  "-----Fancy status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1 "let g:airline_theme='<simple>'
set laststatus=2

"------------PLUGIN LIST END------------
call vundle#end()            " required
filetype plugin indent on    " required


"------------PYTHON SPECIFIC OPTIONS------------

"Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"Make Python code look pretty
let python_highlight_all=1
syntax on

"Add PEP8 indentation for .py files
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Different commands for the other filetypes
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Mark extra whitespace as bad and mark it
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"------------GENERAL INTERFACE OPTIONS------------
colorscheme solarized8_dark_high     "sets the color scheme
set encoding=utf-8                   "Set encoding"
let mapleader = ","                  "Map leader to ,
inoremap jj <ESC>                    "Map jj as ESC
noremap <Leader>e :quit<CR>          "Quit current window
noremap <Leader>E :qa!<CR>           "Quit all windows  
set nu                               "Turn on line numbers
set clipboard=unnamed                "Access the system clipboard for copy/paste
set history=700                      "History to be kept
set undolevels=700                   "Undo levels to be stored
set guifont=Menlo:h16                "Font and size to be used
set relativenumber                   "Have row number counted away from your cursor position
set  nrformats=                      "Treat all numbers as decimal, even if padded by 0
set nobackup 
set nowritebackup
set noswapfile
set colorcolumn=80
set formatoptions=qrn1
set spell spelllang=en_us
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
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"Quicksave command
noremap <C-Z> :update<CR> 
vnoremap <C-Z> <C-C>:update<CR> 
inoremap <C-Z> <C-O>:update<CR> 


"Enable IDE-like code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za          "Enable folding with the spacebar


"Specify different areas of the screen where the splits should occur by adding the following lines to the .vimrc file
set splitbelow
set splitright


"Split navigations
nnoremap <C-J> <C-W><C-J> "Ctrl-j move to the split below
nnoremap <C-K> <C-W><C-K> "Ctrl-k move to the split above
nnoremap <C-L> <C-W><C-L> "Ctrl-l move to the split to the right
nnoremap <C-H> <C-W><C-H> "Ctrl-h move to the split to the left
