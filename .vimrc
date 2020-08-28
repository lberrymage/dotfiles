set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" Make tabs appear as >- and trailing spaces as .
" We like unobtrusive colors for these
set list listchars=tab:>-,trail:.
highlight SpecialKey cterm=italic ctermfg=DarkGrey

" Download vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'arzg/vim-rust-syntax-ext'
Plug 'bluz71/vim-moonfly-colors'
Plug 'ollykel/v-vim'

call plug#end()

colorscheme moonfly
set number
