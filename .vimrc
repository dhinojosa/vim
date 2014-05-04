call pathogen#infect()
set nu
set nocompatible
syntax enable 
filetype indent on
filetype plugin indent on
set smartindent
set ic
set hls
set lbr

"uncomment to reenable solarized
"right now I prefer reliable
"colorsheme solarized
"set background=light
colorscheme reliable

set gfn=Source\ Code\ Pro\ 12
set shiftwidth=3
set matchpairs=<:>,{:},[:],(:)
set showmatch
set ignorecase
set smartcase
set incsearch
nmap <silent> <BS> :nohlsearch<CR>
set wildmode=list:longest,full
set autowrite
set updatecount=10
filetype plugin on
set ofu=syntaxcomplete#Complete
set exrc "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc file
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

"Make American English the preferred dictionary
set dictionary=/usr/share/dict/american-english

"Make the 81st column standout
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
