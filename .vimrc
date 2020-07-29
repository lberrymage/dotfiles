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

Plug 'arzg/vim-rust-syntax-ext'
Plug 'bluz71/vim-moonfly-colors'
Plug 'ollykel/v-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" For my viewing pleasure
colorscheme moonfly
set number
