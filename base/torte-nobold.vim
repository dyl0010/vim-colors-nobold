" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "torte" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "torte" color scheme.
"
" Maintainer of the original "torte" color scheme:
" Thorsten Maerz <info@netztorte.de>

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "torte" color scheme.
runtime colors/torte.vim

let g:colors_name = "torte-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi NonText        term=NONE gui=NONE
	hi Directory      term=NONE
	hi Search         gui=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       gui=NONE
	hi StatusLine     term=reverse cterm=reverse gui=reverse
	hi Title          term=NONE gui=NONE
	hi Visual         gui=NONE
	hi VisualNOS      gui=underline
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi Cursor         cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE
	hi Special        term=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE

	"
	" Color fixes in terminal
	"

	hi Cursor         ctermfg=DarkGray

	"
	" Status line
	"

	hi StatusLineTerm   ctermfg=DarkGray
	hi StatusLineTermNC guifg=DarkGreen

endif
