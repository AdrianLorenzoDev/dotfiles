"-------------------------"
" AdriánLorenzoDev .vimrc "
"-------------------------"
set encoding=UTF-8

" Auto vim-plug install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Syntax and highlighting
syntax enable
filetype plugin on
set termguicolors
set cursorline
set showmatch
let python_highlight_all=1

" show line numbers
set number

" set tabspaces
set ts=4

" Jedi options
let g:jedi#use_splits_not_buffers = "left"

" Bindings
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <F8> :TagbarToggle<CR>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Basics
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

" Development
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tmhedberg/SimpylFold'

" Markdown
Plug 'junegunn/goyo.vim'

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

" NERDtree autostart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDtree closing
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
