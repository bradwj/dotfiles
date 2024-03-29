" Plugins will be downloaded under the specified directory.
"
" Run the following command for the initial installation.
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'chr4/nginx.vim'
Plug 'chr4/sslsecure.vim'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'Rykka/riv.vim'
Plug 'Rykka/InstantRst'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'sillybun/vim-repl'
Plug 'frazrepo/vim-rainbow'

Plug 'morhetz/gruvbox'
Plug 'vim-autoformat/vim-autoformat'

"Plug 'plasticboy/vim-markdown'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" My own editor setting.
se ts=4
se shiftwidth=4
se expandtab
se nu

set number relativenumber
set nu rnu
colorscheme gruvbox
set background=dark

" Folding related.
"set foldlevelstart=20

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" mapping leader
let mapleader=","

" normal mode (n), no-recursive map (nnoremap),
" <cr> carriage-return i.e., enter
nnoremap <leader>t :REPLToggle<cr>
nnoremap <leader>s :REPLSendAll<cr>

se paste
