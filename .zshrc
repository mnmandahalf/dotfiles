autoload -U compinit
compinit

#prompt
PROMPT='%m:%F{green}%c%f %n$ '

#aliases
alias la='ls -la'
alias ll='ls -l'
alias vz='vim ~/.zshrc'
alias so='source'
alias history='fc -lt '%F %T' 1'
alias fgr='find . -type f | xargs grep'
alias g='git'

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:$HOME/.nodebrew/current/bin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:$HOME/platform-tools/"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
