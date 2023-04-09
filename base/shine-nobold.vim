" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 07
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "shine" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "shine" color scheme.

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "shine" color scheme.
runtime colors/shine.vim

let g:colors_name = "shine-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey      term=NONE
	hi NonText         term=NONE gui=NONE
	hi Directory       term=NONE
	hi MoreMsg         term=NONE gui=NONE
	hi ModeMsg         term=NONE cterm=NONE gui=NONE
	hi CursorLineNr    term=NONE gui=NONE
	hi Question        gui=NONE
	hi StatusLine      term=reverse cterm=reverse gui=reverse
	hi Title           term=NONE gui=NONE
	hi VisualNOS       term=underline cterm=underline gui=underline
	hi DiffAdd         term=NONE
	hi DiffChange      term=NONE
	hi DiffDelete      term=NONE gui=NONE
	hi DiffText        cterm=NONE gui=NONE
	hi TabLineSel      term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm  term=reverse cterm=NONE gui=NONE
	hi ToolbarButton   cterm=NONE gui=NONE
	hi Comment         term=NONE gui=NONE
	hi Special         term=NONE
	hi Statement       term=NONE cterm=NONE gui=NONE
	hi Type            gui=NONE
	hi Number          gui=NONE
	hi StorageClass    gui=NONE
	hi SpecialChar     gui=NONE

	"
	" Color fixes in terminal
	"

	hi ModeMsg         ctermfg=DarkGray
	hi VisualNOS       ctermfg=DarkGray
	hi DiffText        ctermfg=DarkGray
	hi TabLineSel      ctermfg=DarkGray

	"
	" Status line
	"

	hi StatusLine       ctermfg=DarkGray
	hi StatusLineNC     guibg=LightGray
	hi StatusLineTermNC ctermfg=Black guifg=#CCFFCC

endif
