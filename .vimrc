set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/fzf'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive' 

call vundle#end()
filetype plugin indent on

syntax on
set background=dark
:set t_Co=256
colorscheme solarized

let mapleader = ","

set relativenumber
set number
set showcmd

set mouse=a

"bells - they are annoying
set noerrorbells
set visualbell
set t_vb=
set tm=500

"backup directories
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

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

" show all folds
set foldenable 

" tabs
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"wrap
set wrap
set wrapmargin=8
set linebreak
"set showbreak=… " something wrong with this and writing on other
"platofrms?
set autoindent
set smartindent

"make up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

"space open and closes folds
" nnoremap <space> za 

"turn off search highlighting
nnoremap <space> :nohlsearch<CR>

nmap <silent> <leader>r :buffers<CR>
"
"nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"fzf
nmap <silent> <leader>t :FZF<CR>

"ack
nmap <silent> <leader>a :Ack<CR>
