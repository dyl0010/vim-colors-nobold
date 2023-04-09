" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 06
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "delek" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "delek" color scheme.
"
" Maintainer of the original "delek" color scheme:
" David Schweikert <david@schweikert.ch>

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "delek" color scheme.
runtime colors/delek.vim

let g:colors_name = "delek-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi NonText        term=NONE gui=NONE
	hi Directory      term=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       gui=NONE
	hi StatusLine     term=reverse cterm=NONE gui=reverse
	hi StatusLineNC   cterm=NONE
	hi Title          term=NONE gui=NONE
	hi VisualNOS      cterm=underline gui=underline
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE
	hi Special        term=NONE
	hi Statement      term=NONE cterm=NONE gui=NONE
	hi Type           gui=NONE

	"
	" Color fixes for terminal
	"

	if &background == "light"
		" In original "delek" color scheme, text in inactive status
		" line is dark gray. I changed it to black. If you prefer
		" original dark gray color here, uncomment the line below.

		" hi StatusLineNC   ctermfg=DarkGray

		" If you prefer dark gray text color in inactive status
		" lines, then it might make sense to use the same color
		" for inactive terminal status lines - in this case,
		" uncomment the line below and comment the next line.

		" hi StatusLineTermNC ctermfg=DarkGray
		hi StatusLineTermNC ctermfg=Black
	else
		hi StatusLineNC   ctermfg=DarkGray
		hi StatusLineTerm ctermfg=DarkGray
	endif

	"
	" In GUI, use slightly different colors for active and inactive
	" status line.
	"

	hi StatusLine     guibg=Yellow
	hi StatusLineNC   guibg=Gold2

	"
	" Terminal status line.
	"

	hi StatusLineTermNC guifg=#CCFFCC

endif
