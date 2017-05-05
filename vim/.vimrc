set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

syntax enable

let mapleader = ","

set relativenumber
set number
set showcmd

set mouse=a

" enable . command in visual mode
vnoremap . :normal .<cr>

" make backspace work
set backspace=indent,eol,start

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

set wildmenu
set title

"set colorscheme onedark         " Set the colorscheme

" show all folds
set foldenable 

"space open and closes folds
nnoremap <space> za 

"turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>

"nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


