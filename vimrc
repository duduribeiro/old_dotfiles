call plug#begin()

" Make sure you use single quotes

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
" colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'chriskempson/base16-vim'

call plug#end()

syntax on

" Map the , key as leader
let mapleader = ","

" Leader mappings
""""""""""""""""""""
nmap <leader>f :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
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
colorscheme gotham " Ensure that you have Gotham theme for your terminal
" colorscheme base16-eighties
