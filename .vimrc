
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }

NeoBundle 'HybridText'

NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" 検索リアルタイムハイライト
"NeoBundle 'haya14busa/incsearch.vim'
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
"set hlsearch "検索文字のハイライト表示

"" Previm
NeoBundle 'kannokanno/previm'
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
let g:previm_open_cmd = 'open -a Firefox'
let g:previm_enable_realtime = 1

" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'
" srcery
NeoBundle 'roosta/srcery'

call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------


" Uniteってのが強いらしい

colorscheme ron
syntax on

set laststatus=2
set autoindent
set noswapfile
set mouse=a
set number "行番号の表示
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set fileencoding=utf-8

"" 検索
"set incsearch "文字確定前から検索
set hlsearch " 検索ハイライト
set ignorecase "大文字小文字を区別しない
set smartcase "パターンに大文字小文字が混在する場合は区別する

" since Vim 8.0
set clipboard+=unnamed
set backspace=2

"" Mapping
noremap <Down> gj
noremap <Up> gk

cnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

nnoremap <C-j> 3j
nnoremap <C-k> 3k
nnoremap <C-h> ^
nnoremap <C-l> $

