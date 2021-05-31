syntax on

colorscheme bruin

" tab size
set tabstop=2

" Turn off modelines
set modelines=0

" autoindentation
set autoindent

" insert space for tabs
set expandtab

" delete multiple spaces with one move
" set softtabstop=2

" highlight matching brackets
set showmatch

" enable mouse
set mouse=a

" wrap text
set wrap

" display 5 lines when scroll with mouse
set scrolloff=5

" encoding
set encoding=utf-8

" For plug-ins to load correctly
filetype plugin indent on

" Turn off modelines
set modelines=0

" Fix common backspace problems
set backspace=indent,eol,start

" Speed up scrolling
set ttyfast

" Status bar
set laststatus=2

" Format status line
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

" Display options
set showmode
set showcmd

" highlight matching pairs of brackets. Use '%' to jump between them
set matchpairs+=<:>

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Clipboard to copy and paste outside vim
set clipboard^=unnamed
set mouse=v

" autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" connect plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'davidhalter/jedi-vim'
call plug#end()


" NERDTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" ----------------------------------------
" Automatic installation of vim-plug, if it's not available
" ----------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

