" Ensure we are not in vi-compatible mode
set nocompatible

filetype plugin indent on " attempt to determine file type
syntax on                 " enable syntax highlighting

"------------------ Plugin Management -----------------
" Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Color scheme plugins
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

" Appearance/layout plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
  set laststatus=2                             " Always show statusbar
  let g:airline_powerline_fonts = 1            " Fancy arrow symbols, requires a patched font
  let g:airline_detect_paste=1                 " Show PASTE if in paste mode
  let g:airline#extensions#tabline#enabled = 1 " Show airline for tabs too
  let g:airline_theme='gruvbox'                " Use theme for the Airline status bar

" Language support plugins
Plug 'jez/vim-better-sml'                 " Better SML support (for 15-150)
  au Filetype sml setlocal conceallevel=2
Plug 'jez/vim-c0'                         " C0 syntax highlighting support (for 15-122)
Plug 'vim-pandoc/vim-pandoc'              " Better Markdown support
Plug 'vim-pandoc/vim-pandoc-syntax'       " Better Markdown support vol. 2

" Functionality/Convenience plugins
Plug 'tpope/vim-commentary'            " Easily comment/uncomment things
Plug 'vim-syntastic/syntastic'         " Syntax checking right in Vim
  hi clear SignColumn
  let g:syntastic_error_symbol = '✘'
  let g:syntastic_warning_symbol = '▲'
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
Plug 'ConradIrwin/vim-bracketed-paste' " Pasting won't mess up formatting anymore
Plug 'airblade/vim-gitgutter'          " Shows Git info in the sidebar
Plug 'scrooloose/nerdtree'             " A file browser in Vim
  " Hit ctrl+n to open NERDTree
  inoremap <C-n> <esc>:NERDTreeToggle<CR>
  nnoremap <C-n> :NERDTreeToggle<CR>

call plug#end()

"------------------ End Plugin Management -----------------

" This lets us use 24-bit "true" colors in the terminal
if exists('+termguicolors')
  set termguicolors
endif

" IMPORTANT: UNCOMMENT THIS FOR COLORSCHEMES
" Colors (must be set after vim-plug loads themes)
colorscheme gruvbox
set background=dark

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set encoding=utf-8
set number                     " line numbers
set cursorline
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set splitright                 " Vertical splits use right half  of screen
set splitbelow                 " Horizontal splits use bottom half  of screen
set colorcolumn=81             " show a column whenever textwidth is set
set hidden                     " buffer becomes hidden when it is abandoned
set wildmenu                   " visual autocomplete for command menu
set wildmode=full              " complete first match immediately
set lazyredraw                 " only redraw when necessary
set ttyfast                    " always assume a fast terminal
set showmatch                  " show matching brackets
if exists('&breakindent')
  set breakindent              " Indent wrapped lines up to the same level
endif

" Enable mouse!
set mouse=a

" Common keyboard shortcuts
noremap <C-f> /
inoremap <C-a> <esc>ggVG
nnoremap <C-a> ggVG

" Easier way to save
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<CR>

" Make these commonly mistyped commands still work
command! -bang WQ wq<bang>
command! -bang Wq wq<bang>
command! -bang Wqa wqa<bang>
command! -bang W w<bang>
command! -bang Q q<bang>
command! -bang Qa qa<bang>

" If you prefer spaces to tabs
set tabstop=2     " number of visual spaces per tab
set softtabstop=2 " number of spaces per tab when editing
set shiftwidth=0  " number of spaces for each step of autoindent
set expandtab     " tabs are spaces
set shiftround    " round to multiple of shiftwidth when adjusting indentation
set autoindent    " auto indent on a new line
set smartindent

" Better searching
set incsearch  " search as characters are entered
set hlsearch   " highlight matches
set ignorecase " ignore case when searching lowercase
set smartcase  " don't ignore case when inserting uppercase characters

" Better line number highlighting
highlight clear LineNr
highlight clear SignColumn

" Undo history persists across Vim sessions
set undofile
set undodir=~/.vim/undodir

"
set clipboard^=unnamed,unnamedplus

" ------------------------ Sanity settings ---------------------
" You can safely ignore everything below this line if you wish

if has("autocmd")
  " Jump to the last known cursor position when opening a file.
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

  " Automatically remove trailing whitespace
  au BufWritePre * :%s/\s\+$//e

  " Automatically close loclist when no files open
  au WinEnter * if &buftype ==# 'quickfix' && winnr('$') == 1 | quit | endif
endif

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

