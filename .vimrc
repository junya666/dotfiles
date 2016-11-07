
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
NeoBundleLazy 'nosami/Omnisharp', {
			\   'autoload': {'filetypes': ['cs']},
			\   'build': {
			\     'mac': 'xbuild server/OmniSharp.sln',
			\     'unix': 'xbuild server/OmniSharp.sln',
			\   }
			\ }

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

"autocmd ColorScheme * highlight LineNr ctermfg=6
colorscheme ron
syntax on
set laststatus=2
set autoindent
set noswapfile
set mouse=a
"pasteモードだとimapが効かない
"set paste
set number

noremap <Down> gj
noremap <Up> gk
noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
" コントロールキー移動
noremap <c-j> <down>
noremap <c-k> <up>
noremap <c-h> <left>
noremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <C-;> <BS>

set clipboard=unnamedplus

set fileencoding=utf-8

set expandtab tabstop=2 softtabstop=2 shiftwidth=2


