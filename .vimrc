" Set working directory to current file directory
autocmd BufEnter * lcd %:p:h

syntax enable

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

syntax off

" Enable syntax highlighting and settings for smoother scroll
" syntax on
" set ttyfast
" set lazyredraw
" set nocursorcolumn
" set nocursorline
" set norelativenumber
" set synmaxcol=200
" syntax sync minlines=256

" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set encoding=utf-8

set expandtab

" Searches do not wrap over file
" :set nowrapscan

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" This stops Vim from redrawing the screen during complex operations and results
" in much smoother looking plugins.
" set lazyredraw

" Always display the status line, even if only one window is displayed
set laststatus=2

" display unprintable characters
"set list

" Enable use of the mouse for all modes - helpful for resizing buffers
set mouse=a

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" show line numbers by default
" set relativenumber
set number

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" INDENTATION OPTIONS
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=2 " insert mode tab and backspace use 2 spaces
set shiftwidth=2 " normal mode indentation commands use 2 spaces

set shell=zsh

" Show partial commands in the last line of the screen
set showcmd

" case-sensitive search if any caps
" set smartcase

" spell check comments
" set spell

" if opening a file from :ls, :buffers, :files, etc. jump to open version
" of the file, if one exists
set switchbuf=useopen

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" set t_vb=

" Better command-line completion
set wildmenu
set wildmode=longest,list,full

" automatically rebalance windows on vim resize
" autocmd VimResized * :wincmd =

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

" no more pesky escape (for insert and visual mode)
imap kj <Esc>
imap kJ <Esc>
imap Kj <Esc>
imap KJ <Esc>

" reload files when they change on disk (e.g., git checkout)
set autoread

" green/red diffs
" highlight diffAdded guifg=#00bf00
" highlight diffRemoved guifg=#bf0000

" Current line customization
" high light current line in insert mode
" Enable CursorLine
set cursorline
" autocmd InsertEnter * highlight  CursorLine ctermbg=236 ctermfg=None
" autocmd InsertLeave * highlight CursorLine ctermbg=235 ctermfg=None

set clipboard=unnamedplus

set background=dark

nnoremap gb :buffers<CR>:buffer<Space>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  
