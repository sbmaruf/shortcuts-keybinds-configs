
" set nocompatible   " Don't know what it does

let mapleader = ","


" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable           " enable syntax processing
syntax on




" Spacing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tabstop
""The width of a hard tabstop measured in "spaces" -- effectively the (maximum) width of an actual tab character.

""shiftwidth
""The size of an "indent". It's also measured in spaces, so if your code base indents with tab characters then you want shiftwidth to equal the number of tab characters times tabstop. This is also used by things like the =, > and < commands.

""softtabstop
""Setting this to a non-zero value other than tabstop will make the tab key (in insert mode) insert a combination of spaces (and possibly tabs) to simulate tab stops at this width.

""expandtab
""Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters. This also affects the behavior of the retab command.

""smarttab
""Enabling this will make the tab key (in insert mode) insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line (i.e. the only preceding characters are whitespace).

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number              " show line numbers
set relativenumber      " show relative numbering
set showcmd
set cursorline
filetype indent on      " load filetype-specific indent files ~/.vim/indent
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch




" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable
nnoremap <space> za
"""""
" mkdir .vim/view
" after creating the fold use :mkview
" after opening the vim use :loadview
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* loadview
" zd deletes a fold
set foldlevelstart=10
set foldnestmax=10
set foldnestmax=10
set foldmethod=manual  "see the folding method by :set fdm



" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>



"Movement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
"nnoremap ^ <nop>
"nnoremap $ <nop>
nnoremap gV `[v`]

" toggle gundo
" nnoremap <leader>u :GundoToggle<CR>


let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
 endw

"set timeout ttimeoutlen=50

nnoremap th  :tabfirst<CR>
:map <Esc>[1;3C  :tabnext<CR>
:map! <Esc>[1;3C  :tabnext<CR>
:map <Esc>[1;3D  :tabprev<CR>
:map! <Esc>[1;3D  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>






"""""""""" Plugin

execute pathogen#infect()
colorscheme base16-solarized-dark
let base16colorspace=256  " Access colors present in 256 colorspace

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set showtabline=2
set t_Co=256

