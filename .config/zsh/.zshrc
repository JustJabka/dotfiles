# PowerLevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    fastfetch
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U colors && colors

# Clean-up
export ZDOTDIR="$HOME/.config/zsh"
export ZSH="$HOME/.config/zsh/oh-my-zsh"

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zsh_history

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# plugins
plugins=(git sudo history zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# PowerLevel10k location
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
