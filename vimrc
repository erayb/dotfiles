set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jimmyhchan/dustjs.vim'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mustache/vim-mustache-handlebars'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-surround'
call plug#end()

set number
set cursorline
set relativenumber
set numberwidth=5
set textwidth=80
set colorcolumn=+1
set guifont=Monaco\ for\ Powerline:h14
set t_Co=256
syntax enable

if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme OceanicNext
set visualbell

set hidden
set history=1000
set hlsearch
set incsearch
set ignorecase smartcase

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
set list listchars=tab:··,trail:·,nbsp:·

" Use ag
set grepprg=ag\ --nogroup\ --nocolor

" Ag command
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Source the vimrc file after save
autocmd bufwritepost .vimrc source $MYVIMRC

" Config
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'
let g:ctrlp_use_caching = 0
let g:airline_powerline_fonts = 1
let g:airline_section_b = ''
let g:jsx_ext_required = 0

" Leader
let mapleader = " "

" Window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" NERD Tree toggle
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" CtrlP buffer
nnoremap <silent> <C-b> :CtrlPBuffer<CR>

" bind K to grep word under cursor
nnoremap <silent> K :grep! <cword><CR>:cw<CR>
" Clear highlight
nnoremap <leader>h :noh<cr>
" Close quickfix
nnoremap <leader>c :ccl<cr>
" Find file in NERD Tree
nnoremap <leader>f :NERDTreeFind<cr>
