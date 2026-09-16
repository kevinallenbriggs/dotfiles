# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="agnoster"

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
# plugins=(git aliases rsync docker docker-compose command-not-found colored-man-pages sudo)
plugins=(git aliases rsync docker docker-compose colored-man-pages sudo zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# PS Audio
alias psc="ps-shopify-cli"

# git
alias gbsup="ggsup"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# flyctl - see https://fly.io/docs/hands-on/install-flyctl/
export FLYCTL_INSTALL="/home/kevin/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# nvim - see https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package
export PATH="$PATH:/opt/nvim-linux64/bin"
alias vim="nvim"
alias v="vim"

# easy editing of workflow configuration tools
alias ez="v ~/.zshrc"
alias sz="source ~/.zshrc"
alias et="v ~/.config/tmux/tmux.conf"
alias st="tmux source ~/.config/tmux/tmux.conf"
alias ev="v --cmd 'cd ~/.config/nvim' ~/.config/nvim/init.lua"

# QOL
# alias ll="ls -lahF"

# enable command-not-found
# source /etc/zsh_command_not_found
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dot='dotfiles'

# set XDG Config dir
export XDG_CONFIG_HOME="$HOME/.config"

# PS Audio stuff
alias psdown='nmcli con down "PS Audio VPN"'
alias psup='nmcli con up "PS Audio VPN"'

# lazygit
alias lg='lazygit'
alias dlg='lazygit -w $HOME -g $HOME/.dotfiles'

# add bin directory to path (python, etc)
export PATH="$PATH:/home/kevin/.local/bin"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"
alias cd='z'
alias cdi='zi'

# exa
alias ls='eza'
alias ll='eza -lh --total-size'

# bat
alias cat='bat'

# ranger file manager
RANGER_LOAD_DEFAULT_RC=FALSE

# yazi file manager
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# easy repo navigation
# alias v:labels="v --cmd 'cd /repos/psaudio/labels/'"
# alias v:dawn="v --cmd 'cd /repos/psaudio/shopify/themes/dawn-customized/'"
# alias v:cli="v --cmd 'cd /repos/psaudio/shopify/shopify-admin-cli/'"
# alias v:youtrack="v --cmd 'cd /repos/psaudio/youtrack-story-templates/'"
# alias v:docker="v --cmd 'cd /repos/psaudio/docker-images/'"
# alias v:discourse="v --cmd 'cd /repos/psaudio/discourse-development/'"

# add GOPATH to PATH
export PATH="$PATH:/home/kevin/go/bin"

# sesh session manager
# https://github.com/joshmedeski/sesh#zsh-keybind
# https://www.youtube.com/watch?v=-yX3GjZfb5Y
function sesh-sessions() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

zle     -N             sesh-sessions
bindkey -M emacs '\es' sesh-sessions
bindkey -M vicmd '\es' sesh-sessions
bindkey -M viins '\es' sesh-sessions

# start tmux automatically
# if [ -z "$TMUX" ]; then
#   tmux attach || exec tmux new-session && exit;
# fi

# syntax highlighting (must be at end)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH="/home/kevin/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kevin/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kevin/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kevin/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kevin/perl5"; export PERL_MM_OPT;
export PATH="/home/kevin/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/kevin/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
