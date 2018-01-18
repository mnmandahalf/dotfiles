autoload -U compinit
compinit

#prompt
PROMPT='%m:%F{green}%c%f %n$ '

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:$HOME/.nodebrew/current/bin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:$HOME/platform-tools/"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
