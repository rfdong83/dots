# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ryan"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


# User configuration

# Source FB's faster hg prompt
local fb_prompt_file=/opt/facebook/share/scm-prompt
if [ -f "$fb_prompt_file" ]; then
    source "$fb_prompt_file"
  else
      echo "couldn't find FB SCM prompt file ${fb_prompt_file}"
fi

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Add Android Tools
export PATH='/Users/ryandong/Library/Android/sdk/platform-tools/':$PATH

# Aliases
alias gs='git status'
alias gc='git commit'
alias gl='git log'
alias gch='git checkout'

alias hgs='hg status'
alias hgc='hc commit'
alias hga='hg ammend'

alias ars='cd ~/fbsource/arvr/apps/ArShell'

