" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "koehler" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "koehler" color scheme.
"
" Maintainer of the original "koehler" color scheme:
" Ron Aaron <ron@ronware.org>

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "koehler" color scheme.
runtime colors/koehler.vim

let g:colors_name = "koehler-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE cterm=NONE
	hi EndOfBuffer    term=NONE cterm=NONE gui=NONE
	hi NonText        term=NONE cterm=NONE gui=NONE
	hi Directory      term=NONE cterm=NONE
	hi ErrorMsg       cterm=NONE
	hi MoreMsg        term=NONE cterm=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi LineNr         cterm=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       cterm=NONE gui=NONE
	hi StatusLine     term=reverse cterm=NONE gui=NONE
	hi Title          term=NONE cterm=NONE gui=NONE
	hi VisualNOS      gui=underline
	hi WarningMsg     cterm=NONE
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLine        term=reverse cterm=NONE gui=NONE
	hi TabLineSel     cterm=NONE gui=NONE
	hi TabLineFill    term=reverse cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE cterm=NONE
	hi Constant       cterm=NONE
	hi Special        term=NONE cterm=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE cterm=NONE gui=NONE
	hi Type           cterm=NONE gui=NONE
	hi Underlined     cterm=underline gui=underline

	"
	" Status line
	"

	hi StatusLine       ctermfg=Blue
	hi StatusLineNC     guibg=DarkCyan
	hi StatusLineTerm   ctermfg=DarkGray
	hi StatusLineTermNC guifg=DarkGreen

endif
