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
alias abrew='/opt/homebrew/bin/brew'
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias vi='nvim'

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/opt/anyenv/bin"
export PATH="$PATH:$HOME/.nodebrew/current/bin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:$HOME/platform-tools/"
export PATH="$HOME/.embulk/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if type "pyenv" > /dev/null 2>&1; then eval "$(pyenv init -)"; fi
if type "anyenv" > /dev/null 2>&1; then eval "$(anyenv init -)"; fi

export CLOUDSDK_PYTHON="$PYENV_ROOT/shims/python"
export PATH="$HOME/.anyenv/envs/nodenv/bin:$PATH"
export PATH="$HOME/.anyenv/envs/rbenv/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="$PATH:$HOME/nvim-macos-arm64/bin"
export PATH="$PATH:$HOME/.local/bin"

