".vo"""""""""""""""""""""""
" junegunn/vim-plugged "
""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"monokai"
Plug 'lsdr/monokai'

"transparent background
Plug 'miyakogi/seiya.vim'

" complete completion
" Plug 'Valloric/YouCompleteMe'

" cheat sheet"
Plug 'lifepillar/vim-cheat40'

"git integration
Plug 'tpope/vim-fugitive'

"latex
Plug 'vim-latex/vim-latex', { 'on': 'LATEXToggle' }

"java
Plug 'artur-shaik/vim-javacomplete2'

"" Initialize plugin system
call plug#end()

filetype plugin on
filetype indent on
let g:tex_flavor='latex'
set sw=2
set iskeyword+=:
set nocompatible "usually only needed for system-wide configs
filetype on
set modifiable
set nu
set nowrap
set tabstop=3
set expandtab
set backspace=indent,eol,start
set autoindent 
set copyindent
set shiftwidth=3
set shiftround
set showmatch
set smartcase
set smarttab
set hlsearch
set incsearch
set undolevels=1000
set history=1000
set nobackup
set noswapfile
set pastetoggle=<F2>
" Mapleadercommands
let mapleader=","
:map <leader>n :vsp<cr>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap <silent> ,/ :nohlsearch<CR>

"Latex"
"g:Tex_DefaultTargetFormat=pdf
"g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
"g:Tex_ViewRule_pdf='xpdf'
"
""""""""""""""""""""""""""
"" Vim Airline Settings  "
"""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='molokai'

"""""""""""""""""""""
" Colors and syntax "
"""""""""""""""""""""
syntax enable
colorscheme monokai
hi Normal guibg=NONE ctermbg=NONE
let g:seiya_auto_enable=1

"javacomplete required settings
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


