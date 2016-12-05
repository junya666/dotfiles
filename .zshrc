#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Customize to your needs...

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
alias rm='rmtrash'

##KEY##
if [ -f "${HOME}/.zsh_keys" ]
then
      source "${HOME}/.zsh_keys"
fi

## PATH ##
export PATH=/usr/local/bin:$PATH
# android studio
export PATH=~/Library/Android/sdk/platform-tools:$PATH

export PGDATA=/usr/local/var/postgres

# rbenv
#[[ -d ~/.rbenv  ]] && \
#  export PATH=${HOME}/.rbenv/bin:${PATH} && \
#  eval "$(rbenv init -)"


### Prompt ###
# プロンプトに色を付ける
autoload -Uz colors; colors
# 一般ユーザ時
tmp_prompt="%F{green}%n:%~%f$ "

# rootユーザ時(太字にし、アンダーバーをつける)
#if [ ${UID} -eq 0 ]; then
#  tmp_prompt="%B%U${tmp_prompt}%u%b"
#fi

PROMPT=$tmp_prompt    # 通常のプロンプト

# 補完候補選択
autoload -U compinit
compinit -C
zstyle ':completion:*:default' menu select=2

