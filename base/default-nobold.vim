" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 06
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "default" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.

hi clear Normal
set bg&

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "default-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi Comment        term=NONE cterm=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi Directory      term=NONE
	hi Identifier     cterm=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi NonText        term=NONE gui=NONE
	hi Question       gui=NONE
	hi Special        term=NONE
	hi SpecialKey     term=NONE
	hi Statement      term=NONE gui=NONE
	hi StatusLine     term=reverse cterm=reverse gui=reverse
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi Title          term=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Type           gui=NONE
	hi VisualNOS      term=NONE cterm=NONE gui=underline

	"
	" Status line
	"
	" In original "default" color scheme, active and inactive
	" status lines have the same colors; the active one can be
	" recognized by "bold" attribute. This is no longer the case here;
	" because of this, we're using different text colors for
	" active and inactive status lines.
	"
	" For dark background, we're trying to use similar colors as
	" in the text console.
	"

	if &background == "light"
		hi StatusLineNC ctermbg=Gray guibg=LightGray
		hi StatusLineTermNC ctermfg=Black guifg=#CCFFCC
	else
		hi StatusLine ctermbg=DarkGray
		hi StatusLineTerm ctermfg=DarkGray ctermbg=DarkGreen
		hi StatusLineTermNC ctermfg=Black ctermbg=DarkGreen
	endif

endif
