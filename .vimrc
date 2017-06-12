set nocompatible
filetype off

"plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', {'dir':'~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-unimpaired' 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'
Plug 'fatih/vim-go'

call plug#end()
"filetype plugin indent on

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

" clipboard
set clipboard=unnamed

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

set autoread "automatically read file changes

"quickfix
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>q :cclose<CR>

" shortcut to save
nmap <leader>, :w<cr>

"make up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

set autowrite " write the file if :make is called 

"space open and closes folds
" nnoremap <space> za 

"turn off search highlighting
nnoremap <space> :nohlsearch<CR>

inoremap jk <esc>

nmap <silent> <leader>r :buffers<CR>
nmap <leader>, :w<CR>

"
"nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"fzf
if isdirectory(".git")
    nmap <silent> <leader>t :GFiles<CR>
else
    nmap <silent> <leader>t :FZF<CR>
endif

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"ack
nmap <silent> <leader>a :Ack<CR>

"fugitive
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

"fatih-vimgo
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

