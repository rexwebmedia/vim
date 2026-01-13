" Functionality
set nocompatible " disable compatibility with VI, which can cause unexpected issues
set encoding=utf-8 " support more characters
set backspace=indent,eol,start " fix backspace
set clipboard=unnamedplus " use system clipboard
set visualbell " blink cursor on error, instead of beeping
set confirm " instead of failing a command because of unsaved changes, ask for confirmation
set mouse=a " enable mouse usage (all modes)
set ttyfast " Speed up scrolling in Vim

set hidden " switch buffers without saving current file first
set noswapfile " prevents swap files from cluttering directories
set undofile
set undodir=~/.vim/undo// " persistent undo history across sessions

" User Interface
set number " add numbers to left side of line
" set relativenumber " useful for navigation with counts
set scrolloff=2 " display 5 lines above/below the cursor when scrolling
set laststatus=2 " status bar
set modelines=0 " turn off modelines
set showmode " show the current mode
set showcmd " show (partial) command in status line
set cursorline " higlight cursor line horizontally
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" set autowrite " automatically save before commands like :next and :make
set background=dark

" Text Editer
set showmatch " show matching brackets
set nowrap " warping lines (wrap/nowrap)
set autoindent " copy indent from current line when starting new line
set smartindent " even better autoindent (add indent after '{')
set textwidth=80 " text width for wrapping
set colorcolumn=+1 " column line after text width
set expandtab     " use space instead of tab
set softtabstop=2 " set tab to 2 spaces
set shiftwidth=2  " set shift to 2 spaces
set tabstop=2     " set number of spaces in tab
set noshiftround
set timeoutlen=1000

" display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Search
set incsearch " incremental search
set ignorecase " do case insensitive matching
set smartcase " do smart case matching
set hlsearch " highlights search results

filetype off " enable filetype detection
filetype plugin on " enable plugins and load plugin for the detected file type
filetype indent on " load an indent file for the detected filetype
filetype plugin indent on " enable file-type=specific plugins and indentation

" set background=iceberg
syntax on " enable syntax highlighting
syntax enable
colorscheme slate

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h12
  endif
endif  

" press jk to goto normal mode from insert and visual mode
inoremap jk <Esc>
vnoremap jk <Esc>

" move cursor to next line after end/start of line with arrow keys
set whichwrap+=<,>,[,]
" move cursor to next line after end/start of line with hjkl keys
set whichwrap+=h,l

" move lines up and down with Alt + j/k
" Normal mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" Visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" Insert mode
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" move lines up and down with Alt + up/down arrow key (if terminal supports)
" Normal mode
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
" Visual mode
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv
" Insert mode
inoremap <A-Up> <Esc>:m .-2<CR>==gi
inoremap <A-Down> <Esc>:m .+1<CR>==gi

" duplicate lines with Ctrl + d in Normal and Insert mode
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yypgi

" duplicate line/selection with Shirt + Alt + j/k
" Normal mode
nnoremap <S-A-j> yyp
nnoremap <S-A-k> yyP
" Insert mode
inoremap <S-A-j> <Esc>yypgi
inoremap <S-A-k> <Esc>yyPgi
" Visual mode
vnoremap <S-A-j> y'>p
vnoremap <S-A-k> y'<P

" duplicate line/selection with Shift + Alt + Up/Down arrow key
" Normal mode
nnoremap <S-A-Up> yyP
nnoremap <S-A-Down> yyp
" Insert mode
inoremap <S-A-Up> <Esc>yyPgi
inoremap <S-A-Down> <Esc>yypgi
" Visual Mode
vnoremap <S-A-Up> y'<P
vnoremap <S-A-Down> y'>p




