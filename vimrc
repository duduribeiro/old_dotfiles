call plug#begin()

" Make sure you use single quotes

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

" Ruby specifics
Plug 'tpope/vim-bundler'

" Slim template
Plug 'slim-template/vim-slim'

" Elixir specifics
Plug 'elixir-lang/vim-elixir'

" Vim-tmux support
Plug 'christoomey/vim-tmux-navigator'

" colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax on

" Map the , key as leader
let mapleader = ","

" Leader mappings
""""""""""""""""""""
map <leader>bi :!bundle install<cr>
nmap <leader>f :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
""""""""""""""""""""

" Use Silver Searcher instead of grep
set grepprg=ag

" tab with 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Do not create swapfile
set noswapfile

set ruler
set number

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Colorize the column 120
set colorcolumn=120
highlight ColorColumn ctermbg=235

" Ctrlp
" Make CtrlP use ag for listing the files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Colorscheme (select only one)
" colorscheme gotham " Ensure that you have Gotham theme for your terminal
colorscheme Tomorrow-Night-Eighties
