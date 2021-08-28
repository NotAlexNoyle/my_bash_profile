" Dependencies for Vundle (Plugin Manager)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vundle Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'arrufat/vala.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'dense-analysis/ale'

" End Vundle read space (all plugins must be above this)
call vundle#end()
filetype plugin indent on

" Prevents logging of access history
let g:netrw_dirhistmax=0

" Use tabs except in yaml / set tab display spacing to 4 / modernize backspaces / disable line folding / enable line numbers
if &filetype == 'yaml'
      autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
else
      setlocal tabstop=4 
	  setlocal shiftwidth=4
endif
set autoindent
set backspace=2
set nofoldenable
set number

" Changes ALE message format and error symbols to look nicer
let g:ale_echo_msg_format = '[%linter%] %severity%: %s'
let g:ale_sign_error='X'
let g:ale_sign_error='⚠'

" Makes tab commands more consistent across various file types
autocmd FileType * set noexpandtab

" Always highlight syntax
syntax on
