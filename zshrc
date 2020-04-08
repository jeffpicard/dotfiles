alias grep='grep --color'

autoload -U colors && colors
export PS1="
%{$fg[yellow]%}### %1~ ###%{$reset_color%}
$ "
export CLICOLOR=1
export PATH="$PATH":~/bin
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"


echo '******************
* hello, Captain *
******************'
