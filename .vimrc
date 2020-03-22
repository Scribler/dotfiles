"---------------------------------------------------------------------------
"VIM PLUG
"specify a directory for pluggins
call plug#begin('~/.vim/plugged')

"On Demand Loading
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

call plug#end()
"---------------------------------------------------------------------------
"KEY REMAPS
inoremap kj <Esc>

"KEY REMAPS END
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
"STRANGE FIXES

"Allow plugins?
"set nocompatible
"filetype plugin on
"runtime macros/machit.vim

"Turn on Backspace (not activated by default.)
set bs=2

"Fix Visual Mode Highlighting.
:highlight Visual cterm=reverse ctermbg=NONE

"SET TAB TO 4 SPACES
filetype plugin indent on
"show existing tab with 4 spaces width
set tabstop=3
"when indenting with '>' use 4 spaces width
set shiftwidth=3
"on pressing tab, insert 4 spaces
set expandtab
set softtabstop=3
"Stop @@@@@@@ from displaying after long last line
set display+=lastline

"STRANGE FIXES END
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
"GENERAL CUSTOMIZATIONS
"Set linewrap so that it doesn't split words.
set wrap linebreak nolist

"(1) Numbered Lines - Auto relative numbers
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"(2) Auto indent on
set autoindent

"(3) Activate Syntax Highlighting.
syntax on

"(4) Jump between tags using '%' *note if on the bracket it will just jump to
"the opposite bracket*

"(5) Turn on matchit plugin (jumps between tags)
packadd! matchit

"GENERAL CUSTOMIZATIONS END
"---------------------------------------------------------------------------
