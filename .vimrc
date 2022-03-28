filetype on
filetype plugin on
filetype indent on
colorscheme molokai

set nocompatible
set cursorline
set nocursorcolumn

set expandtab " Expand tab characters to space characters.
set shiftwidth=4 " One tab is now 4 spaces.
set shiftround " Always round up to the nearest tab.
set tabstop=4 " This one is also needed to achieve the desired effect.
set softtabstop=4 " Enables easy removal of an indentation level.
set autoindent " Automatically copy the previous indent level. Don't use smartindent!!!

set ignorecase " Search is not case sensitive, which is usually what we want.
set smartcase " Will override some ignorecase properties, when using caps it will do a special search.
set incsearch " Enables the user to step through each search 'hit', usually what is desired here.
set hlsearch " Will stop highlighting current search 'hits' when another search is performed.
set magic " Enables regular expressions. They are a bit like magic (not really though, DFA).

set nobackup
set nowrap
set undodir=~/.vim/backup
set undofile
set lazyredraw

set showmatch " Will highlight matching brackets.
set mat=2 " How long the highlight will last.
set number " Show line numbers on left side.
set relativenumber " Enables the user to easily see the relative distance between cursor and target line.
set ttyfast " Will send characters over a terminal connection faster. We do have fast connections after all.
" set ruler " Always show current cursor position, which might be needed for the character column location.
    " set hidden " Abandon buffer when closed, which is usually what we want to do in this case.

syntax on " The most important feature when coding. Vim please bless us with this option right now!.
set laststatus=2 " Always have a status line, this is required in order for Lightline to work correctly.
set noshowmode " Disables standard -INSERT-, -NORMAL-, etc... Lightline will provide a better looking one for us.
set t_Co=256 " This will 'force' terminals to use 256 colors, enabling Lightline and the colorscheme to look correct.
set background=dark " Cool programmers only use dark themes. It's good for your eyes man, really nice!
silent! colorscheme gruvbox " I love this theme. Big kudos to the developer of this theme.

" Show partial command you type in the last line of the screen.
set showcmd

" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS --------------------------

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'

call plug#end()

" MAPPINGS -------------------------
let mapleader = " "

inoremap jj <esc>
nnoremap \ :
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap n nzz
nnoremap N Nzz
nmap Y y$

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <CR>
nnoremap <leader>ps  :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
noremap <leader>, :silent! :nohlsearch<CR>

" Shortcut Ag searching.
noremap <leader>f :Ack!
" Shortcut for Tabulate.
noremap <leader>a :Tab /
" copy to system clipboard
vnoremap <leader>y :w !xclip -i -sel c<CR><CR>
" paste from system clipboard
vnoremap <leader>p :w !xclip -o -sel c<CR><CR>


" VIMSCRIPT ---------------------

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" STATUS LINE -----------------

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Show the status on the second to last line.
set laststatus=2


