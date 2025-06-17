syntax on

filetype on                   " try to detect filetypes
filetype plugin on
filetype plugin indent on     " enable loading indent file for filetype

set number                  " linenumbers are cool
set scrolloff=3             " scrolloff
set ruler                   " show cursor position

set ls=2                    " show line status at all time
set vb t_vb=                " no bell, no ringing

set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
