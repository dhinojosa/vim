call pathogen#infect()
set nu
set nocompatible
syntax enable
" filetype indent on
filetype plugin indent on
set smartindent
set ic
set hls
set lbr

 
" uncomment to reenable solarized
" right now I prefer reliable

colorscheme solarized
set background=light

"colorscheme reliable
"colorscheme codeschool
"colorscheme zenburn
"colorscheme pyte
"colorscheme obsidian2
"colorscheme darktango
"colorscheme proton
"colorscheme codeburn

"What font to display
"set gfn=Inconsolata\ 10
set gfn=Droid\ Sans\ Mono\ 10
" set gfn=Source\ Code\ Pro\ 10
" set gfn=Latin\ Modern\ Mono\ 10
" set gfn=Nimbus\ Mono\ L\ 10
" set gfn=Ubuntu\ Mono\ 10
" set gtn=Tlwg\ Mono\ 10
" set gtn=Cousine\ 10
" set gtn=Courier\ 10
" set gtn=Anonymous\ Pro\ 10
" set gtn=Free\ Mono\ 10

" How to handle tabs and widths
set expandtab
set tabstop=3
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
set ofu=syntaxcomplete#Complete
set exrc "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc file
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

"Set the spelling language
set spell spelllang=en_us

"Make American English the preferred dictionary
set dictionary=/usr/share/dict/american-english

"Make the 81st column standout
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
