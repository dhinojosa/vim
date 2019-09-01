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
autocmd BufEnter activityinventory.txt colorscheme softblue
autocmd BufEnter todotoday.txt colorscheme softblue
autocmd BufEnter *outline.txt colorscheme softblue
autocmd BufEnter *.txt colorscheme Slate
autocmd BufEnter *.asc colorscheme aqua
autocmd BufEnter *.elm colorscheme kalisi
autocmd BufEnter .vimrc colorscheme cthulhian
autocmd BufEnter .md colorscheme softbluev2
autocmd BufEnter .cs colorscheme nefertiti

" What font to display
"set guifont=Inconsolata:h15
"set guifont=DroidSansMono:h15
"set guifont=SourceCodePro:h15
"set guifont=LatinModernMono:h15
"set guifont=NimbusMonoL:h15
"set guifont=UbuntuMono:h15
"set guifont=TlwgMono:h15
"set guifont=Cousine:h15
"set guifont=Courier:h15
"set guifont=AnonymousPro:h15
"set guifont=FreeMono:h15
"set guifont=OxygenMono:h15
set guifont=IBMPlexMono:h15

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

"how the ruler showing the columns, rows, and percentages
set ruler

"Set the spelling language
set spell spelllang=en_us

"Make American English the preferred dictionary
set dictionary=/usr/share/dict/american-english

"Make the 81st column standout
highlight ColorColumn ctermbg=147
call matchadd('ColorColumn', '\%81v', 100)

"Set shell
set shell=/bin/zsh

"Location of tags
set tags=tags,./tags

"Information for licenses used by license plugin
let g:licenses_copyright_holders_name = 'Hinojosa, Daniel <dhinojosa@evolutionnext.com>'
let g:licenses_authors_name = 'Hinojosa, Daniel <dhinojosa@evolutionnext.com>'

"Relative Line Number https://jeffkreeftmeijer.com/vim-number/

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Common misspelled words
iabbrev adn and
iabbrev teh the
iabbrev waht what

"Asciidoctor Code Blocks
ab asca [source, scala, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ajav [source, java, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab agro [source, groovy, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ash [source, sh, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ahas [source, haskell, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab axml [source, xml, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab ajso [source, json, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab anon [source, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab asql [source, sql, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O
ab apyt [source, python, subs="attributes,quotes,verbatim"]<CR>----<CR>----<esc>0<esc>O

"Asciidoctor Components
ab atab [cols=2*,options="header"]<CR>\|===<CR>\|Name of Column 1<CR>\|Name of Column 2<CR><CR>\|Cell in column 1, row 1<CR>\|Cell in column 2, row 1<CR><CR>\|Cell in column 1, row 2<CR>\|Cell in column 2, row 2<CR>\|===

"Elm Simple Abbreviations
ab elmsandbox main : Program () model msg<CR>main = sandbox {init = model<CR>                    ,view = model -> Html msg<CR>,update = msg -> model -> model<CR>}<CR>
ab elmelement main : Program flags model msg<CR>main = element { init : flags -> ( model, Cmd msg )<CR>           , view : model -> Html msg<CR>, update : msg -> model -> ( model, Cmd msg )<CR>, subscriptions : model -> Sub msg<CR>}<CR>
ab elmdocument main: Program flags model msg<CR>main = document { init : flags -> ( model, Cmd msg )<CR>           , view : model -> Document msg<CR>, update : msg -> model -> ( model, Cmd msg )<CR>, subscriptions : model -> Sub msg<CR>}<CR>

"Java Abbreviations
ab psvm public static void main(String[] args) {<CR>   <CR>}
ab sout System.out.println(
