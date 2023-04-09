" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "peachpuff" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "peachpuff" color scheme.
"
" Maintainer of the original "peachpuff" color scheme:
" David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "peachpuff" color scheme.
runtime colors/peachpuff.vim

let g:colors_name = "peachpuff-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi NonText        term=NONE cterm=NONE gui=NONE
	hi Directory      term=NONE
	hi ErrorMsg       cterm=NONE gui=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       gui=NONE
	hi StatusLine     term=reverse cterm=reverse gui=NONE
	hi StatusLineNC   gui=NONE
	hi VertSplit      gui=NONE
	hi Title          term=NONE gui=NONE
	hi VisualNOS      term=underline cterm=underline gui=underline
	hi WarningMsg     gui=NONE
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE cterm=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE
	hi Special        term=NONE
	hi Statement      term=NONE gui=NONE
	hi Type           gui=NONE
	hi Ignore         cterm=NONE
	hi Error          cterm=NONE gui=NONE

	"
	" Color fixes in terminal
	"

	hi Error          ctermfg=White
	hi ErrorMsg       ctermfg=White


	"
	" Status line
	"

	hi StatusLineNC     ctermbg=Gray
	hi StatusLineTerm   guifg=White
	hi StatusLineTermNC ctermfg=DarkGray

endif
