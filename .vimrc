"-------------------------"
" AdriánLorenzoDev .vimrc "
"-------------------------"
set encoding=UTF-8

" Syntax and highlighting
syntax enable
filetype plugin on
set cursorline
set termguicolors
set t_Co=256
set showmatch

" show line numbers
set number

" set tabspaces
set ts=4

" Bindings
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Basics
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

" Development
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tmhedberg/SimpylFold'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color Scheme
colorscheme gruvbox
set background=dark

" Splitting
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
