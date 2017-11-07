version 6.0

" set up plugins using Vundle
" get help with :h vundle
"   :PluginList
"   :PluginInstall
"   :PluginUpdate
"   :PluginSearch
"   :PluginClean
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'     " this is required
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tacahiroy/ctrlp-funky'
    Plugin 'scrooloose/nerdtree'
    Plugin 'benmills/vimux'
    Plugin 'tomtom/tcomment_vim'
    Plugin 'justinmk/vim-sneak'
    Plugin 'sjl/gundo.vim'
    Plugin 'sirver/ultisnips'
    Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save

set background=dark
set backspace=indent,eol,start
set fileencodings=utf-8,default,latin1

" this sets timeout between keys for mappings and keycodes
:set timeout timeoutlen=1200 ttimeoutlen=100

" set an improved status line
set statusline=%<%F%h%m%r%=%l,%02c\ \ 0x%02B\ \ %P

" The mapping leader key
let mapleader=","
noremap \ ,
" let maplocalleader="\\"

" Note, you can find out the following guifont string by :set guifont?
set guifont=MiscFixed\ 14
"set guioptions=aegimLt


set helplang=en
set history=50
set modeline
set mouse=a
set printoptions=paper:letter
set ruler

" set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
" set runtimepath=~/.vim,~/.vim/after
" set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set window=33
" vim: set ft=vim :

set laststatus=2

" need to let vim get xterm escape sequences for page and arrow
" keys when running under tmux or gnu screen. echo $TERM to see
" what terminal we're working in... depends on bash or tmux
if &term =~ '^screen'
  " page keys
  " see http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
  execute "set t_kP=\e[5;*~"
  execute "set t_kN=\e[6;*~"
  " arrow keys
  " see http://unix.stackexchange.com/a/34723
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif


" the colorscheme.vim files are supposed to go into ~/.vim/colors
set t_Co=256
if has("macunix")
    color aet_mac
else
    color aet_dell
    " color aet_eizo
endif

set nowrap
set linebreak
set textwidth=0
set wrapmargin=0
set sidescroll=1
set scrolloff=2    " minimum of three lines above and below cursor

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set nohlsearch              " highlight search resultf
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros
" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" set up tab behavior
set tabstop=8      " keep a standard hard tab
set softtabstop=4  " but our expandtab will use 4 spaces
set shiftwidth=4   " and shifting will also be 4 spaces
set shiftround     " this makes < and > round to nearest shiftwidth
set expandtab      " insert 'softtabstop' spaces for a tab

" switch between current and last buffer
nmap <leader>. <c-^>

" scroll the viewport and cursor
set scroll=3
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


" gvim toolbar and scrollbar off
set guioptions-=T  " turn off the toolbar
set guioptions-=r  " turn off the right side scroll bar

" we prefer numbered lines
set number relativenumber numberwidth=3

" map Y to y$ (yank to end of line)
map Y y$

" let cursor movements wrap around beginning and end of line
set whichwrap=b,s,<,>,[,]

" enable incremental search and map <CTRL>/ so that it clears the last highlight result
set incsearch

" set up some special character display handling for tab and long unwrapped lines
set listchars=precedes:<,tab:>-
set list


" some helper maps for split screen control
" horizontal window size increase
nnoremap + +
" horizontal window size decrease
nnoremap _ -
" vertical window size increase
nnoremap = >
" vertical window size decrease
nnoremap - <
" nnoremap <leader>wc <c-w>c
" nnoremap <leader>wo <c-w>o
" nnoremap <leader>wx <c-w>x
" nnoremap <leader>wp <c-w>p
" nnoremap <leader>ws <c-w>s
" nnoremap <leader>wv <c-w>v
" nnoremap <leader>wT <c-w>T
" ctrl-key to move between splits
" map <silent> <C-h> :call functions#WinMove('h')<cr>
" map <silent> <C-j> :call functions#WinMove('j')<cr>
" map <silent> <C-k> :call functions#WinMove('k')<cr>
" map <silent> <C-l> :call functions#WinMove('l')<cr>
" alt arrow keys to move between splits
" map <silent> ˙ :call functions#WinMove('h')<cr>
" map <silent> ∆ :call functions#WinMove('j')<cr>
" map <silent> ˚ :call functions#WinMove('k')<cr>
" map <silent> ¬ :call functions#WinMove('l')<cr>
" " changes a vertical split to a horizontal split
" nnoremap <leader>w- <c-w>t<c-w>K
" changes a horizontal split to a vertical split
" nnoremap <leader>w\ <c-w>t<c-w>H
"nnoremap <leader>w| <c-w>t<c-w>H
" nnoremap <leader>w/ <c-w>t<c-w>H

" maps for moving between splits using vim-tmux-navigator plugin
" see chris toomey github vim plugin vim-tmux-navigator (and corresponding maps in .tmux.conf)
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" disable navigation when pane is zoomed 
let g:tmux_navigator_disable_when_zoomed = 1

set hidden

" map jk to <esc> to easily bail out of insert or visual mode
inoremap jk <esc>

" this is a mapping to edit and source (read) the .vimrc file
nnoremap <leader>ev :vsplit! $MYVIMRC<cr>
nnoremap <leader>ec :execute "vsplit! ~/.vim/colors/" . fnameescape(g:colors_name) . ".vim"<cr>
nnoremap <leader>eg :vsplit! ~/.gitconfig<cr>
nnoremap <leader>et :vsplit! ~/.tmux.conf<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" this lets me scroll the screen (not cursor) when in normal mode
" nnoremap <c-j> <c-e>
" nnoremap <c-k> <c-y>

" from Learning Vimscript: operate in next or last inner parens, braces, etc
onoremap in( :<c-u>normal!f(vi(<cr>
onoremap il( :<c-u>normal!F)vi(<cr>

" this makes the tab completion work more sensibly
set  wildmode=longest,list

" from Practical Vim: search for visual selected text
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

" from Practical Vim: moves through buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> ]B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" from Practical Vim: (pg 95) Expand Active File Directory (also see vimcast episode 14)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h').'/' : '%%'
" map <leader>ew :e <C-R>=expand("%:p:h")."/"<CR>
" map <leader>es :sp <C-R>=expand("%:p:h")."/"<CR>
" map <leader>ev :vsp <C-R>=expand("%:p:h")."/"<CR>
" map <leader>et :tabe <C-R>=expand("%:p:h")."/"<CR>


" from a website I found, does a dialog when :w, :q, :only, etc
set confirm

" ex command for toggling hex mode - define mapping if desired
command! -bar Hexmode call ToggleHex()

" toggle hex mode (see .vim/autoload/functions.vim)
nnoremap <c-x> :functions#Hexmode<CR>
" inoremap <c-x> <esc>:functions#Hexmode<CR>
" vnoremap <c-u> :<c-u>functions#Hexmode<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 85

" some tab navigation mappings, from https://goo.gl/e2Stn3
" note: these are not working on macbook
   nnoremap <C-Left> :tabprevious<CR>
   nnoremap <C-Right> :tabnext<CR>
   nnoremap <silent> <C-Up> :execute 'silent! tabmove +1'<CR>
   nnoremap <silent> <C-Down> :execute 'silent! tabmove -1'<CR>

" change pwd to that of currently edited file, and print where we ended up
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" remap for T-Comment, not sure why the norecursive map doesn't work here
nmap <leader>t <c-_><c-_>
vmap <leader>t <c-_><c-_>

" toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" this is a way to highlight the line with present cursor position
set nocursorline
nnoremap <leader>l :set cursorline!<CR>

" turn on some auto indent features for c programming
syntax on
set autoindent
set cindent
inoremap {<CR>  {<CR><BS>}<Esc>O


" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1


" vimux mappings -- only works when in tmux session
nnoremap <leader>vv :VimuxRunCommand(" clear ; gcc -Wall -g -std=c99 -o test test.c ")<cr>
nnoremap <leader>vg :VimuxRunCommand(" clear ; gcc -Wall -g -std=c99 -o test test.c ")<cr>
nnoremap <leader>vt :VimuxRunCommand(" clear ; ctags *.c *.h")<cr>
nnoremap <leader>vr :VimuxRunLastCommand<cr>
nnoremap <leader>vc :VimuxPromptCommand<cr>
nnoremap <leader>vx :VimuxCloseRunner<cr>
nnoremap <leader>vz :VimuxZoomRunner<cr>

" send yank go to mac os x clipboard
" this requires requires the +clipboard compile time option in vim (use --version)
set clipboard=unnamed

" easier save and quite (but maybe easy quit is not such a good idea)
" nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>

" remap ctrl-b to decrement under cursor
nnoremap <c-b> <c-x>

" ctrlP configuration
nnoremap <leader>fu :CtrlPFunky<cr>
nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<cr>

" show or trim trailing white space
nnoremap <silent> <F9> :/\s\+$<CR>
nnoremap <silent> <F10> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" add gundo binding
" nnoremap <F5> :GundoToggle<cr>

" sneak bindings
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" let g:sneak#label = 1

" some ultisnip configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsEditSplit="<vertical>"
let g:UltiSnipsSnippetsDir="/Users/aturvey/.vim/UltiSnips"
" let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/UltiSnips'

" just disable this way of entering command window
nnoremap q: :

" experiment with syntax off during diff mode
"au BufEnter,BufNew * if &diff | syntax off | else | syntax on | endif
