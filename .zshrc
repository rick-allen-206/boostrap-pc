# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export BAT_THEME="Monokai Extended"
#export PATH="$PATH:$(yarn global bin)"
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
export VI_MODE_SET_CURSOR=true
# Force the use of aliases (You should use)
export YSU_HARDCORE=1

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  docker
  git
  kubectx
  sudo
  terraform
  vi-mode
  web-search
  you-should-use
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

# User configuration
source $ZSH/oh-my-zsh.sh
source <(/home/linuxbrew/.linuxbrew/bin/fzf --zsh)
source /home/lasky/.fzf-tab-completion/zsh/fzf-zsh-completion.sh
eval "$(~/.local/bin/mise activate zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
zstyle ':completion:*' fzf-search-display true

# Customize prompt
export RPROMPT='$(tf_prompt_info)'
export RPROMPT="\$(vi_mode_prompt_info)$RPROMPT"
ZSH_THEME_TF_PROMPT_PREFIX='%{$fg[blue]%}'
ZSH_THEME_TF_PROMPT_SUFFIX='%{$reset_color%}'

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bat="batcat"
alias preview="fzf --preview='batcat --color=always {}'"
alias gch='git checkout "$(git branch | fzf | tr -d "[:space:]")"'
alias gic="git commit -m"
