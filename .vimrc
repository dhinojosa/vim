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
colorscheme solarized 
set gfn=Source\ Code\ Pro\ 12
set shiftwidth=3
set matchpairs=<:>
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
set background=light
