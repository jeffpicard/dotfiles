alias grep='grep --color'

autoload -U colors && colors

function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo '('$branch') '
    fi
}
setopt prompt_subst
PROMPT='
%{$fg[yellow]%}### %~ $(git_branch)###%{$reset_color%}
$ '

export CLICOLOR=1
export PATH="$PATH":~/bin
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

echo '******************
* hello, Captain *
******************'
