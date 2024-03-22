# Enable Powerlevel11k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="/Users/bognaflieger/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---START --- fzf configuration
eval "$(fzf --zsh)"
# --- END --- fzf configuration


alias aconda="source /Users/bognaflieger/.activate-conda"
alias anvm="source /Users/bognaflieger/.activate-nvm"
alias apyenv="source /Users/bognaflieger/.activate-pyenv"
