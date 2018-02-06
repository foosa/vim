" -*- coding: utf-8 -*-
"
" Program:     .vimrc
" Author:      True Merrill
" Date:        Jan 14 2016
" Modified:    Mar 14 2017
"
" Copyright (C) 2016
" All rights reserved
"

set nocompatible
filetype off

" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" Vundle plugins
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'scrooloose/NERDTree'
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	Plugin 'garbas/vim-snipmate'
	Plugin 'honza/vim-snippets'
	Plugin 'foosa/DoxygenToolkit.vim'
	Plugin 'heavenshell/vim-pydocstring'
	Plugin 'vim-scripts/git-time-lapse'
	Plugin 'albertorestifo/github.vim'
	"Plugin 'vim-scripts/OmniCppComplete'
	Plugin 'JuliaEditorSupport/julia-vim'

call vundle#end()
filetype plugin indent on

" Default settings
syntax on
set shell=/bin/bash
set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set hidden
set autochdir
set laststatus=2

" Gui settings
if has("gui_running")
	set guioptions-=T  "remove toolbar
	set guifont=Droid\ Sans\ Mono\ for\ Powerline:h12
	set nowrap
	" colorscheme merrill
endif
silent! set background=dark
silent! colorscheme solarized

" Key mappings
map <c-d> :NERDTreeToggle <CR>
map <c-x><c-p> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='github'

" Snippits
let g:snipMate = {}
let g:snipMate.snippet_version = 1
let g:snips_author = 'True Merrill'
let g:snips_email = 'true.merrill@gtri.gatech.edu'

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_c_include_dirs = [$HOME . '/.local/include']
autocmd VimEnter * SyntasticToggleMode " disable by default
