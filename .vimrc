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

"colorscheme solarized
"set background=light

"colorscheme reliable
colorscheme codeschool
"colorscheme zenburn
"colorscheme pyte
"colorscheme obsidian2
"colorscheme darktango
"colorscheme proton
"colorscheme codeburn

autocmd BufEnter *.clj colorscheme marklar
autocmd BufEnter *.scala colorscheme tesla
autocmd BufEnter *.java colorscheme lucius
autocmd BufEnter *.rb colorscheme aiseered
autocmd BufEnter *.py colorscheme khaki
autocmd BufEnter *.hs colorscheme hybrid-light
autocmd BufEnter *.c colorscheme cake
autocmd BufEnter *.cpp colorscheme saturn
autocmd BufEnter *.xml colorscheme gravity
autocmd BufEnter *.js colorscheme mayansmoke
autocmd BufEnter *.groovy colorscheme rakr-light
autocmd BufEnter *.sh colorscheme oceandeep

"What font to display
"set gfn=Inconsolata\ 14
"set gfn=Droid\ Sans\ Mono\ 14
set gfn=Droid\ Sans\ Mono\ 11
"set gfn=Source\ Code\ Pro\ 14
"set gfn=Latin\ Modern\ Mono\ 14
"set gfn=Nimbus\ Mono\ L\ 14
"set gfn=Ubuntu\ Mono\ 14
"set gtn=Tlwg\ Mono\ 14
"set gfn=Cousine\ 14
"set gfn=Courier\ 14
"set gfn=Anonymous\ Pro\ 14
"set gfn=Free\ Mono\ 14
"set gfn=Oxygen\ Mono\ 14

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

set shell=/bin/zsh -i
