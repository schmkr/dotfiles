call pathogen#infect()
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=4

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" Set our colorscheme
" let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix

" Turn backup off, since most stuff is in version control anyway...
set nobackup
set nowb
set noswapfile

" open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.phtml :call DeleteTrailingWS()
