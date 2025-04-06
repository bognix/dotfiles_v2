export PATH=/opt/homebrew/bin:~/opt/:$PATH:/Users/$USER/.local/bin
export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="simple"


plugins=(git vi-mode)
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true


source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# ---START --- fzf configuration
eval "$(fzf --zsh)"
export FZF_ALT_C_OPTS="
  --walker dir
  --walker-root=/Users/$USER
  --walker-skip .git,node_modules,target,Library
  --preview 'tree -C {}'"
# --- END --- fzf configuration


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bogna/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bogna/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bogna/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bogna/opt/google-cloud-sdk/completion.zsh.inc'; fi

# add to $PATH everything that lives inside ~/.local/bin/
# ansible
# uv (including python)
. "$HOME/.local/bin/env"

#--- BETHINK CHANGES START ---
# Przelączenie na https
alias sthttps="sed -i '' -e 's/http:/https:/g' courses.json"

# Przełączenie na http
alias sthttp="sed -i '' -e 's/https:/http:/g' courses.json"

alias mwnl='docker exec -it mysql mysql -uroot -pwnl wnl -e "$@"'
#--- BETHINK CHANGES END ---
