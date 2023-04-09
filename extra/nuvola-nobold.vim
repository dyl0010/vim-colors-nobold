" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2019 Jul 21
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "nuvola" color scheme, with "bold" attribute removed
" in GUI and terminal, but not in text console. Also, I changed
" colors used in auto-completion menu to match colors used in status line.
"
" Includes code from the original "nuvola" color scheme,
" created by Dr. J. Pfefferl <pfefferl@gmx.net>.
"
" The original "nuvola" color scheme can be found under the following
" URLs:
"
" * https://www.vim.org/scripts/script.php?script_id=719
" * https://github.com/vim-scripts/nuvola.vim

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="nuvola-nobold"

"
" BEGIN Original nuvola.vim script.
"

" Normal
hi Normal ctermfg=black ctermbg=NONE guifg=black guibg=#F9F5F9

" Search
hi IncSearch cterm=UNDERLINE ctermfg=Black ctermbg=brown gui=UNDERLINE guifg=Black guibg=#FFE568
hi Search term=reverse cterm=UNDERLINE ctermfg=Black ctermbg=brown gui=NONE guifg=Black guibg=#FFE568

" Messages
hi ErrorMsg gui=BOLD guifg=#EB1513 guibg=NONE
hi! link WarningMsg ErrorMsg
hi ModeMsg gui=BOLD guifg=#0070ff guibg=NONE
hi MoreMsg guibg=NONE guifg=seagreen
hi! link Question MoreMsg

" Split area
hi StatusLine term=BOLD,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=BOLD guibg=#56A0EE guifg=white
hi StatusLineNC gui=NONE guibg=#56A0EE guifg=#E9E9F4
hi! link VertSplit StatusLineNC
hi WildMenu gui=UNDERLINE guifg=#56A0EE guibg=#E9E9F4

" Diff
hi DiffText   gui=NONE guifg=#f83010 guibg=#ffeae0
hi DiffChange gui=NONE guifg=#006800 guibg=#d0ffd0
hi DiffDelete gui=NONE guifg=#2020ff guibg=#c8f2ea
hi! link DiffAdd DiffDelete

" Cursor
hi Cursor       gui=none guifg=black guibg=orange
"hi lCursor      gui=NONE guifg=#f8f8f8 guibg=#8000ff
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#8000ff

" Fold
hi Folded gui=NONE guibg=#B5EEB5 guifg=black
"hi FoldColumn gui=NONE guibg=#9FD29F guifg=black
hi! link FoldColumn Folded

" Other
hi Directory    gui=NONE guifg=#0000ff guibg=NONE
hi LineNr       gui=NONE guifg=#8080a0 guibg=NONE
hi NonText      gui=BOLD guifg=#4000ff guibg=#EFEFF7
"hi SpecialKey   gui=NONE guifg=#A35B00 guibg=NONE
hi Title        gui=BOLD guifg=#1014AD guibg=NONE
hi Visual term=reverse ctermfg=yellow ctermbg=black gui=NONE guifg=Black guibg=#BDDFFF
hi VisualNOS term=reverse ctermfg=yellow ctermbg=black gui=UNDERLINE guifg=Black guibg=#BDDFFF

" Syntax group
hi Comment term=BOLD ctermfg=darkgray guifg=#3F6B5B
hi Constant term=UNDERLINE ctermfg=red guifg=#B91F49
hi Error term=REVERSE ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Identifier term=UNDERLINE ctermfg=Blue guifg=Blue
hi Number   term=UNDERLINE ctermfg=red gui=NONE guifg=#00C226
hi PreProc term=UNDERLINE ctermfg=darkblue guifg=#1071CE
hi Special term=BOLD ctermfg=darkmagenta guifg=red2
hi Statement term=BOLD ctermfg=DarkRed gui=NONE guifg=#F06F00
hi Tag term=BOLD ctermfg=DarkGreen guifg=DarkGreen
hi Todo term=STANDOUT ctermbg=Yellow ctermfg=blue guifg=Blue guibg=Yellow
hi Type term=UNDERLINE ctermfg=Blue gui=NONE guifg=Blue
hi! link String	Constant
hi! link Character	Constant
hi! link Boolean	Constant
hi! link Float		Number
hi! link Function	Identifier
hi! link Conditional	Statement
hi! link Repeat	Statement

"
" NOTE: In the original "nuvola.vim" script, "Label" group was linked to
" "Statemengreen", which does not exist. The effect was that this group
" was displayed in black color. This seems to be the same as linking it
" with "Normal" group, which I decided to do.
"
hi! link Label		Normal

hi! link Operator	Statement
hi! link Keyword	Statement
hi! link Exception	Statement
hi! link Include	PreProc
hi! link Define	PreProc
hi! link Macro		PreProc
hi! link PreCondit	PreProc
hi! link StorageClass	Type
hi! link Structure	Type
hi! link Typedef	Type
hi! link SpecialChar	Special
hi! link Delimiter	Special
hi! link SpecialComment Special
hi! link Debug		Special

" HTML
hi htmlLink                 gui=UNDERLINE guifg=#0000ff guibg=NONE
hi htmlBold                 gui=BOLD
hi htmlBoldItalic           gui=BOLD,ITALIC
hi htmlBoldUnderline        gui=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic  gui=BOLD,UNDERLINE,ITALIC
hi htmlItalic               gui=ITALIC
hi htmlUnderline            gui=UNDERLINE
hi htmlUnderlineItalic      gui=UNDERLINE,ITALIC

"
" END Original nuvola.vim script.
"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE  
	hi NonText        term=NONE gui=NONE  
	hi Directory      term=NONE  
	hi ErrorMsg       term=standout gui=NONE 
	hi MoreMsg        term=NONE gui=NONE 
	hi ModeMsg        term=NONE cterm=NONE gui=NONE 
	hi CursorLineNr   term=NONE gui=NONE 
	hi Question       term=standout gui=NONE 
	hi StatusLine     term=reverse gui=NONE  
	hi Title          term=NONE gui=NONE 
	hi VisualNOS      term=reverse cterm=underline gui=underline  
	hi DiffAdd        term=NONE  
	hi DiffChange     term=NONE   
	hi DiffDelete     term=NONE    
	hi DiffText       term=reverse cterm=NONE   
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE  
	hi ToolbarButton  cterm=NONE gui=NONE  
	hi Comment        term=NONE  
	hi Special        term=NONE  
	hi Statement      term=NONE  
	hi Tag            term=NONE  

	"
	" Status line.
	"
	
	hi StatusLineTermNC guifg=#CCFFCC

	"
	" Auto-completion.
	"

	hi Pmenu    guifg=White guibg=#56A0EE
	hi PmenuSel guifg=#56A0EE guibg=#E9E9F4 

endif
