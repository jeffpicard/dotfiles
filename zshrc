### ALIASES ###
alias grep='grep --color'
alias ls="ls -1F"
alias mv="mv -i"
alias cp="cp -i"
alias bat="bat -p"
alias log="git log --all --graph --decorate --oneline"
alias branch="git branch -vv"


### PROMPT ###
autoload -U colors && colors

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
setopt prompt_subst
PROMPT='
%{$fg[magenta]%}----- %~$(__git_ps1) -----
$ %{$reset_color%}'


### SYNTAX HIGHLIGHTING ###
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt INTERACTIVE_COMMENTS
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=125,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=125,bold
ZSH_HIGHLIGHT_STYLES[path]=fg=166,underline
ZSH_HIGHLIGHT_STYLES[assign]=fg=037


### LANGUAGE SPECIFIC ###
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home


### MISC ###
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export CLICOLOR=1
export PATH="$PATH":~/bin
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PROMPT_EOL_MARK=""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


### :) ###
echo "
   Hello, Captain                   _____
                           __...---'-----\`---...__
                      _===============================
 ,----------------._/'      \`---..._______...---'
 (_______________||_) . .  ,--'
     /    /.---'         \`/
    '--------_- - - - - _/
              \`--------'
"
