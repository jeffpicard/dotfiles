alias grep='grep --color'
alias ls="ls -1F"
alias mv="mv -i"
alias bat="bat -p"

# Set prompt
autoload -U colors && colors
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | sed "s|refs/heads/||")
    if [[ $branch == "" ]]; then
        :
    else
        echo '('$branch') '
    fi
}
setopt prompt_subst
PROMPT='
%{$fg[magenta]%}### %~ $(git_branch)###%{$reset_color%}
$ '

export CLICOLOR=1
export PATH="$PATH":~/bin
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

echo '******************
* hello, Captain *
******************'

