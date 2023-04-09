" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2019 Jul 07
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "ibmedit" color scheme, with "bold" attribute removed
" in GUI and terminal, but not in text console. Also, I made some minor
" modifications compared to the original color scheme - see the
" "Additional customizations" block at the end of the script.
"
" Includes code from the original "ibmedit" color scheme, which can be found
" under the following URLs:
"
" * https://www.vim.org/scripts/script.php?script_id=385
" * https://github.com/vim-scripts/ibmedit.vim

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="ibmedit-nobold"

"
" BEGIN Original ibmedit.vim script.
"

hi Normal       term=NONE cterm=NONE ctermfg=Gray ctermbg=DarkBlue
hi Normal       gui=NONE guifg=#CCCCCC guibg=DarkBlue
hi NonText      term=NONE cterm=NONE ctermfg=Gray ctermbg=DarkBlue
hi NonText      gui=NONE guifg=#CCCCCC guibg=DarkBlue

hi Statement    term=NONE cterm=NONE ctermfg=White  ctermbg=DarkBlue
hi Statement    gui=NONE guifg=White guibg=DarkBlue
hi Special      term=NONE cterm=NONE ctermfg=White ctermbg=DarkBlue
hi Special      gui=NONE guifg=White guibg=DarkBlue
hi Constant     term=NONE cterm=NONE ctermfg=Cyan ctermbg=DarkBlue
hi Constant     gui=NONE guifg=#99CCFF guibg=DarkBlue
hi Comment      term=NONE cterm=NONE ctermfg=Blue ctermbg=DarkBlue
hi Comment      gui=NONE guifg=#6666FF guibg=DarkBlue
hi Preproc      term=NONE cterm=NONE ctermfg=Cyan ctermbg=DarkBlue
hi Preproc      gui=NONE guifg=#99CCFF guibg=DarkBlue
hi Type         term=NONE cterm=NONE ctermfg=Gray ctermbg=DarkBlue
hi Type         gui=NONE guifg=#CCCCCC guibg=DarkBlue
hi Identifier   term=NONE cterm=NONE ctermfg=Grey ctermbg=DarkBlue
hi Identifier   gui=NONE guifg=#CCCCCC guibg=DarkBlue

hi StatusLine   term=bold cterm=bold ctermfg=Black ctermbg=White
hi StatusLine   gui=bold guifg=Black guibg=White

hi StatusLineNC term=NONE cterm=NONE ctermfg=Black ctermbg=White
hi StatusLineNC gui=NONE guifg=Black guibg=White

hi Visual       term=NONE cterm=NONE ctermfg=Black ctermbg=DarkCyan
hi Visual       gui=NONE guifg=Black guibg=Gray

hi Search       term=NONE cterm=NONE ctermbg=Gray
hi Search       gui=NONE guibg=Gray

hi VertSplit    term=NONE cterm=NONE ctermfg=Black ctermbg=White
hi VertSplit    gui=NONE guifg=Black guibg=White

hi Directory    term=NONE cterm=NONE ctermfg=Green ctermbg=DarkBlue
hi Directory    gui=NONE guifg=Green guibg=DarkBlue

hi WarningMsg   term=standout cterm=NONE ctermfg=Red ctermbg=DarkBlue
hi WarningMsg   gui=standout guifg=Red guibg=DarkBlue

hi Error        term=NONE cterm=NONE ctermfg=White ctermbg=Red
hi Error        gui=NONE guifg=White guibg=Red

hi Cursor       ctermfg=Black ctermbg=Yellow
hi Cursor       guifg=Black guibg=Yellow

"
" END Original ibmedit.vim script.
"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey      term=NONE  
	hi MoreMsg         term=NONE gui=NONE 
	hi ModeMsg         term=NONE cterm=NONE gui=NONE
	hi CursorLineNr    term=NONE gui=NONE 
	hi Question        gui=NONE 
	hi StatusLine      term=NONE gui=NONE  
	hi Title           term=NONE gui=NONE 
	hi VisualNOS       term=NONE cterm=NONE gui=underline
	hi DiffAdd         term=NONE  
	hi DiffChange      term=NONE  
	hi DiffDelete      term=NONE gui=NONE  
	hi DiffText        cterm=NONE gui=NONE 
	hi TabLineSel      term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm  term=reverse cterm=NONE gui=NONE  
	hi ToolbarButton   cterm=NONE gui=NONE  

	"
	" Status line.
	"
	
	hi StatusLineNC   guifg=Gray30
	hi StatusLineTerm ctermfg=DarkGray guifg=Black

	"
	" Messages.
	"

	hi WarningMsg gui=NONE guifg=DarkBlue guibg=Red

	"
	" Additional customizations.
	"
	
	hi Type       ctermfg=White guifg=White
	hi vimGroup   term=NONE cterm=NONE ctermfg=Gray ctermbg=DarkBlue
	hi vimGroup   gui=NONE guifg=#CCCCCC guibg=DarkBlue
	hi helpHeader term=NONE cterm=NONE ctermfg=White ctermbg=DarkBlue
	hi helpHeader gui=NONE guifg=White guibg=DarkBlue
	hi helpHyperTextJump term=NONE cterm=NONE ctermfg=Cyan ctermbg=DarkBlue
	hi helpHyperTextJump gui=NONE guifg=#99CCFF guibg=DarkBlue

endif
