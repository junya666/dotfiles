
## Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

## Aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias treel='tree -L'
#alias clipboard='xsel -ib'
#alias tmux="TERM=xterm-256color tmux"
#alias eow='python ~/python_projects/eijiro/eow.py'
alias vitmp='vi ~/tmp/tmp.txt'
#alias less='/usr/share/vim/vim74/macros/less.sh'
alias todo='sh ~/shellscripts/quicktodo/todo.sh'
alias diary='sh ~/shellscripts/quickdiary/diary.sh'
#alias vinote='vim ~/Dropbox/note/'
alias rm='rmtrash'
alias vi='vim'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc'
alias adb_sqlite='~/shellscripts/adb_sqlite.sh'



## cd直後にオートls
cdls ()
{
  \cd "$@" && ls
}
alias cd="cdls"

## KEY
if [ -f "${HOME}/.zsh_keys" ]
then
      source "${HOME}/.zsh_keys"
fi

## PATH
export PATH=/usr/local/bin:$PATH
# android studio
export PATH=~/Library/Android/sdk/platform-tools:$PATH
## pandoc
export PATH=/usr/local/Cellar/pandoc/1.19.2.1/bin:$PATH
export PGDATA=/usr/local/var/postgres
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"

## rbenv
#[[ -d ~/.rbenv  ]] && \
#  export PATH=${HOME}/.rbenv/bin:${PATH} && \
#  eval "$(rbenv init -)"


## Prompt
# プロンプトに色を付ける
autoload -Uz colors; colors
# 一般ユーザ時
tmp_prompt="%F{green}%n:%~%f$ "
PROMPT=$tmp_prompt    # 通常のプロンプト

# rootユーザ時(太字にし、アンダーバーをつける)
#if [ ${UID} -eq 0 ]; then
#  tmp_prompt="%B%U${tmp_prompt}%u%b"
#fi

## プロンプトにgitブランチを表示
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

## 補完候補選択
autoload -U compinit
compinit -C
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## VIMノートを開く

function note ()
{
    if [ $1 = "-l" ]; then
        ls ~/Dropbox/note/
    else
        vim ~/Dropbox/note/${1}
    fi
}

function _note() {
    _files -W ~/Dropbox/note && return 0;
    return 1;
}

compdef _note note

## glob展開でファイルが見つからなくてもそのまま処理する
setopt nonomatch

