" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "blue" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "blue" color scheme.

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "blue" color scheme.
runtime colors/blue.vim

let g:colors_name = "blue-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi NonText        term=NONE gui=NONE
	hi Directory      term=NONE
	hi MoreMsg        term=NONE
	hi ModeMsg        term=NONE cterm=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       gui=NONE
	hi StatusLine     term=reverse cterm=reverse gui=NONE
	hi Title          term=NONE cterm=NONE gui=NONE
	hi VisualNOS      gui=underline
	hi WarningMsg     gui=NONE
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE gui=NONE
	hi Special        term=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE
	hi Type           gui=NONE
	hi Operator       gui=NONE

	"
	" Color fixes for terminal
	"

	hi DiffText ctermfg=DarkGray

	"
	" Terminal status line
	"

	hi StatusLineTerm ctermfg=DarkGray guifg=DarkGreen

endif
