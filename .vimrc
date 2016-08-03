
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
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

"autocmd ColorScheme * highlight LineNr ctermfg=6
colorscheme molokai
syntax on
set laststatus=2
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=a
set paste
set number

noremap <Down> gj
noremap <Up> gk
noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
noremap <C-i> i
noremap <C-a> a

" 予測候補の表示
inoremap <S-TAB> <C-X><C-P>
inoremap <S-S> <C-c>

set clipboard=unnamedplus
