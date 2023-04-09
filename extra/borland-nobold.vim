" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 03
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "borland" color scheme, with "bold" attribute removed
" in GUI and terminal, but not in text console.
"
" Includes code from the original "borland" color scheme,
" created by Yegappan Lakshmanan.
"
" The original "borland" color scheme can be found under the following
" URLs:
"
" * https://www.vim.org/scripts/script.php?script_id=92
" * https://github.com/vim-scripts/borland.vim

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="borland-nobold"

"
" BEGIN Original borland.vim script.
"

hi Normal       term=NONE cterm=NONE ctermfg=Yellow ctermbg=DarkBlue
hi Normal       gui=NONE guifg=Yellow guibg=DarkBlue
hi NonText      term=NONE cterm=NONE ctermfg=White ctermbg=DarkBlue
hi NonText      gui=NONE guifg=White guibg=DarkBlue

hi Statement    term=NONE cterm=NONE ctermfg=White  ctermbg=DarkBlue
hi Statement    gui=NONE guifg=White guibg=DarkBlue
hi Special      term=NONE cterm=NONE ctermfg=Cyan ctermbg=DarkBlue
hi Special      gui=NONE guifg=Cyan guibg=DarkBlue
hi Constant     term=NONE cterm=NONE ctermfg=Magenta ctermbg=DarkBlue
hi Constant     gui=NONE guifg=Magenta guibg=DarkBlue
hi Comment      term=NONE cterm=NONE ctermfg=Gray ctermbg=DarkBlue
hi Comment      gui=NONE guifg=Gray guibg=DarkBlue
hi Preproc      term=NONE cterm=NONE ctermfg=Green ctermbg=DarkBlue
hi Preproc      gui=NONE guifg=Green guibg=DarkBlue
hi Type         term=NONE cterm=NONE ctermfg=White ctermbg=DarkBlue
hi Type         gui=NONE guifg=White guibg=DarkBlue
hi Identifier   term=NONE cterm=NONE ctermfg=White ctermbg=DarkBlue
hi Identifier   gui=NONE guifg=White guibg=DarkBlue

hi StatusLine   term=bold cterm=bold ctermfg=Black ctermbg=White
hi StatusLine   gui=bold guifg=Black guibg=White

hi StatusLineNC term=NONE cterm=NONE ctermfg=Black ctermbg=White
hi StatusLineNC gui=NONE guifg=Black guibg=White

hi Visual       term=NONE cterm=NONE ctermfg=Black ctermbg=DarkCyan
hi Visual       gui=NONE guifg=Black guibg=DarkCyan

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
" END Original borland.vim script.
"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi ModeMsg        term=NONE cterm=NONE gui=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       term=standout gui=NONE
	hi StatusLine     term=NONE cterm=NONE gui=NONE
	hi Title          term=NONE gui=NONE
	hi VisualNOS      term=NONE cterm=NONE gui=underline
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE gui=NONE
	hi DiffText       term=reverse cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi WarningMsg     gui=NONE guifg=DarkBlue guibg=Red

	"
	" Status line
	"

	hi StatusLine     ctermfg=DarkGray
	hi StatusLineNC   guifg=Gray30
	hi StatusLineTerm ctermfg=DarkGray guifg=Black

endif
