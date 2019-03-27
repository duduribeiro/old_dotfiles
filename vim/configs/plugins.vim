call plug#begin()

" Status line using lightline 
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Language integrations
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary' " for comments
Plug 'alvan/vim-closetag' " auto close HTML tags
Plug 'tpope/vim-endwise' " wisely add 'end' in ruby
Plug 'jeffkreeftmeijer/vim-numbertoggle' " automatically toggle between relative/nonrelative number
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

" Distraction free mode
Plug 'junegunn/goyo.vim'

" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Project Explorer
Plug 'scrooloose/nerdtree'

" Running Tests from Vim
Plug 'janko-m/vim-test'

" Interactive scratchpad
Plug 'metakirby5/codi.vim'

" Navigation with Tmux
Plug 'christoomey/vim-tmux-navigator'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Plug 'tpope/vim-rake'
" Plug 'tpope/vim-dispatch'
" Plug 'benmills/vimux'
" Plug 'hashivim/vim-terraform'
" Plug 'pearofducks/ansible-vim'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'honza/vim-snippets'
" Plug 'airblade/vim-gitgutter'
" Plug 'w0rp/ale'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'haya14busa/incsearch.vim'
"
" Plug 'ryanoasis/vim-devicons'
" Plug 't9md/vim-ruby-xmpfilter'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }


" Colorscheme
" Plug 'KeitaNakamura/neodark.vim'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim' 

call plug#end()
