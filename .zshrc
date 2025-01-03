autoload -U compinit
compinit

#prompt
PROMPT='%D %* %n@:%F{green}%c%f$ '

#aliases
alias la='ls -la'
alias ll='ls -l'
alias vz='vim ~/.zshrc'
alias so='source'
alias history='fc -lt '%F %T' 1'
alias fgr='find . -type f | xargs grep'
alias g='git'
alias fig='docker-compose'
alias k='kubectl'
alias vi='nvim'


export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:/opt/homebrew/bin"

export PATH="$PATH:$HOME/.nodebrew/current/bin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:$HOME/platform-tools/"
export PATH="$HOME/.embulk/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
if type "anyenv" > /dev/null 2>&1; then eval "$(anyenv init -)"; fi

export PATH="$HOME/.anyenv/envs/nodenv/bin:$PATH"
export PATH="$HOME/.anyenv/envs/rbenv/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
# shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

export PATH="$PATH:$HOME/nvim-macos-arm64/bin"
export PATH="$PATH:$HOME/.local/bin"

if [ -d /opt/homebrew/bin ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
fi
