" https://stackoverflow.com/a/1878983/29448781
set tabstop=8
set softtabstop=0 noexpandtab
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set nowrap
set cursorline
set number
set list
set listchars=tab:>-,space:.
set relativenumber

set textwidth=0
set wrapmargin=0
set wrap
set linebreak

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
