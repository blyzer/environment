colorscheme slate
set nu 
set sts=2
set nuw=3
set laststatus=2 
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
"hi Comment guifg=#cec8b1
"hi CursorLine  term=underline  guibg=#555555  cterm=underline

"///////////////////////////////////
"GVIM-ONLY SETTINGS
"///////////////////////////////////
if has("gui_running") 
  set transparency=5
  set cul "column highlighting 
  syntax on
  color mycolors "see ~/.vim/colors/mycolors.vim
endif
