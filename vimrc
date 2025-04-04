let mapleader = " "
syntax on
set number
set relativenumber
" Switch to absolute line numbers in insert mode, back to relative in normal mode
autocmd InsertEnter * set norelativenumber
autocmd InsertLeave,WinEnter * set relativenumber
" Show statusline at the bottom (current file, customizable)
set laststatus=2
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
" Enable searching as you type, rather than waiting till you press enter.
set incsearch
" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
" Disable audible bell.
set noerrorbells visualbell t_vb=
" Enable mouse support. Can sometimes be convenient.
set mouse+=a
" Set .md filetype  as markdown. By default, it is marked as 'modules' filetype.
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

" Enable fzf
set rtp+=/opt/homebrew/opt/fzf

"" REMAPS
" Open netrw
nnoremap <leader>e :Ex<CR>
imap jj <Esc>
" Move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Keep cursor position while joining lines
nnoremap J mzJ`z
" Center screen after half-page jumps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center search results
nnoremap n nzzzv
nnoremap N Nzzzv
" Explanation:
" - xnoremap       → Create a mapping that only applies in visual mode
" - <leader>p      → Trigger the mapping with <leader> + p
" - "_d            → Delete the selected text into the black hole register (_)
"                    (This prevents it from replacing the unnamed register)
" - P              → Paste the previously yanked text before the cursor
xnoremap <leader>p "_dP
" Copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
" Delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d
" Use Ctrl-c to escape insert mode
inoremap <C-c> <Esc>
" Disable Q
nnoremap Q <nop>

" Install vim-plug if not available
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add gruv theme with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

set background=dark
colorscheme gruvbox
