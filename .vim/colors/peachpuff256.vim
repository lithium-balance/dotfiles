" Vim color file
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-04-23
" URL: http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim

" This color scheme uses a peachpuff background (what you've expected when it's
" called peachpuff?).
"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

" First remove all existing highlighting.
"set background=light
set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "peachpuff256"

" General colors
set background=dark
if v:version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

" ### Normal should come first

" console-gui different
hi Normal				cterm=none		ctermfg=255		ctermbg=232 guifg=#ffffff	guibg=#121212
hi CursorLine		cterm=none		ctermbg=16		guibg=#050505
hi SpecialKey		cterm=none		ctermfg=245		ctermbg=233		guifg=#8a8a8a	guibg=#090909
hi Folded				cterm=none		ctermfg=110		ctermbg=233		guifg=#87afd7	guibg=#000000


hi Cursor				cterm=none		ctermfg=bg		ctermbg=fg	guibg=fg	guifg=bg
hi DiffAdd			cterm=none		ctermbg=235		guibg=#262626
hi DiffChange		cterm=none		ctermbg=235		guibg=#262626
hi DiffDelete		cterm=none		ctermfg=238		ctermbg=244		guifg=#444444	guibg=#808080
hi DiffText			cterm=bold		ctermfg=255		ctermbg=196		guifg=#ffffff
hi Directory		cterm=none		ctermfg=196
hi ErrorMsg			cterm=none		ctermfg=255		ctermbg=160		guifg=#ffffff
hi FoldColumn		cterm=none		ctermfg=110		ctermbg=16		guifg=#87afd7 guibg=#000000
hi IncSearch		cterm=reverse
"hi LineNr				cterm=none		ctermfg=229		ctermbg=16
"guifg=#ffff87	guibg=#000000
"hi LineNr				cterm=none		ctermfg=27		ctermbg=16
"guifg=#005fff	guibg=#000000
hi LineNr				cterm=none		ctermfg=239		ctermbg=16		guifg=#4e4e4e	guibg=#000000
hi ModeMsg			cterm=bold
hi MoreMsg			cterm=none		ctermfg=40
hi NonText			cterm=none		ctermfg=21
hi Question			cterm=none		ctermfg=40
hi Search				cterm=none		ctermfg=16		ctermbg=248		guifg=#000000	guibg=#a8a8a8
hi SignColumn		cterm=none		ctermbg=16		guibg=#000000
hi StatusLine		cterm=bold		ctermfg=255		ctermbg=19		guifg=#0000af	guibg=#ffffff
hi StatusLineNC	cterm=none		ctermfg=252		ctermbg=17		guifg=#00005f guibg=#d0d0d0
hi Title				cterm=none		ctermfg=33
hi VertSplit		cterm=none		ctermfg=254		ctermbg=16		guifg=#000000 guibg=#eeeeee
hi Visual				cterm=reverse	ctermbg=none								gui=reverse		guibg=#080808
hi VisualNOS		cterm=underline,bold
hi WarningMsg		cterm=none		ctermfg=255		guifg=#ffffff
hi WildMenu			cterm=none		ctermfg=16		ctermbg=11

if v:version >= 700
	hi MatchParen		cterm=none		ctermfg=190		ctermbg=20		guifg=#d7ff00	guibg=#0000d7

	" light
	"hi Pmenu				cterm=none	ctermfg=16		ctermbg=252
	"hi PmenuSel			cterm=none	ctermfg=255		ctermbg=21
	"hi PmenuSbar		cterm=none	ctermfg=240		ctermbg=240
  "hi PmenuThumb		cterm=none	ctermfg=255		ctermbg=255

	"dark
	hi Pmenu				cterm=none		ctermfg=255		ctermbg=235		guifg=#ffffff		guibg=#262626
	hi PmenuSel			cterm=none		ctermfg=255		ctermbg=21		guifg=#ffffff		guibg=#0000ff
	hi PmenuSbar		cterm=none		ctermfg=240		ctermbg=240		guibg=#444444
  hi PmenuThumb		cterm=none		ctermfg=255		ctermbg=255		guifg=#ffffff

	" No need for GUI colors
	hi SpellBad			cterm=none    ctermfg=16		ctermbg=196
	hi SpellCap			cterm=none    ctermfg=16		ctermbg=196
	hi SpellLocal		cterm=none    ctermfg=16		ctermbg=196
	hi SpellRare		cterm=none    ctermfg=16		ctermbg=196
	
	" No need for GUI colors
	"hi TabLine			cterm=none	ctermfg=252		ctermbg=17
	"hi TabLineSel		cterm=none	ctermfg=255		ctermbg=21
	"hi TabLineFill	cterm=none	ctermfg=17		ctermbg=17
	hi TabLine			cterm=none	ctermfg=233		ctermbg=110
	hi TabLineSel		cterm=none	ctermfg=110		ctermbg=233
	hi TabLineFill	cterm=none	ctermfg=233		ctermbg=110

endif

if v:version >= 703
	hi ColorColumn	cterm=none	ctermfg=250		ctermbg=234
endif

" ### syntax highlighting

hi Boolean			cterm=none		ctermfg=215		guifg=#ffaf5f
hi Character		cterm=none		ctermfg=184		guifg=#d7d700
hi Comment			cterm=none		ctermfg=248		gui=italic		guifg=#a8a8a8
hi Conditional	cterm=none		ctermfg=33		guifg=#0087ff
hi Constant			cterm=none		ctermfg=226		guifg=#ffff00
hi Define				cterm=bold		ctermfg=27		gui=bold			guifg=#005fff
hi Delimiter		cterm=none		ctermfg=196		guifg=#ff0000
hi Error				cterm=none		ctermfg=255		ctermbg=9			guifg=#ffffff
hi Exception		cterm=bold		ctermfg=226		gui=bold			guifg=#ffff00
hi Function			cterm=none		ctermfg=196		guifg=#ff0000
hi Identifier		cterm=none		ctermfg=40		gui=none			guifg=#00d700
hi Keyword			cterm=none		ctermfg=123		guifg=#87ffff
hi Number				cterm=none		ctermfg=209		guifg=#ff875f
hi Operator			cterm=none		ctermfg=226		guifg=#ffff00
hi PreProc			cterm=none		ctermfg=202		guifg=#ff5f00
hi Special			cterm=none		ctermfg=206		ctermbg=234		guifg=#ff5fd7 guibg=#1c1c1c
hi Statement		cterm=none		ctermfg=171		gui=none			guifg=#d75fff
"hi String				cterm=none		ctermfg=224		ctermbg=234
"guifg=#ffd7d7	guibg=#1c1c1c
hi String				cterm=none		ctermfg=180		ctermbg=234		guifg=#d7af87	guibg=#1c1c1c
hi Todo					cterm=none		ctermfg=16		ctermbg=226		guifg=#000000 guibg=#ffff00
hi Type					cterm=none		ctermfg=75		gui=none			guifg=#5fafff
hi Underlined		cterm=underline	ctermfg=39	gui=underline	guifg=#00afff

" ADDITIONNAL
hi Repeat		cterm=none		ctermfg=99				guifg=#875fff


