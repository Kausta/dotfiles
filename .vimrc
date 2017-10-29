set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'delimitMate.vim'
Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just 
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to 
" auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline#extensions#tabline#enabled = 1    " Enable nice tabline
let g:airline_powerline_fonts = 1

let g:NERDTreeDirArrowExpandable = '+'  " Disable fancy arrows in NERDTree
let g:NERDTreeDirArrowCollapsible = '-'

let delimitMate_expand_cr = 1

set wildmenu        " Enhanced command line completion
set wildmode=longest,list   " Complete the longest match, then list others
set backspace=indent,eol,start  " Allow backspacing over more stuff
set confirm         " Ask to confirm instead of failing
set ignorecase      " Case insensitive search
set smartcase       " Case sensitive if search term contains capitals
set linebreak       " Allow linebreaks between words
set scrolloff=2     " Start scrolling a few lines from the border
set visualbell      " Use colour blink instead of sound
set display+=lastline   " Always display the last line of the screen
set encoding=utf8   " Use utf8 as internal encoding
set whichwrap+=<,>,h,l  " Allow cursor to wrap lines
set hidden          " Allow opening new buffers without saving changes
set laststatus=2    " Wider status line, needed for powerline

autocmd CompleteDone * pclose " Automaticaly close preview after completion

set tabstop=4       " Width of the tab character
set softtabstop=4   " How many columns the tab key inserts
set shiftwidth=4    " Width of 1 indentation level
set expandtab       " Expand tabs into spaces
set smartindent     " Smart C-like autoindenting

set number          " Show line numbers
set showmatch       " When inserting brackets, highlight the matching one
set hlsearch        " Highlight search results
set incsearch       " Highlight search results as the search is typed
set showcmd         " Show command on the bottom
set ruler           " Show line and cursor position
set colorcolumn=120 " Highlight the 80th column
set listchars=tab:>-,trail:· " Show tabs and trailing space
set list            " Enable the above settings
set cursorline

syntax on           " Enable syntax highlighting

let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox


