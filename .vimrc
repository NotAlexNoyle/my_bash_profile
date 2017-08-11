" Dependencies for Vundle (Plugin Manager)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vundle Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'arrufat/vala.vim'

" End Vundle read space (all plugins must be above this)
call vundle#end()
filetype plugin indent on

" Prevents logging of access history
let g:netrw_dirhistmax=0

" Always use tabs / set tab display spacing to 4 / modernize backspaces / disable line folding / enable line numbers
set autoindent
set backspace=2
set nofoldenable
set number
set shiftwidth=4
set tabstop=4

" Makes tab commands more consistent across various file types
autocmd FileType * set noexpandtab

" Always highlight syntax
syntax on
