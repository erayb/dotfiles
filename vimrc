set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jimmyhchan/dustjs.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
call plug#end()

set number
set numberwidth=5
set textwidth=80
set colorcolumn=+1
set guifont=Monaco:h14
set t_Co=256
syntax enable
colorscheme solarized
set background=dark
set visualbell

set hidden
set history=1000

set backspace=2
set laststatus=2

set backupdir=~/.tmp
set directory=~/.tmp

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set splitbelow
set splitright

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use ag
set grepprg=ag\ --nogroup\ --nocolor

" Ag command
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Source the vimrc file after save
autocmd bufwritepost .vimrc source $MYVIMRC

" Config
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'
let g:ctrlp_use_caching = 0

" Leader
let mapleader = " "

" Window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" bind K to grep word under cursor
nnoremap <silent> K :grep! <cword><CR>:cw<CR>
