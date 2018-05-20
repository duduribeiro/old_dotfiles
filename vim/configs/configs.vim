" Enable syntax highlight
syntax on
" Display relative line numbers
set relativenumber
" Ignore case when searching
set ignorecase
" Activate incrementar search
set incsearch
" Highlight the line containing the cursor
set cursorline
" Displays the matching opening brackets when inserting the close one.
set showmatch
" Use Silver Searcher instead of grep
set grepprg=ag
" Do not create swapfile
set noswapfile
" Tab with 2 spaces
set tabstop=2 shiftwidth=2 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors

"let g:neodark#use_256color = 1
"let g:neodark#terminal_transparent = 1
"colorscheme neodark

let g:gruvbox_italic=1
set background=dark
set t_Co=256
colorscheme gruvbox
let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_sign_column = 'bg0'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Closes the editor if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configure DevIcon to display folder icon instead of an arrow
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\}
let g:ale_fix_on_save = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config to work nice with TMUX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if $TMUX == ''
  set clipboard+=unnamed
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor Shapes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding
" Toggles folding with space
nnoremap <Space> za
