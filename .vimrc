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

" Mouse funny business
set mouse=a

" For word wrap navigation
nmap j gj
nmap k gk

" Don't need to press shift
nnoremap ; :

" Split navigation
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

filetype on
filetype plugin indent on

set title
set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch
set ttyfast
set cursorline

nnoremap <F3> :NERDTreeToggle<CR>

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Auto-remove trailing whitespace on any lines for php, js, python files.
autocmd BufWritePre *.php,*.py,*.js :%s/\s\+$//e

" Tomorrow Night Theme
colorscheme Tomorrow-Night-Bright

" NERDTREE Toggle
nnoremap <F3> :NERDTreeToggle<CR>

" Map Ctrl-] to Esc
inoremap <C-]> <Esc>

" Use visual bell instead of audio
set visualbell

" Highlight trailing whitepsace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
