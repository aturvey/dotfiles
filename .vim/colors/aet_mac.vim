set background=dark
hi clear
 if exists("syntax_on")
   syntax reset
 endif

let g:colors_name = "aet_mac"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag
hi link Number                      Normal
hi link PreCondit                   Include
"hi link PreProc                     Include
"hi link Statement                   Normal
 
highlight VertSplit                 guifg=#303030 ctermfg=234  guibg=#8a8a8a ctermbg=245 gui=reverse cterm=reverse term=reverse
highlight StatusLine                guifg=#303030 ctermfg=234  guibg=#ffff00 ctermbg=226 gui=reverse cterm=reverse term=reverse
highlight StatusLineNC              guifg=#303030 ctermfg=234  guibg=#949494 ctermbg=246

highlight Normal                    guifg=#9e9e9e ctermfg=247  guibg=#000000 ctermbg=0
highlight Cursor                    guifg=#000000 ctermfg=0    guibg=#FFFFFF ctermbg=160
highlight CursorLine                guibg=#000000 ctermbg=235  cterm=NONE

highlight Comment                   guifg=#00d7ff ctermfg=45   gui=italic
highlight Constant                  guifg=#6D9CBE ctermfg=73
highlight Define                    guifg=#CC7833 ctermfg=173
highlight Error                     guifg=#FFC66D ctermfg=009  guibg=#990000 ctermbg=0 
highlight ErrorMsg                  guifg=#FFC66D ctermfg=009  guibg=#990000 ctermbg=0
highlight Function                  guifg=#87ff00 ctermfg=118  gui=NONE cterm=NONE
"highlight Identifier                guifg=#6D9CBE ctermfg=73   gui=NONE cterm=NONE
highlight Identifier                guifg=#6D9CBE ctermfg=255   gui=NONE cterm=NONE
highlight Include                   guifg=#d7ff87 ctermfg=192  gui=NONE cterm=NONE
"highlight PreCondit                 guifg=#CC7833 ctermfg=173  gui=NONE cterm=NONE
highlight Keyword                   guifg=#5fd75f ctermfg=77  cterm=NONE
highlight LineNr                    guifg=#585858 ctermfg=143  guibg=#1c1c1c ctermbg=234
"highlight Number                    guifg=#FFFFFF ctermfg=15
highlight PreProc                   guifg=#E6E1DC ctermfg=103
highlight Statement                 guifg=#9e9e9e ctermfg=247  gui=NONE cterm=NONE
highlight String                    guifg=#d7af5f ctermfg=179
highlight Title                     guifg=#FFFFFF ctermfg=15
highlight Type                      guifg=#FFFFFF ctermfg=15  gui=NONE cterm=NONE
highlight Visual                    guibg=#880000 ctermbg=88
" highlight Visual                    guibg=#880000 ctermfg=none ctermbg=237

highlight DiffAdd                   guifg=#E6E1DC ctermfg=7    guibg=#519F50 ctermbg=71
highlight DiffDelete                guifg=#E6E1DC ctermfg=7    guibg=#660000 ctermbg=52
highlight Special                   guifg=#d78700 ctermfg=172 

highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73   gui=NONE cterm=NONE
highlight rubyBlockParameter        guifg=#FFFFFF ctermfg=15
highlight rubyClass                 guifg=#FFFFFF ctermfg=15
highlight rubyConstant              guifg=#DA4939 ctermfg=167
highlight rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
highlight rubyInterpolation         guifg=#519F50 ctermfg=107
highlight rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
highlight rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
highlight rubyPseudoVariable        guifg=#FFC66D ctermfg=221
highlight rubyStringDelimiter       guifg=#A5C261 ctermfg=143

highlight xmlTag                    guifg=#E8BF6A ctermfg=179
highlight xmlTagName                guifg=#E8BF6A ctermfg=179
highlight xmlEndTag                 guifg=#E8BF6A ctermfg=179

highlight mailSubject               guifg=#A5C261 ctermfg=107
highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

highlight SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

"highlight TabLineFill               ctermfg=238   ctermbg=0
highlight TabLineFill               ctermfg=0   ctermbg=0
"highlight TabLine                   ctermfg=100   ctermbg=238
highlight TabLine                   ctermfg=100   ctermbg=0
"highlight TabLineSel                ctermfg=226   ctermbg=238 cterm=underline
highlight TabLineSel                ctermfg=226   ctermbg=0 cterm=underline
"highlight Title                     ctermfg=100   ctermbg=238 cterm=underline
highlight Title                     ctermfg=100   ctermbg=0 cterm=underline

" YELLOW completion mode
  " highlight Pmenu                     ctermfg=100 ctermbg=0
  " highlight PmenuSel                  ctermfg=226 ctermbg=0 cterm=bold
" FUSCIA completion mode
  " highlight Pmenu                     ctermfg=90 ctermbg=0
  " highlight PmenuSel                  ctermfg=207 ctermbg=0 cterm=bold
" ORANGE completion mode
  highlight Pmenu                     ctermfg=130 ctermbg=0
  highlight PmenuSel                  ctermfg=208 ctermbg=0 cterm=bold
" GREY completion mode
    " highlight Pmenu                     ctermfg=245 ctermbg=0
    " highlight PmenuSel                  ctermfg=255 ctermbg=0 cterm=bold


" YELLOW sneak 
  " highlight Sneak                     ctermfg=226 ctermbg=0 cterm=underline
" FUSCIA sneak 
  " highlight Sneak                     ctermfg=207 ctermbg=0 cterm=underline
" ORANGE sneak
  " highlight Sneak                     ctermfg=208 ctermbg=0 cterm=underline
" GREY sneak 
  " highlight Sneak                     guifg=NONE    ctermfg=NONE guibg=#262626 ctermbg=245 gui=italic cterm=underline
" RED sneak 
  highlight Sneak                      guifg=NONE    ctermfg=NONE guibg=#262626 ctermbg=88 gui=italic cterm=underline

" YELLOW search
  " highlight Search                    guifg=NONE    ctermfg=207 guibg=#262626 ctermbg=0 gui=italic cterm=underline
" FUSCIA search
  " highlight Search                    guifg=NONE    ctermfg=207 guibg=#262626 ctermbg=0 gui=italic cterm=underline
" ORANGE search
  " highlight Search                    guifg=NONE    ctermfg=208 guibg=#262626 ctermbg=0 gui=italic cterm=underline
" GREY search
  " highlight Search                    guifg=NONE    ctermfg=NONE guibg=#262626 ctermbg=245 gui=italic cterm=underline
" RED search
  highlight Search                    guifg=NONE    ctermfg=NONE guibg=#262626 ctermbg=88 gui=italic cterm=underline
