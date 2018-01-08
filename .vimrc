set number
set relativenumber
syntax enable

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


execute pathogen#infect()
syntax on
filetype plugin indent on


let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" air-line
 let g:airline_powerline_fonts = 1
"
 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif
"
"     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

"     " airline symbols
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''
"
"     "Airline Themes
"     "let g:airline_theme='dark'
"     "let g:airline_theme='badwolf'
"     "let g:airline_theme='ravenpower'
"     "let g:airline_theme='simple'
"     "let g:airline_theme='term'
"     "let g:airline_theme='ubaryd'
"     "let g:airline_theme='laederon'
"     let g:airline_theme='kolor'
 "    let g:airline_theme='molokai'
      let g:airline_theme='powerlineish'
"
 "     colorscheme wombat256
"     "colorscheme tango
"     "colorscheme railscasts
"     "colorscheme vividchalk
" colorscheme distinguished
"     "colorscheme monokai
 "   colorscheme molokai
"     colorscheme ir_black
"     "colorscheme neodark
"     "colorscheme kolor
"     "colorscheme gotham
"     "colorscheme jellybeans 
"     "volorscheme desertEx
"     "colorscheme skittles_berry
"     "colorscheme skittles_dark
"     "colorscheme codeblocks_dark
"
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
 endw

set timeout ttimeoutlen=50

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


