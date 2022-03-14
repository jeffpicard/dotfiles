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
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

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


### Python ###
export PYTHONDONTWRITEBYTECODE=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


### JVM ###
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home


### Javascript ###
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


### BETTER HISTORY ###
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS


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

