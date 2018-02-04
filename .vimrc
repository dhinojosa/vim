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
autocmd BufEnter *.sbt colorscheme tesla
autocmd BufEnter *.java colorscheme navajo-night
autocmd BufEnter *.rb colorscheme aiseered
autocmd BufEnter *.py colorscheme khaki
autocmd BufEnter *.hs colorscheme hybrid-light
autocmd BufEnter *.c colorscheme cake
autocmd BufEnter *.cpp colorscheme saturn
autocmd BufEnter *.xml colorscheme gravity
autocmd BufEnter *.js colorscheme mayansmoke
autocmd BufEnter *.groovy colorscheme rakr-light
autocmd BufEnter *.sh colorscheme oceandeep
autocmd BufEnter activityinventory.txt colorscheme nova
autocmd BufEnter todotoday.txt colorscheme nova
autocmd BufEnter *outline.txt colorscheme nova
autocmd BufEnter *.txt colorscheme atom
autocmd BufEnter *.asc colorscheme nova
autocmd BufEnter *.elm colorscheme kalisi
autocmd BufEnter .vimrc colorscheme cthulhian
autocmd BufEnter .md colorscheme softbluev2


"What font to display
"set gfn=Inconsolata\ 16
"set gfn=Droid\ Sans\ Mono\ 16
"set gfn=Droid\ Sans\ Mono\ 11
set gfn=Source\ Code\ Pro:h16
"set gfn=Latin\ Modern\ Mono\ 16
"set gfn=Nimbus\ Mono\ L\ 16
"set gfn=Ubuntu\ Mono\ 16
"set gtn=Tlwg\ Mono\ 16
"set gfn=Cousine\ 16
"set gfn=Courier\ 16
"set gfn=Anonymous\ Pro\ 16
"set gfn=Free\ Mono\ 16
"set gfn=Oxygen\ Mono\ 16

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
set nowrap

"Show the ruler showing the columns, rows, and percentages
set ruler

"Set the spelling language
set spell spelllang=en_us

"Make American English the preferred dictionary
set dictionary=/usr/share/dict/american-english

"Make the 81st column standout
highlight ColorColumn ctermbg=147
call matchadd('ColorColumn', '\%81v', 100)

set shell=/bin/zsh

set tags=tags,./tags

let g:licenses_copyright_holders_name = 'Hinojosa, Daniel <dhinojosa@evolutionnext.com>'
let g:licenses_authors_name = 'Hinojosa, Daniel <dhinojosa@evolutionnext.com>'

"Common misspelled words
iabbrev adn and
iabbrev teh the
iabbrev waht what

"Make sure you have this per file type
ab asca [source, scala, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ajav [source, java, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab agro [source, groovy, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ash [source, sh, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ahas [source, haskell, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab axml [source, xml, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ajso [source, json, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab anon [source, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab asql [source, sql, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O

"Elm Abbreviations
ab elmmainsimple main : Program Never model msg<CR>main = beginnerProgram {model = model,<CR>view  = view,<CR>update=update}<CR>
ab elmupdatesimple update : msg -> model -> model<CR>
ab elmupdate update : msg -> model -> (model, Cmd msg)<CR>update mg mod = (mod, Cmd.none)
ab elmsub subscriptions : model -> Sub msg<CR>subscriptions model = (Sub.none)
ab elmview view : Model -> Html msg<CR>view model -> text("Hello World")
ab elminit init : (model, Cmd msg)<CR>init = (model, Cmd.none)
ab elmmain main : Program Never model msg<CR>main = Html.program {<CR>init = init,<CR>view = view,<CR>update = update,<CR>subscriptions = subscriptions<CR>}

"Java Abbreviations
ab psvm public static void main(String[] args) {<CR><CR>}
ab sout System.out.println(

