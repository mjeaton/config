execute pathogen#infect()
syntax on
set encoding=UTF8
set guifont=DroidSansMono\ Nerd\ Font:h11

:cd e:/dev

set nocompatible
let mapleader=","

map <leader>v :e $MYVIMRC<CR>
map <leader>s :so $MYVIMRC<CR>

set ai sw=4
map! ^O {^M}^[O^T

:noremap <space> za

autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set autochdir
set nobackup 
set autowrite
set shell=cmd.exe
set tags=./tags,tags
set ruler
set ic
set bs=2
set ts=4
set sw=4
set ai
set nowrap
set cmdheight=1
set laststatus=2
set tildeop
map Q gq
set guioptions-=T

set list
set listchars=tab:\|\ 

set incsearch
set vb
set noexpandtab

iab dtm  <C-R>=strftime("%a %b %d %Y %H:%M:%S")<CR>
iab lastmod  <C-R>="Last Modified: " . strftime("%a %b %d %Y %H:%M:%S")<CR>

colorscheme desert

set splitbelow
set hls
map <F1> :nohls<CR>

:au FocusLost * :set number
:au FocusGained * :set number 
autocmd InsertEnter * :set number
autocmd InsertLeave * :set number

iab cw Console.WriteLine);<esc>hi
iab YPATHFILE <C-R>=expand("%:p")<cr>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>mv :call RenameFile()<cr>

" ===================================================================
" ASCII tables - you may need them some day.  Save them to a file!
" ===================================================================
"
" 001005: In need of an ASII table?  Perl is your friend:
"         perl -e 'while($i++<256) { print chr($i); }'
"
" ASCII Table - | octal value - name/char |
"
" |000 nul|001 soh|002 stx|003 etx|004 eot|005 enq|006 ack|007 bel|
" |010 bs |011 ht |012 nl |013 vt |014 np |015 cr |016 so |017 si |
" |020 dle|021 dc1|022 dc2|023 dc3|024 dc4|025 nak|026 syn|027 etb|
" |030 can|031 em |032 sub|033 esc|034 fs |035 gs |036 rs |037 us |
" |040 sp |041  ! |042  " |043  # |044  $ |045  % |046  & |047  ' |
" |050  ( |051  ) |052  * |053  + |054  , |055  - |056  . |057  / |
" |060  0 |061  1 |062  2 |063  3 |064  4 |065  5 |066  6 |067  7 |
" |070  8 |071  9 |072  : |073  ; |074  < |075  = |076  > |077  ? |
" |100  @ |101  A |102  B |103  C |104  D |105  E |106  F |107  G |
" |110  H |111  I |112  J |113  K |114  L |115  M |116  N |117  O |
" |120  P |121  Q |122  R |123  S |124  T |125  U |126  V |127  W |
" |130  X |131  Y |132  Z |133  [ |134  \ |135  ] |136  ^ |137  _ |
" |140  ` |141  a |142  b |143  c |144  d |145  e |146  f |147  g |
" |150  h |151  i |152  j |153  k |154  l |155  m |156  n |157  o |
" |160  p |161  q |162  r |163  s |164  t |165  u |166  v |167  w |
" |170  x |171  y |172  z |173  { |174  | |175  } |176  ~ |177 del|
"
" ===================================================================
" ASCII Table - | decimal value - name/char |
"
" |000 nul|001 soh|002 stx|003 etx|004 eot|005 enq|006 ack|007 bel|
" |008 bs |009 ht |010 nl |011 vt |012 np |013 cr |014 so |015 si |
" |016 dle|017 dc1|018 dc2|019 dc3|020 dc4|021 nak|022 syn|023 etb|
" |024 can|025 em |026 sub|027 esc|028 fs |029 gs |030 rs |031 us |
" |032 sp |033  ! |034  " |035  # |036  $ |037  % |038  & |039  ' |
" |040  ( |041  ) |042  * |043  + |044  , |045  - |046  . |047  / |
" |048  0 |049  1 |050  2 |051  3 |052  4 |053  5 |054  6 |055  7 |
" |056  8 |057  9 |058  : |059  ; |060  < |061  = |062  > |063  ? |
" |064  @ |065  A |066  B |067  C |068  D |069  E |070  F |071  G |
" |072  H |073  I |074  J |075  K |076  L |077  M |078  N |079  O |
" |080  P |081  Q |082  R |083  S |084  T |085  U |086  V |087  W |
" |088  X |089  Y |090  Z |091  [ |092  \ |093  ] |094  ^ |095  _ |
" |096  ` |097  a |098  b |099  c |100  d |101  e |102  f |103  g |
" |104  h |105  i |106  j |107  k |108  l |109  m |110  n |111  o |
" |112  p |113  q |114  r |115  s |116  t |117  u |118  v |119  w |
" |120  x |121  y |122  z |123  { |124  | |125  } |126  ~ |127 del|
"
" ===================================================================
" ASCII Table - | hex value - name/char |
"
" | 00 nul| 01 soh| 02 stx| 03 etx| 04 eot| 05 enq| 06 ack| 07 bel|
" | 08 bs | 09 ht | 0a nl | 0b vt | 0c np | 0d cr | 0e so | 0f si |
" | 10 dle| 11 dc1| 12 dc2| 13 dc3| 14 dc4| 15 nak| 16 syn| 17 etb|
" | 18 can| 19 em | 1a sub| 1b esc| 1c fs | 1d gs | 1e rs | 1f us |
" | 20 sp | 21  ! | 22  " | 23  # | 24  $ | 25  % | 26  & | 27  ' |
" | 28  ( | 29  ) | 2a  * | 2b  + | 2c  , | 2d  - | 2e  . | 2f  / |
" | 30  0 | 31  1 | 32  2 | 33  3 | 34  4 | 35  5 | 36  6 | 37  7 |
" | 38  8 | 39  9 | 3a  : | 3b  ; | 3c  < | 3d  = | 3e  > | 3f  ? |
" | 40  @ | 41  A | 42  B | 43  C | 44  D | 45  E | 46  F | 47  G |
" | 48  H | 49  I | 4a  J | 4b  K | 4c  L | 4d  M | 4e  N | 4f  O |
" | 50  P | 51  Q | 52  R | 53  S | 54  T | 55  U | 56  V | 57  W |
" | 58  X | 59  Y | 5a  Z | 5b  [ | 5c  \ | 5d  ] | 5e  ^ | 5f  _ |
" | 60  ` | 61  a | 62  b | 63  c | 64  d | 65  e | 66  f | 67  g |
" | 68  h | 69  i | 6a  j | 6b  k | 6c  l | 6d  m | 6e  n | 6f  o |
" | 70  p | 71  q | 72  r | 73  s | 74  t | 75  u | 76  v | 77  w |
" | 78  x | 79  y | 7a  z | 7b  { | 7c  | | 7d  } | 7e  ~ | 7f del|
" ===================================================================
