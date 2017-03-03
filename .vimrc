"---------------------------
" Start Neobundle Settings.
"---------------------------
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

" Previm
NeoBundle 'kannokanno/previm'
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
let g:previm_open_cmd = 'open -a Firefox'

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
"set hlsearch "検索文字のハイライト表示
"set incsearch "文字確定前から検索
set ignorecase "大文字小文字を区別しない
set smartcase "パターンに大文字小文字が混在する場合は区別する
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set fileencoding=utf-8

" since Vim 8.0
set clipboard+=unnamed
set backspace=2

noremap <Down> gj
noremap <Up> gk
noremap <C-w> :w<CR>
noremap <C-q> :q<CR>
nnoremap <C-d> 5j
nnoremap <C-u> 5k
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
cnoremap <C-j> <Esc>

