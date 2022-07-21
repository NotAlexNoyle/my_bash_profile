vim9script
# Dependencies for Vundle (Plugin Manager)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

# Vundle Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'arrufat/vala.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'dense-analysis/ale'

# End Vundle read space (all plugins must be above this)
call vundle#end()
filetype plugin indent on

# Prevents logging of access history
g:netrw_dirhistmax = 0

# Sets each tab to take up four columns
setlocal tabstop=4
# When tab is pressed, the line character will browse 4 columns to the right
setlocal shiftwidth=4

# When newline is reached, new tab will be created at current scope
set autoindent
# Modernize backspaces
set backspace=2
# No folding
set nofoldenable
# Show line numbers
set number
# Write tabs instead of spaces
set noexpandtab

# Enables mouse support
:set mouse=a

# Changes gutter symbol colors to be more readable
highlight SignColumn ctermbg=black
highlight clear ALEErrorSign
highlight ALEErrorSign ctermfg=red
highlight clear ALEWarningSign
highlight ALEWarningSign ctermfg=yellow

# YAML specific configuration. Sets each tab to take up four columns. Displays
# tab indentation as two columns behind cursor. When tab is pressed, the line
# character will browse 2 characters to the right. Writes spaces instead of
# tabs.
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

# See .conf files as yaml
autocmd BufNewFile,BufRead *.conf set filetype=yaml

# Map F2 key to lnext (go to next error)
nnoremap <F6> :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>

# Changes ALE message format and error symbols to look nicer
g:ale_echo_msg_format = '[%linter%] %severity%: %s'
g:ale_sign_error = '✖'
g:ale_sign_warning = '⚠'

# Always highlight syntax
syntax on

# Make gutter transparent
highlight clear SignColumn
