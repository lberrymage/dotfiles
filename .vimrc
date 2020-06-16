" For my viewing pleasure
set number

" Indentation
" https://vim.fandom.com/wiki/Indent_with_tabs,_align_with_spaces
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

" Default tab width when not specified
set shiftwidth=4
set tabstop=4

" Make tabs appear as >- and trailing spaces as .
" We like unobtrusive colors for these
set list listchars=tab:>-,trail:.
highlight SpecialKey cterm=italic ctermfg=DarkGrey

" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

call plug#end()
