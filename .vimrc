set nocompatible            
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tpope/vim-fugitive'
 Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'benmills/vimux'
Plugin 'scrooloose/nerdtree'
" Plugin 'andreshazard/vim-logreview'

call vundle#end()            

" Set working directory to current file directory
autocmd BufEnter * lcd %:p:h
syntax enable

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
" syntax on
set synmaxcol=2048

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
" set hlsearch

" This stops Vim from redrawing the screen during complex operations and results
" in much smoother looking plugins.
set lazyredraw

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

" Add git branch to statusline
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P


" INDENTATION OPTIONS
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=4 " insert mode tab and backspace use 2 spaces
set shiftwidth=4 " normal mode indentation commands use 2 spaces

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
set t_vb=

" Better command-line completion
set wildmenu
set wildmode=longest,list,full

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

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
autocmd InsertEnter * highlight  CursorLine ctermbg=236 ctermfg=None
autocmd InsertLeave * highlight CursorLine ctermbg=235 ctermfg=None

"nnoremap <C-Tab> :tabnext<CR>

" NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50

" used patched fonts for airline arrows/triangles
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_theme='luna'

" Prompt for a command to run
"map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
"map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
"map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
"map <Leader>vq :VimuxCloseRunner<CR>

" Open vimux pane
"map <Leader>vo :VimuxOpenPane<CR>

" Interrupt any command running in the runner pane
"map <Leader>vx :VimuxInterruptRunner<CR>
"
" Function to make tmux zoom its runner pane.
"function! VimuxZoomRunner()
"  call VimuxInspectRunner()
"  call system("tmux resize-pane -Z")
"endfunction

" Zoom the runner pane (use <bind-key> z to restore runner pane)
"map <Leader>vz :call VimuxZoomRunner()<CR>

set clipboard=unnamedplus
set background=dark

nnoremap gb :buffers<CR>:buffer<Space>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  
