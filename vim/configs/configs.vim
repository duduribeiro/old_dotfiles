" Enable syntax highlight
syntax on
" Display relative line numbers
set relativenumber
" display the line number
set nu
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
" Load matchit
runtime macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

"let g:neodark#use_256color = 1
"let g:neodark#terminal_transparent = 1
"colorscheme neodark

"""Gruvbox
"let g:gruvbox_italic=1
"set background=dark
"set t_Co=256
"colorscheme gruvbox
"let g:gruvbox_vert_split = 'bg1'
"let g:gruvbox_sign_column = 'bg0'

"""base16-eighties
set t_Co=256
let base16colorspace=256
colorscheme base16-eighties
" makes the current line color blue
hi CursorLineNr ctermfg=20 ctermbg=18 gui=bold guifg=#43a5d5 guibg=#393939

"""base16-tomorrow
"set t_Co=256
"let base16colorspace=256
"colorscheme base16-tomorrow

"""base16-tomorrow
"set t_Co=256
"let base16colorspace=256
"colorscheme base16-tomorrow-night

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
"let g:ale_fix_on_save = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"t Ctrl+n
nmap <silent> t<C-n> :TestNearest<CR>
"t Ctrl+f
nmap <silent> t<C-f> :TestFile<CR>
"t Ctrl+s
nmap <silent> t<C-s> :TestSuite<CR>
"t Ctrl+l
nmap <silent> t<C-l> :TestLast<CR>
"t Ctrl+g
nmap <silent> t<C-g> :TestVisit<CR>
"let g:test#preserve_screen = 1

if has('nvim')
  tmap <C-o> <C-\><C-n>
  "let test#strategy = "neovim"
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>p :Goyo<CR>
" Width
let g:goyo_width = 120


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window Resize and Zoom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>z :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" resize
nnoremap <leader>h :vertical resize +15<cr>
nnoremap <leader>l :vertical resize -15<cr>
nnoremap <leader>j :resize +15<cr>
nnoremap <leader>k :resize -15<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim multiple cursors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_select_all_key = '<C-a>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-terraform
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:terraform_align=1
autocmd FileType terraform setlocal commentstring=#%s

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
" Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding
" Toggles folding with space
nnoremap <Space> za
" Runs bundle install with ,bi
noremap <leader>bi :!bundle install<cr>
" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>
