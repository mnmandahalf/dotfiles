set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

" 入力系
noremap <Space><CR> o<ESC>

" 見た目系
syntax enable
set number
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
nnoremap <silent><C-e> :NERDTreeToggle<CR>


" インデント
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
filetype plugin on
filetype indent on
"sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtab
autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
autocmd FileType js          setlocal sw=2 sts=2 ts=2 et
autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
autocmd FileType php         setlocal sw=4 sts=4 ts=4 et

" 検索系
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
filetype plugin indent on

command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
  if 0 == a:0
    let l:arg = "."
  else
    let l:arg = a:1
  endif
  execute "%! jq \"" . l:arg . "\""
endfunction
