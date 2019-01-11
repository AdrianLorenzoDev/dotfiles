" Auto vim-plug install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Syntax
syntax enable
filetype plugin on
set termguicolors

" Jedi options
let g:jedi#use_splits_not_buffers = "left"

" Bindings
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <F8> :TagbarToggle<CR>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color Scheme
colorscheme gruvbox
set background=dark

" NERDtree autostart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDtree closing
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
