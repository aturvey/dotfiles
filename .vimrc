version 6.0 

" execute pathogen#infect()
" call pathogen#helptags()

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
    Plugin 'tpope/vim-sleuth'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'benmills/vimux'
    Plugin 'tomtom/tcomment_vim'
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


" the colorscheme.vim files are supposed to go into ~/.vim/color
set t_Co=256
color aet_colorscheme
" highlight Normal ctermbg=Black
" highlight Normal guibg=black
 
set nowrap
set linebreak
set textwidth=0
set wrapmargin=0
set sidescroll=1
set scrolloff=2    " minimum of three lines above and below cursor

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search resultf
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

" scroll the viewport faster
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>

" gvim toolbar and scrollbar off
set guioptions-=T  " turn off the toolbar
set guioptions-=r  " turn off the right side scroll bar

" we prefer numbered lines
set number numberwidth=3

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
map <silent> <C-h> :call functions#WinMove('h')<cr>
map <silent> <C-j> :call functions#WinMove('j')<cr>
map <silent> <C-k> :call functions#WinMove('k')<cr>
map <silent> <C-l> :call functions#WinMove('l')<cr>
" " changes a vertical split to a horizontal split
" nnoremap <leader>w- <c-w>t<c-w>K 
" changes a horizontal split to a vertical split
" nnoremap <leader>w\ <c-w>t<c-w>H 
"nnoremap <leader>w| <c-w>t<c-w>H 
" nnoremap <leader>w/ <c-w>t<c-w>H 


set hidden

" map kk, jj, jk, and kj to <esc> to easily bail out of insert or visual mode 
inoremap jk <esc>
" vnoremap jk <esc> 
" inoremap kj <esc>
" vnoremap kj <esc>
" inoremap kk <esc>
" inoremap ll <esc>
" vnoremap kk <esc>
" inoremap jj <esc>
" vnoremap jj <esc>

" map <space> to toggle fold (not ready for this advanced stuff yet)
" nnoremap <space> za

" set mappings to move current line up or down in text
"nnoremap - ddp
"nnoremap _ ddkP

" mapping to uppercase an entire word
" nnoremap <c-u> mvviwU`v
" inoremap <c-u> <esc>mvviwU`va

" mapping to lowercase an entire word (except it doesn't work so well on single characters)
" nnoremap <c-u> mvviw~`v
" inoremap <c-u> <esc>mvviw~`va

" this is a mapping to edit and source (read) the .vimrc file
nnoremap <leader>ev :vsplit! $MYVIMRC<cr>
nnoremap <leader>ec :vsplit! ~/.vim/colors/aet_colorscheme_20170623.vim<cr>
nnoremap <leader>eg :vsplit! ~/.gitconfig<cr>
nnoremap <leader>et :vsplit! ~/.tmux.conf<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" maps to enclose in quotes, parens, brackets, etc  BAD IDEA BECAUSE THESE ARE USED
" nnoremap <leader>" bi"<esc>ea"<esc>
" nnoremap <leader>' bi'<esc>ea'<esc>
" nnoremap <leader>) bi(<esc>ea)<esc>
" nnoremap <leader>] bi[<esc>ea]<esc>
" nnoremap <leader>} bi{<esc>ea}<esc>
" nnoremap <leader>> bi<<esc>ea><esc>

" map H and L to beginning and end of line, better than 0 and $
nnoremap H 0
vnoremap H 0
" nnoremap <c-h> ^
" vnoremap <c-h> ^
nnoremap L $
vnoremap L $
"nnoremap <c-l> g_
" vnoremap <c-l> g_

" map these to help move around while in insert mode
" inoremap <c-j> <Down>
" inoremap <c-k> <Up>
" inoremap <c-h> <Left>
" inoremap <c-l> <Right>

" this lets me scroll the screen (not cursor) when in normal mode
" nnoremap <c-j> <c-e>
" nnoremap <c-k> <c-y>

" from Learning Vimscript: operate in next or last inner parens, braces, etc
onoremap in( :<c-u>normal!f(vi(<cr>
onoremap il( :<c-u>normal!F)vi(<cr>

" some macro mappings to emulate what I've been using in emacs previously
nnoremap <F6> qe
nnoremap <F7> q
nnoremap <F8> @e

" this makes the tab completion work more sensibly
set  wildmode=longest,list

" from Practical Vim: a mapping to quickly turn off search highlight and refresh the screen
" nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>
nnoremap <silent> <a-l> :<c-u>nohlsearch<cr><c-l>

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

" for Gundo plugin, see vimcast 
nnoremap <F5> :GundoToggle<CR>

set scroll=4

" ex command for toggling hex mode - define mapping if desired
command! -bar Hexmode call ToggleHex()

" toggle hex mode (see .vim/autoload/functions.vim)
nnoremap <c-x> :functions#Hexmode<CR>
inoremap <c-x> <esc>:functions#Hexmode<CR>
vnoremap <c-u> :<c-u>functions#Hexmode<CR>

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

" remap for NERDTree
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

nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>

nnoremap <c-b> <c-x>

