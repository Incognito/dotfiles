set nocompatible                                                               "Don't be compatible with vi
set langmenu=en_US.UTF-8
set t_ut=                                                                      "Disable background color erase (BCE) so that color schemes render properlu when inside 256-color tmux

" interface
set ttyfast                                                                    "Fast terminal connection
set mouse=a                                                                    "Use mouse everywhere

set noerrorbells visualbell t_vb=                                              "Replace audio bell by a visual bell

set wildmenu                                                                   "Command-line completion operates in an enhanced mode
set wildmode=list:longest

set showcmd                                                                    "Show (partial) command in the last line of the screen
set showmode                                                                   "If in Insert, Replace or Visual mode put a message on the last line
set scrolloff=8                                                                "Minimal number of screen lines to keep above and below the cursor
set sidescrolloff=8                                                            "The minimal number of screen columns to keep to the left and to the right of the cursor

set autoread                                                                   "When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again

let mapleader=','
let g:mapleader=','

""" save and restore view states
autocmd BufWritePost,BufLeave,WinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

"" Quick escape
inoremap jj <ESC>

"" cleanup tab, LF and trailing white space
nnoremap <leader>W :retab<CR>:%s/\s\+$//<CR>:let @/=''<CR>

""" quick split mouving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" backup
set backup                                                                     "Make a backup of the original file
set backupdir=~/.vim/backupdir
set noswapfile

"" undo history
set undofile
set undodir=~/.vim/undodir
set undolevels=1000                                                            "Maximum number of changes that can be undone
set undoreload=1000                                                            "Maximum number lines to save for undo on a buffer reload

set history=1000                                                               "Remember command-lines entered

"" file format
set fileformat=unix                                                            "Unix EOL
set fileencoding=UTF-8                                                         "Speak UTF-8
set encoding=UTF-8                                                             "Display UTF-8

"" char management
set list                                                                       "Display unprintable characters
set listchars=tab:▹·,trail:␠,nbsp:␣                                            "Highlight <Tab>, trailing spaces and nonbreakable space
set backspace=indent,eol,start                                                 "Allow backspacing everything in insert mode
set iskeyword+=_,@                                                             "None of these are word dividers

set showmatch                                                                  "Show matching brackets

"" indentation
set autoindent                                                                 "Copy indent from current line when starting a new line
set smartindent                                                                "Do smart autoindenting when starting a new line
set expandtab                                                                  "Use the appropriate number of spaces to insert a <Tab>
set tabstop=4                                                                  "Number of spaces that a <Tab> in the file counts for
set shiftwidth=4                                                               "Indent size
set softtabstop=4                                                              "Number of spaces that a <Tab> counts for while performing editing operations
set shiftround                                                                 "Round indent to multiple of 'shiftwidth'

""" exception
autocmd BufNewFile,BufRead Makefile setlocal noexpandtab

"" Where you are
set number                                                                     "Precede each line with its line number
set relativenumber                                                             "Show the line number relative to the line with the cursor in front of each line
set ruler                                                                      "Always show current position along the bottom
set cursorline                                                                 "Highlight the screen line of the cursor

"" Wrapping
set nowrap
set showbreak=↪                                                                "Add a sign before a wrapped line

"" search
set ignorecase                                                                 "Case insensitivity
set smartcase                                                                  "Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch                                                                  "While typing a search command, show where the pattern, as it was typed so far, matches
set hlsearch                                                                   "When there is a previous search pattern, highlight all its matches

"" clearing highlighted search
nnoremap <CR> :nohlsearch<cr>

"" Spell
set nospell                                                                    "Disabled spelling

"" local settings
try
  source ~/.vimrc.local
catch
endtry

"" Load Bundles
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim                                      "Load bundle manager
set runtimepath+=~/.vim/bundle/vimproc.vim                                     "Load bundle manager

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'unite.vim'
Plugin 'nerdtree'
Plugin 'nerdtree-git-plugin'
Plugin 'peaksea'
Plugin 'vim-jinja'
Plugin 'vim-airline'
Plugin 'syntastic'
Plugin 'css.vim'
Plugin 'vim-less'
Plugin 'vim-matchit'
Plugin 'surround'
Plugin 'vim-fugitive'
Plugin 'gitv'
Plugin 'vim-gutter'
Plugin 'phpcomplete'
Plugin 'vim-easy-align'
Plugin 'bclose.vim'
"https://github.com/Shougo/unite-outline.git

call vundle#end()

filetype plugin indent on

"" Syntax highlighting
syntax on

set background=dark

colorscheme peaksea

highlight clear SignColumn

"" Dev tools
source ~/.vim/ide.vimrc

"" Language specific settings
source ~/.vim/php.vimrc
source ~/.vim/js.vimrc
source ~/.vim/html.vimrc
""source ~/.vim/python.vimrc

""" rst
autocmd BufNewFile,BufRead *.rst setlocal textwidth=80  colorcolumn=80  spell spelllang=en
