" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2019 Jul 14
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" An "all-in-green" Vim color scheme, without "bold" attribute
" in gui and color terminal.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="monogreen-nobold"

"""" Defaults

hi Normal           gui=NONE     guifg=#00CC00     guibg=Black
   \                cterm=NONE   ctermfg=DarkGreen ctermbg=Black
   \                term=NONE

hi NonText          gui=NONE     guifg=#00AA00     guibg=Black
   \                cterm=NONE   ctermfg=DarkGreen ctermbg=Black
   \                term=NONE

"""" UI elements

hi ColorColumn      gui=NONE                       guibg=#005500
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi Conceal          gui=NONE     guifg=#00FF00      guibg=#009900
   \                cterm=NONE   ctermfg=LightGreen ctermbg=DarkGreen
   \                term=reverse,bold

hi CursorColumn     gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi CursorLine       gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi CursorLineNr     gui=NONE     guifg=#00FF00      guibg=Black
   \                cterm=NONE   ctermfg=LightGreen ctermbg=Black
   \                term=bold

hi ErrorMsg         gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi FoldColumn       gui=NONE     guifg=Black       guibg=#008800
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi Folded           gui=NONE     guifg=Black       guibg=#008800
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi MatchParen       gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi ModeMsg          gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=reverse

hi MoreMsg          gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=reverse

hi PMenu            gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse,bold

hi PMenuSel         gui=NONE     guifg=Black       guibg=#009900
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi PMenuSBar        gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse

hi PMenuThumb       gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi Question         gui=NONE     guifg=#00FF00      guibg=Black
   \                cterm=NONE   ctermfg=LightGreen ctermbg=Black
   \                term=NONE

hi SignColumn       gui=NONE     guifg=Black       guibg=#009900
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi StatusLine       gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse,bold

hi StatusLineNC     gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi StatusLineTerm   gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse,bold
   
hi StatusLineTermNC gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi TabLine          gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse

hi TabLineSel       gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=LightGreen
   \                term=reverse,bold

hi TabLineFill      gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi Visual           gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi VisualNOS        gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi WarningMsg       gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi WildMenu         gui=NONE     guifg=Black       guibg=#009900
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

"""" Syntax

hi Comment          gui=NONE     guifg=#00AA00     guibg=Black
   \                cterm=NONE   ctermfg=DarkGreen ctermbg=Black
   \                term=NONE

hi Constant         gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Directory        gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Error            gui=NONE     guifg=Black       guibg=#00AA00
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi Identifier       gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi LineNr           gui=NONE     guifg=#00AA00     guibg=Black
   \                cterm=NONE   ctermfg=DarkGreen ctermbg=Black
   \                term=NONE

hi PreProc          gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Search           gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse,bold

hi Special          gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi SpecialKey       gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Statement        gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Title            gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=NONE   ctermfg=Green     ctermbg=Black
   \                term=NONE

hi Todo             gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse,bold

hi Type             gui=NONE     guifg=#00FF00     guibg=Black
   \                cterm=none   ctermfg=Green     ctermbg=Black
   \                term=bold

hi Underlined       gui=underline   guifg=#00CC00     guibg=Black
   \                cterm=underline ctermfg=DarkGreen ctermbg=Black
   \                term=underline

"""" Diff

hi DiffAdd          gui=NONE     guifg=Black       guibg=#00CC00
   \                cterm=NONE   ctermfg=Black     ctermbg=LightGreen
   \                term=reverse

hi DiffChange       gui=NONE     guifg=Black       guibg=#009900
   \                cterm=NONE   ctermfg=Black     ctermbg=Green
   \                term=reverse

hi DiffDelete       gui=NONE     guifg=Black       guibg=#006600
   \                cterm=NONE   ctermfg=Black     ctermbg=DarkGreen
   \                term=reverse

hi DiffText         gui=NONE     guifg=Black       guibg=#00FF00
   \                cterm=NONE   ctermfg=Black     ctermbg=LightGreen
   \                term=reverse,bold

"""" Spell checking

hi SpellBad         gui=undercurl guisp=#00CC00
   \                cterm=underline    ctermfg=LightGreen ctermbg=Black
   \                term=reverse

hi SpellCap         gui=undercurl guisp=#008800
   \                cterm=underline    ctermfg=Green      ctermbg=Black
   \                term=reverse

hi SpellRare        gui=undercurl guisp=#00AA00
   \                cterm=underline    ctermfg=LightGreen ctermbg=Black
   \                term=reverse

hi SpellLocal       gui=undercurl guisp=#00FF00
   \                cterm=underline    ctermfg=LightGreen ctermbg=Black
   \                term=reverse
