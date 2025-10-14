" Enable syntax highlighting
syntax on

" Show the cursor position
set ruler

" Show "invisible" characters
set list listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Highlight all search matches
set hlsearch

" Highlight search while typing
set incsearch

" Map `w!!` to write the file as root
cmap w!! w !sudo tee > /dev/null %

" Get rid of E363
set maxmempattern=5000
