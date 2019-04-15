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
" set termguicolors

" Neodark
"let g:neodark#use_256color = 1
"let g:neodark#terminal_transparent = 1
"colorscheme neodark

"""Gruvbox
"set background=light
"let g:gruvbox_contrast_light = 'dark'
"colorscheme gruvbox

"""base16-eighties
" set t_Co=256
" let base16colorspace=256
" colorscheme base16-eighties
" colorscheme base16-atelier-cave-light  " light-theme
" makes the current line color blue
" hi CursorLineNr ctermfg=20 ctermbg=18 gui=bold guifg=#43a5d5 guibg=#393939

"""base16-tomorrow
"set t_Co=256
"let base16colorspace=256
"colorscheme base16-tomorrow

"""base16-tomorrow
"set t_Co=256
"let base16colorspace=256
"colorscheme base16-tomorrow-night

""" OneHalf
" set t_Co=256
" set cursorline
" colorscheme onehalflight
if exists('+termguicolors')
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  " set termguicolors
endif

""" OneDark """
colorscheme onehalfdark

" Runs bundle install with ,bi
noremap <leader>bi :!bundle install<cr>

" puts the caller with WTF
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

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
nmap <Leader>s :Ag<Space>

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

let test#strategy = 'vimux'

if has('nvim')
  let test#strategy = "neovim"
  tmap <C-o> <C-\><C-n>
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
set clipboard+=unnamedplus
if $TMUX != ''
  " set clipboard=unnamed
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
let g:lightline.colorscheme='onehalfdark'
" -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline. 
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding
" Toggles folding with space
nnoremap <Space> za

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Seeing is believing with xmpfilter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LanguageClient with Solargraph for ruby
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LanguageClient_autoStop = 0
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658']
    \ }

nnoremap <F3> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
