"" Basic
set nocompatible
set wrap
set clipboard=unnamed
set mouse=v
set autoread

"" File Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set langmenu=zh_CN.UTF-8
set guifontset=wenquanyi,-*-16-*-*-*

"" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
language messages zh_CN.UTF-8
set showmatch
set mat=2
set noerrorbells
set novisualbell
set tm=500

"" Tab and Backspace
set sw=4
set tabstop=4
set smarttab
set expandtab
set shiftwidth=4
set cindent
set smartindent
set autoindent
set backspace=indent,eol,start  "" set backspace
set whichwrap+=<,>,h,l

"" Display
set number        "" show line number
set ruler         "" always show current position
set wildmenu      "" use wildmenu
set laststatus=2  "" fix statusline hidden/only appears in split windows.
colorscheme eclm_wombat

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
    set guioptions-=m
	set t_Co=256
	set guitablabel=%M\ %t
    set guifont=Inconsolata-dz\ for\ Powerline\ 14
end

set nobackup
set nowb
set noswapfile

let mapleader=","
let g:mapleader=","

"" Fast Reload Vim's configuration file.
map <leader>s :source ~/.vimrc<cr>
map <leader>e :e! ~/.vimrc<cr>

"" When Vim's configuration file was edited, reload it.
autocmd! bufwritepost vimrc source ~/.vimrc

syntax enable

filetype plugin indent on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'Chiel92/vim-autoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'nicklasos/vim-jsx-riot'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Bundle 'jistr/vim-nerdtree-tabs'

call vundle#end()

filetype plugin indent on

autocmd filetype *html* imap <c-_> <c-y>/
autocmd filetype *html* map <c-_> <c-y>/

map <C-n> :NERDTreeTabsToggle<CR>
" map <C-n> :NERDTreeToggle<CR>
" map <Leader>n <plug>NERDTreeTabsToggle<CR>
autocmd StdinReadPre * let s:std_in=1
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

noremap <F3> :Autoformat<CR>
nmap <c-v> "+gp nmap <c-c> "+y

let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

au BufNewFile,BufRead *.tag setlocal ft=javascript

"" Tabularize KeyBindings.
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
