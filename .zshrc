export PATH=/opt/homebrew/bin:~/opt/:$PATH
export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="simple"


plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# ---START --- fzf configuration
eval "$(fzf --zsh)"
# --- END --- fzf configuration


alias aconda="source /Users/$USER/.activate-conda"
alias anvm="source /Users/$USER/.activate-nvm"
alias apyenv="source /Users/$USER/.activate-pyenv"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$USER/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$USER/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$USER/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$USER/opt/google-cloud-sdk/completion.zsh.inc'; fi

alias mwnl='docker exec -it mysql mysql -uroot -pwnl wnl -e "$@"'
