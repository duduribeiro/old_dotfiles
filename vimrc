call plug#begin()

" Make sure you use single quotes

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'kana/vim-textobj-user'
Plug 'scrooloose/nerdtree'
Plug 'ddrscott/vim-side-search'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Ruby specifics
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-rails'

" Slim template
Plug 'slim-template/vim-slim'

" Elixir specifics
Plug 'elixir-lang/vim-elixir'

" Vim-tmux support
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

" Todo
Plug 'vitalk/vim-simple-todo'

call plug#end()

syntax on

set termguicolors
let g:gruvbox_italic=1
set background=dark
" Colorscheme (select only one)
" colorscheme gotham " Ensure that you have Gotham theme for your terminal
" colorscheme base16-mocha
" colorscheme Tomorrow-Night-Eighties
colorscheme gruvbox

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

set relativenumber
set ignorecase
set incsearch
set cursorline
set showmatch
set nocompatible


" tab with 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Do not create swapfile
set noswapfile

set splitright
set splitbelow

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

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>z :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" vim tmux runner
nnoremap <leader>vo :VtrOpenRunner<cr>
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>fr :VtrFocusRunner<cr>

nnoremap <leader>q :VtrSendCommandToRunner q<cr>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" let g:rspec_command = 'call VtrSendCommand("rspec {spec}")'

" Enable seeing-is-believing mappings only for Ruby
let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <F6> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <F6> <Plug>(seeing_is_believing-clean)

autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run)

runtime macros/matchit.vim

let g:side_search_prg = 'ag --word-regexp'
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" 20% splits
let g:side_search_split_pct = 0.2

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" Resize split
nnoremap <leader>h :vertical resize +15<cr>
nnoremap <leader>l :vertical resize -15<cr>
nnoremap <leader>j :resize +15<cr>
nnoremap <leader>k :resize -15<cr>

" Setup Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_theme='gruvbox'
" let g:airline_theme='gotham'
let g:airline_powerline_fonts = 1
let g:airline_section_b = ''

let g:airline_section_x = ''
let g:airline_section_y = ''

highlight LineNr ctermfg=darkgrey ctermbg=None

if $TMUX == ''
  set clipboard+=unnamed
endif

" Cursor shapes
if has("mac")
  if empty($TMUX)
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  else
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  end
elseif has("unix")
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"
endif

" folding
set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding
" Toggles folding with space
nnoremap <Space> za
