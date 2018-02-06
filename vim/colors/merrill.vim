set background=light
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="merrill"
hi Normal guifg=#2e2e2e guibg=NONE
hi Comment guifg=#919191 guibg=NONE
hi Constant guifg=#ff00ff guibg=NONE
hi String guifg=#00a300 guibg=NONE
hi Identifier guifg=#ff0000 guibg=NONE
hi Statement guifg=#0000ff guibg=NONE
hi PreProc guifg=#ff0000 guibg=NONE
hi Type guifg=#0000ff guibg=NONE
hi Function guifg=#ff00ff guibg=NONE
hi Repeat guifg=#0000ff guibg=NONE
hi Operator guifg=#0000ff guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guifg=#ffffff guibg=#919191
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
