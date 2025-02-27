set tabstop=2
set softtabstop=2
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
