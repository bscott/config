
" highlight ruby operators like || and &&
let g:ruby_operators = 1
 
set incsearch
set t_Co=256

set autoindent
set sw=2

set expandtab
set nocompatible
set sm
syntax on

imap <D-i> 
map  

map // :nohl

map tn :tn
map tp :tp

map <D-1> :tabn 1
map <D-2> :tabn 2
map <D-3> :tabn 3
map <D-4> :tabn 4
map <D-5> :tabn 5
map <D-6> :tabn 6
map <D-7> :tabn 7
map <D-8> :tabn 8
map <D-9> :tabl

imap <D-1> :tabn 1i<Right>
imap <D-2> :tabn 2i<Right>
imap <D-3> :tabn 3i<Right>
imap <D-4> :tabn 4i<Right>
imap <D-5> :tabn 5i<Right>
imap <D-6> :tabn 6i<Right>
imap <D-7> :tabn 7i<Right>
imap <D-8> :tabn 8i<Right>
imap <D-9> :tabli<Right>

nmap <silent> ,b :FufBuffer<CR>
nmap <silent> ,f :FufFileWithCurrentBufferDir<CR>

" http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

runtime macros/matchit.vim

set hidden

set ignorecase
set smartcase
set scrolloff=6

" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" end http://items.sjbach.com/319/configuring-vim-right


autocmd!
autocmd BufRead,BufNewFile *.rjs     set filetype=ruby
autocmd BufRead,BufNewFile *.rxml    set filetype=ruby
autocmd BufRead,BufNewFile *.rsel    set filetype=ruby
autocmd BufWritePost /Users/ehrenmurdick/projects/daemons/* !/Users/ehrenmurdick/projects/daemons/sync &

set ruler
set rulerformat=%c\ %l\/%L


set wildmenu


set autoindent
set tabstop=2
set sw=2
set nowrap

set showtabline=2

set number

set backspace=2

set expandtab
set nocompatible
set sm

set guifont=Anonymous\ Pro:h17
map <D-0> :set guifont=Anonymous\ Pro:h17

syntax on


imap %% <%=%><Left><Left>


map <S-Left> I<BS><BS>
map <S-Right> I  



autocmd BufRead,BufNewFile *.rjs     set filetype=ruby
autocmd BufRead,BufNewFile *.rxml    set filetype=ruby

colors ir_black

hi Pmenu guibg=#744A49
hi Error guibg=#744A49


hi IncSearch guifg=#66418C guibg=#141321 gui=underline
hi Search guifg=#66418C guibg=#141321
hi CursorColumn guibg=#212128
hi CursorLine guibg=#212128

set suffixesadd=.rb
set suffixesadd=.css
set suffixesadd=.js
set includeexpr+=substitute(v:fname,'s$','','g')
" or you can add substitution pattern s/ies$/y/g, s/ves$/f/g like this:
" set includeexpr+=substitute(substitute(substitute(v:fname,'s$','','g'),'ie$','y','g'),'ve$','f','g')



" custom tab stuff
" tab navigation like safari
" idea adopted from: http://www.vim.org/tips/tip.php?tip_id=1221
"<apple-]>: Previous Tab
:nmap <D-[> :tabprevious<cr>
:map <D-[> :tabprevious<cr>
:imap <D-[> <ESC>:tabprevious<cr>i<Right>

"<apple-]>: Next Tab
:nmap <D-]> :tabnext<cr>
:map <D-]> :tabnext<cr>
:imap <D-]> <ESC>:tabnext<cr>i<Right>

"#<apple-t> : New Tab
:nmap <D-t> :tabnew<cr>
:imap <D-t> <ESC>:tabnew<cr>

" make backspace always work
set backspace=indent,eol,start

" make project list persist across restarts
set viminfo^=!

fun! FuckForLoopsErb()
  %s/for \(\w*\) in \(.*\)%>/\2.each do |\1| %>/
  %s/\s*.each/.each
endfun

fun! FuckForLoops()
  %s/for \(\w*\) in \(.*\)/\2.each do |\1|/
  %s/\s*.each/.each
endfun

fun! GotoDefaultWd()
  let foo = ''
  redir => foo
  silent ! cat $HOME/bin/config/current_project_path | tr -d '\n'
  redir END
  let bar = split(foo, "\n")
  execute 'cd ' . fnameescape(bar[1])
  e .
endfun

fun! Html2haml()
  %!html2haml -r
  write %:r.haml
  !rm %
  e %:r.haml
endfun

map <D-H> :call GotoDefaultWd()


set hls
hi Search guifg=#66418c
hi Search gui=NONE


filetype plugin on


inoremap # X#

set autoread
set gdefault

