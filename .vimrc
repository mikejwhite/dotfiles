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
colorscheme solarized

let mapleader = ","

set relativenumber
set number
set showcmd

set mouse=a

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

"wrap
"space open and closes folds


"space open and closes folds
" nnoremap <space> za 
"wrap

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
