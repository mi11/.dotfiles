"Automate Plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
"Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Text Manipulation
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
"Text Manipulation
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Visuals
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}
"Aesthetics
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle'}
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle'}
call plug#end()


"General Settings
set nocompatible
set guicursor= 
set nomodeline
filetype plugin on
syntax on
set sb
set spr
set hidden
set lazyredraw
set updatetime=500
set number
set relativenumber
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,nbsp:␣
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=indent
set foldlevel=99
set conceallevel=2
set noshowmode
set mouse=a
let mapleader = ';'
let g:netrw_dirhistmax = 0

"NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"Aesthetics
let base16colorspace=256
colorscheme nord
let g:airline_theme='nord'

"Airline
let g:airline_symbols = {}
let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#whitespace#symbol= '!'

"FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"Coc
let g:coc_global_extensions = ['coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

"Keybindings
nnoremap <silent> <C-P> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'split',
  \ 'ctrl-h': 'vsplit'
  \}
nmap <silent> <A-1> :NERDTreeToggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-c> :Commands<CR>
nnoremap <silent> <leader>/ :BLines<CR>
nnoremap <silent> <leader>d :bp<bar>bd#<CR>
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>z :x<CR>
nnoremap <silent> <leader>x :xa<CR>
nnoremap <silent> <leader>q :qa<CR>
noremap <silent> <leader>y "+y
nnoremap <silent> <leader><leader> ;
