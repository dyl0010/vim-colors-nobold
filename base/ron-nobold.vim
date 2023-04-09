" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 06
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "ron" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "ron" color scheme.
"
" Maintainer of the original "ron" color scheme:
" Ron Aaron <ron@ronware.org>

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "ron" color scheme.
runtime colors/ron.vim

let g:colors_name = "ron-nobold"

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
	hi StatusLine     term=reverse cterm=reverse gui=NONE
	hi Title          term=NONE gui=NONE
	hi VisualNOS      cterm=NONE gui=underline
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE
	hi Constant       gui=NONE
	hi Special        term=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE
	hi Type           gui=NONE
	hi ShowMarksHL    cterm=NONE gui=NONE
	hi diffOnly       gui=NONE

	"
	" Status line
	"

	hi StatusLineNC     ctermbg=DarkGray
	hi StatusLineTermNC guifg=#005000

endif
