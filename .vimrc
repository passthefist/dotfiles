call pathogen#infect()

set shiftwidth=2                  " spaces per tab (when shifting)
set shiftround                    " always indent by multiple of shiftwidth
set tabstop=2                     " spaces per tab
set expandtab                     " always use spaces instead of tabs
set backspace=indent,eol,start
set hidden

autocmd FileType ruby set smartindent
autocmd FileType eruby set smartindent
autocmd FileType js set smartindent
autocmd FileType html set smartindent

syntax on
filetype on

au BufNewFile,BufRead *.html.erb set filetype=eruby
au BufNewFile,BufRead *.js.erb set filetype=html
au BufNewFile,BufRead *.ejs set filetype=html

filetype indent plugin on

set ruler       " Show the column number in the status bar
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" switch tabs
map = gt<CR>
map - gT<CR>

" quick edit mode escape
imap jj <Esc>

" incremental search + highlight
set incsearch
set hlsearch

" Command-T
let g:CommandTMatchWindowReverse   = 1
let g:CommandTMaxHeight            = 10
let g:CommandTMaxFiles             = 30000
let g:CommandTMaxCachedDirectories = 10
let g:CommandTScanDotDirectories   = 1
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:CommandTAcceptSelectionMap = '<C-t>'

map <leader>f :CommandTFlush<CR>
map <leader>j :CommandTJump<CR>
if &term =~ "xterm"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
