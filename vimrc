execute pathogen#infect()
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
filetype plugin indent on

" tab with 2 spaces
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set noswapfile
:set ruler
:set number

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" rainbow_parentheses.vim (highlight parenteses and brackets)
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0

" rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NERDTree
" open NERDTree on start vim and no file are passed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" close vim if the only left window is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" crosshair
":hi CursorLine   cterm=NONE ctermbg=237
":hi CursorColumn cterm=NONE ctermbg=237
"au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn

" crosshairs with vim-crosshairs
"highlight CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE guibg=black guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE guibg=black guifg=NONE
":set cursorline    " enable the horizontal line
":set cursorcolumn  " enable the vertical line
set colorcolumn=120


"airline
" smarter tab line
let g:airline#extensions#tabline#enabled = 1
:set laststatus=2

" tags in new tab/vetical split
" Ctrl+\ open tag in new tab
" Alt+]  open tag in new vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  " bind | to grep shortcut
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap } :Ag<SPACE>
endif

" vim-rubocop
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>
