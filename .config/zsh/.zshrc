# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# General settings
export SPICETIFY_INSTALL="$HOME/.spicetify"
export TERM="xterm-256color"
export HISTFILE=$HOME/.config/zsh/.zsh_history
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_VERIFY 
setopt SHARE_HISTORY

export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
#autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#zstyle ':completion:*' menu select
#bindkey -v

# Prompt settings
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
autoload promptinit
promptinit
#prompt bigfade
source $HOME/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

## Plugins
# zsh-bd
. $HOME/.config/zsh/bd.zsh

# git related
. $HOME/.config/zsh/send.zsh

# Fortune | Cowsay
#source $HOME/.config/zsh/plugins/cow-fortune.zsh

# Autosuggestion(fish)
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#zsh-autocomplete
#source $HOME/.config/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Fast syntax-highlighting
source $HOME/.config/zsh/plugins/fsh/f-sy-h.plugin.zsh

# Changing "ls" to "exa"
alias ls="exa -al --color=always --icons --group-directories-first" # my preferred listing
alias la="exa -a --color=always  --icons --group-directories-first"  # all files and dirs
alias ll="exa -l --color=always  --icons --group-directories-first"  # long format
alias lt="exa -aT --color=always  --icons --group-directories-first" # tree listing
alias l.='exa -a | egrep "^\."'

# Aliases
alias v='nvim'
alias sv="sudo nvim"
alias pac="sudo pacman"
alias c="clear"
alias r="source ~/.config/zsh/.zshrc && clear"
alias f="ranger"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ichbinram/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ichbinram/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ichbinram/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ichbinram/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

