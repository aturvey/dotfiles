" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "aet_colorscheme_20131126"

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
highlight CursorLine                guibg=#000000 ctermbg=233  cterm=NONE

highlight Comment                   guifg=#00d7ff ctermfg=45   gui=italic
highlight Constant                  guifg=#6D9CBE ctermfg=73
highlight Define                    guifg=#CC7833 ctermfg=173
highlight Error                     guifg=#FFC66D ctermfg=221  guibg=#990000 ctermbg=88
highlight Function                  guifg=#87ff00 ctermfg=118  gui=NONE cterm=NONE
highlight Identifier                guifg=#6D9CBE ctermfg=73   gui=NONE cterm=NONE
highlight Include                   guifg=#d7ff87 ctermfg=192  gui=NONE cterm=NONE
"highlight PreCondit                 guifg=#CC7833 ctermfg=173  gui=NONE cterm=NONE
highlight Keyword                   guifg=#5fd75f ctermfg=77  cterm=NONE
highlight LineNr                    guifg=#585858 ctermfg=240  guibg=#1c1c1c ctermbg=234
"highlight Number                    guifg=#FFFFFF ctermfg=15
highlight PreProc                   guifg=#E6E1DC ctermfg=103
highlight Search                    guifg=NONE    ctermfg=NONE guibg=#262626 ctermbg=235 gui=italic cterm=underline
highlight Statement                 guifg=#9e9e9e ctermfg=247  gui=NONE cterm=NONE
highlight String                    guifg=#d7af5f ctermfg=179
highlight Title                     guifg=#FFFFFF ctermfg=15
highlight Type                      guifg=#FFFFFF ctermfg=15  gui=NONE cterm=NONE
highlight Visual                    guibg=#880000 ctermbg=88

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

