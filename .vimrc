syntax on
set number
set autoindent
set smarttab
set shiftround
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set hlsearch
set gdefault
set wildignore+=*.o,*.d,*.obj,*.pyc,*.git
set backspace=indent,eol,start

" set persistent undo history
set undofile
set undodir=~/.vim/undo
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Mouse funny business
set mouse=a

" For word wrap navigation
nmap j gj
nmap k gk

" Don't need to press shift
nnoremap ; :

" Set the leader key to space
let mapleader = " "

" Set leader space to clear out search highlight
nnoremap <leader><space> :noh<cr>
" Set leader w to get rid of trailing whitespace
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" Set leader n to open/close NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Set F5 to open/close Gundo
nnoremap <leader>g :GundoToggle<CR>

" Split navigation
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

filetype on
filetype plugin indent on

set title
set history=50    " keep 50 lines of command line history
set noruler
set showcmd       " display incomplete commands
set incsearch
set ttyfast
set cursorline

" hemisu Theme
set background=dark
colorscheme hemisu

" Set statusline colors
hi User1 cterm=bold ctermfg=16  ctermbg=149
hi User2 cterm=bold ctermfg=16  ctermbg=167
hi User3 cterm=bold ctermfg=16  ctermbg=116
hi User4 cterm=bold ctermfg=16  ctermbg=134
hi User5 cterm=bold ctermfg=231  ctermbg=238
" Set the status line
set statusline=
set statusline+=%1*\ %<%f\                                "path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}\     "Encoding
set statusline+=%4*\ %{fugitive#statusline()}\            "Git Status
set statusline+=%5*\ %m\                                  "Modified flag
set statusline+=%5*\ %=\ %l/%L\                           "Row number/total
set statusline+=%5*\ %03c\                                "Column number
set laststatus=2                                          "show the cursor position all the time

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Use visual bell instead of audio
set visualbell

" Highlight trailing whitepsace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" pathogen
call pathogen#infect()

" only enable syntastic for python for now
let g:syntastic_mode_map = { 'mode': 'passive',
                          \ 'active_filetypes': ['python']}
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
" Use flake8
let g:syntastic_check_on_open=1
let g:syntastic_python_checker="flake8"
let g:syntastic_python_flake8_args='--ignore=E501'

" set command-t max height
let g:CommandTMaxHeight=20
" remap the cancel button because of some weird issues
let g:CommandTCancelMap=['<Esc>', '<C-c>']
