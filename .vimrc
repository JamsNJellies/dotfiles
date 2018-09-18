" James's vimrc

set shell=/bin/bash

set nocompatible              
filetype off   

if empty(glob("~/.vim/bundle/Vundle.vim"))
  silent! execute '!git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
  autocmd VimEnter * silent! PluginInstall
endif

" Plugin Manager - Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/fzf'
Plugin 'wimstefan/vim-artesanal'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'reedes/vim-colors-pencil'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'raimondi/delimitmate'
Plugin 'fatih/vim-go'

call vundle#end()            
filetype plugin indent on    

" Theme
syntax on
set background=dark
colorscheme pablo
highlight EndOfBuffer ctermfg=0
set noruler


" filetype stuff
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css  setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Mappings
nnoremap ; :


