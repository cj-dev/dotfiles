" Thanks to...
" http://vim.wikia.com/wiki/Vim_on_Freenode

set nocompatible

" This jacks up my tab settings :(
" filetype plugin on

syntax on

set hidden
set confirm

" Auto comp
set wildmenu
set wildmode=longest,list,full

" Command window
set showcmd
set cmdheight=2
set laststatus=2

" Search
set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start

set nostartofline

" Info
set ruler
set number

" Plz no bells plz...
set visualbell
set t_vb=

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F12>
" Capital Yank to end of line
map Y y$

" Redraw also clears search highlighting
nnoremap <C-L> :nohl<CR><C-L>

inoremap <C-CR> <Esc>
map <Tab> <C-W>w

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab
filetype indent on

" Fold binds
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Get prettier
set t_Co=256
colorscheme sickburn

" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
