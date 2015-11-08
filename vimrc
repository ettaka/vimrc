set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle stuff---------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
" }}}

" Basic settings ---------- {{{
filetype plugin indent on    " required
syntax on
set number
set foldlevelstart=0
set ruler
" }}}

" Mappings ---------- {{{
let mapleader = "\\"
noremap <leader>- ddp
noremap <leader>_ dd2kp
inoremap <leader><c-u> <esc>viwUi
nnoremap <leader><c-u> viwU
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>
nnoremap <leader>; `<i'<esc>`>a'<esc>
nnoremap <leader>H 0
nnoremap <leader>L $
inoremap jj <esc>
inoremap <esc> <nop>
" }}}

iabbrev @@ eelis.takala@gmail.com

" Python file settings ---------- {{{
augroup filetype_python
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END
" }}}

" Vimscript file settings ---------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}