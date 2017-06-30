"
" $RCSfile: .vimrc,v $
" $Revision: 1.6 $
" $Date: 2009-08-06 09:11:12 $
"
" Please keep this in sync : etc/skel/.vimrc and sshkeys/allusers/.vimrc
"
set nocompatible
set showmatch
set tabstop=2
set expandtab
set shiftwidth=2
set noautoindent
set ignorecase
set smartcase
set shiftround
set nowrap
"
" Colo(u)red or not colo(u)red
" If you want color you should set this to true
"
let color = "true"
colorscheme torte

"
if has("syntax")
    if color == "true"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm

	" This will switch colors ON
	so ${VIMRUNTIME}/syntax/syntax.vim
  highlight Constant ctermfg=DarkRed
  highlight Identifier ctermfg=Black
  highlight Statement ctermfg=DarkBlue
  highlight Type ctermfg=Black
  highlight Comment ctermfg=DarkGreen
    else
	" this switches colors OFF
	syntax off
	set t_Co=0
    endif
endif

" keep those ultra-edit people happy with some keyboard mappings :

" Ctrl-Home and Ctrl-End = beginning/end of file
:map <Esc>[1;5H <Esc>:0<CR>
:map <Esc>[1;5F <Esc>G

" Home and End keys for line navigation
:map <Esc>[F <Esc>$
:map <Esc>[H <Esc>0

" ctrl-left and ctrl-right
:map <Esc>[1;5C <Esc>w
:map <Esc>[1;5D <Esc>b

" ~/.vimrc ends here


set background=dark
