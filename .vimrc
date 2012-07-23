filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
syntax enable
colorscheme slate

set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set autoindent
set smarttab
set expandtab
set bg=dark

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" increased colour scheme
set t_Co=256

" highlight trailing whitespaces
set list
set listchars=trail:·

" pathogen.vim
call pathogen#infect()

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
imap ;; <Esc>

" map leader comma to NERDTree
map <leader>, :NERDTreeToggle<cr>

" to make autiindent work
if has("autocmd")
  filetype indent on
endif

filetype plugin indent on

" binding bufferlist to a shortcut
map <C-j> :call BufferList()<CR>

" cntlp configurations
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_user_command = {
 \ 'types': {
     \ 1: ['.git/', 'cd %s && git ls-files'],
     \ 2: ['.hg/', 'hg --cwd %s locate -I .'],
     \ },
 \ 'fallback': 'find %s -type f'
 \ }

" powerline configuration
let g:Powerline_symbols='unicode'
