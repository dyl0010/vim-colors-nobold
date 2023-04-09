" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "chocolate" color scheme, with "bold" attribute removed
" in GUI and terminal, but not in text console.
"
" Includes code from the original "chocolate" color scheme,
" created by Adam Hayward <adam@happy.cat>.
"
" The original "chocolate" color scheme can be found under the following
" URLs:
"
" * https://www.vim.org/scripts/script.php?script_id=2804
" * https://github.com/vim-scripts/chocolate.vim

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "chocolate-nobold"

"
" BEGIN Original chocolate.vim script.
"

hi Normal		  guifg=#D0FFD0 guibg=#212121
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=Blue
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold	guifg=white
hi Directory	  term=bold  cterm=bold  ctermfg=brown	guifg=lightblue
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=blue  guifg=White  guibg=Red
hi Search		  term=reverse	ctermfg=white  ctermbg=red	guifg=white  guibg=#7080dd gui=bold
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guifg=#707070
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=#a05000
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkblue  guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#30dd00
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#FFCC00
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=yellow gui=bold
hi Identifier	  term=underline   ctermfg=brown  guifg=white
hi Function		  guifg=#00ccaa
hi Operator		  guifg=white
hi Statement	  term=bold  cterm=bold ctermfg=yellow	guifg=#ffffff gui=bold
hi PreProc		  term=underline  ctermfg=darkblue	guifg=yellow gui=bold
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#dddddd
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=white guifg=Red	guibg=white
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=#f5f5f5 guibg=#aa4040 gui=bold
hi VertSplit	  guibg=#505050 guifg=white
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Statement
hi link Float			Number
" hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
" hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

"
" END Original chocolate.vim script.
"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE cterm=NONE
	hi NonText        term=NONE cterm=NONE gui=NONE
	hi Directory      term=NONE cterm=NONE
	hi ErrorMsg       cterm=NONE
	hi Search         gui=NONE
	hi MoreMsg        term=NONE cterm=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi LineNr         cterm=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       cterm=NONE gui=NONE
	hi StatusLine     term=reverse cterm=NONE gui=NONE
	hi Title          term=NONE cterm=NONE gui=NONE
	hi VisualNOS      term=NONE cterm=NONE gui=underline
	hi WarningMsg     cterm=NONE
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE cterm=NONE
	hi Constant       cterm=NONE
	hi Special        term=NONE cterm=NONE gui=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE cterm=NONE gui=NONE
	hi PreProc        gui=NONE
	hi Type           cterm=NONE gui=NONE
	hi Todo           gui=NONE

	"
	" Color fixes in terminal
	"

	hi NonText        ctermfg=Red
	hi SpecialText    ctermfg=Red
	hi MoreMsg        ctermfg=Green
	hi LineNr         ctermfg=LightCyan
	hi Question       ctermfg=Green
	hi Title          ctermfg=Magenta
	hi WarningMsg     ctermfg=Blue


	"
	" Status line
	"

	hi StatusLine       ctermfg=Blue guifg=DarkBlue
	hi StatusLineTerm   ctermfg=DarkGray
	hi StatusLineTermNC guifg=DarkGreen

endif
