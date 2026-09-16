# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    docker
    git
    zsh-autosuggestions
    gitfast
    history-substring-search
    sudo
    web-search
    copyfile
    fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
HISTCONTROL=ignoreboth

alias vim=nvim
alias ff=fastfetch
alias k=kubectl
alias ga="git add"
alias gc="git commit"
alias gr="git remote"
alias pwgen="pwgen -c -v -n -s -B -C"
alias gtop="sudo intel_gpu_top"
alias cc=claude
alias zed="flatpak run dev.zed.Zed"


export EDITOR=nvim
export VISUAL=nvim
export PATH="$PATH:/home/entropy/.cargo/bin"
export PATH="$PATH:/home/entropy/.local/bin"
export PATH="$PATH:/home/entropy/.local/scripts"
export PATH="$HOME/.local/bin:$PATH"
export MANPAGER='nvim +Man!'

# ~/Personal/Code/10xdev/Projects/quote/quote.sh

eval "$(zoxide init zsh)"

# K8s
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# flux-cd
command -v flux >/dev/null && . <(flux completion zsh)

# velero
source <(velero completion zsh)
#Vim motions in shell
set -o vi

## context switch function
#function ks() {
#    case "$1" in
#    "kubernetes")
#        export KUBECONFIG="$HOME/Vaults/Sirpi/local_config"
#        echo "Switched to kubernetes cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#    "sirpi")
#        export KUBECONFIG="$HOME/Vaults/Sirpi/sirpi-kubeconfig"
#        echo "Switched to sirpi cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#    "proxmox-k8s")
#        export KUBECONFIG="$HOME/Vaults/Sirpi/promox-k8s-cluster"
#        echo "Switched to ssdnodes_k3s cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#
#    "ssdnodes-k8s")
#        export KUBECONFIG="$HOME/Vaults/Sirpi/ssdnodes_k8s"
#        echo "Switched to ssdnodes_k8s cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#
#    "hetzner-k8s-prod")
#        export KUBECONFIG="$HOME/Intern/test-windvista/hetzner_k8s/ansible/beta/kubeconfig"
#        echo "Switched to hetzner_k8s cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#
#    "hetzner-k8s-dev")
#        export KUBECONFIG="$HOME/Intern/test-windvista/hetzner_k8s/tofu/PoC/dev/kubeconfig-dev"
#        echo "Switched to hetzner_k8s cluster"
#        kubectl config current-context
#        echo "$KUBECONFIG" > "$HOME/.last_kubeconfig"  # Save the last used config
#        ;;
#    "status")
#        echo "Current KUBECONFIG: $KUBECONFIG"
#        echo "Active context:"
#        kubectl config current-context
#        ;;
#    *)
#        echo "Usage: kswitch "
#        echo "  kubernetes  - Switch to kubernetes cluster"
#        echo "  sirpi       - Switch to sirpi cluster"
#        echo "  proxmox-k8s - Switch to proxmox-k8s cluster"
#        echo "  ssdnodes-k8s - Switch to ssdnodes-k8s cluster"
#        echo "  hetzner-k8s-prod - Switch to hetzner-k8s cluster"
#        echo "  hetzner-k8s-dev - Switch to hetzner-k8s cluster"
#        echo "  status      - Show current cluster config"
#        ;;
#    esac
#}
#
#if [ -f "$HOME/.last_kubeconfig" ]; then
#    export KUBECONFIG=$(cat "$HOME/.last_kubeconfig")
#fi

## ks ends here

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
autoload -Uz compinit
rm -f ~/.zcompdump; compinit
#compinit

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/entropy/google-cloud-sdk/path.zsh.inc' ]; then . '/home/entropy/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/entropy/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/entropy/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Pomodoro CLI
declare -A pomo_options
pomo_options["work"]="45"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  spd-say "'$val' session done"
  fi
}

alias kctx=kubectx
alias kns=kubens
alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"
eval "$(uv generate-shell-completion zsh)"
export KUBECONFIG=$HOME/.kube/wv-dev-cluster:$HOME/.kube/wv-beta-cluster

# bun completions
[ -s "/home/entropy/.bun/_bun" ] && source "/home/entropy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
