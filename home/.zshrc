# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# autojump
# https://github.com/joelthelion/autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"

# Aliases
#
# Projects
#
# Philips OSS
export OSS_ROOT='~/code/philips-oss'
export OSSYOR_ROOT="${OSS_ROOT}/ossyor"
export OSSACT_ROOT="${OSS_ROOT}/ossact"
export OSSYOR_DOMAIN='pwl.philips.com'
alias tmux-ossyor="tmux rename-window 'Zoom' && tmux set-option default-path ${OSSYOR_ROOT} && teamocil --layout ${OSSYOR_ROOT}/tools/teamocil.yml"
alias tmux-ossact="tmux rename-window 'Zoom' && tmux set-option default-path ${OSSACT_ROOT} && teamocil --layout ${OSSACT_ROOT}/scripts/asset_structure_builder/tools/teamocil.yml"
alias spl='ssh pairing@localhost'
# demo
alias sod="ssh oss@oss@oss-demo.ddns.htc.nl.philips.com"
# unity test
alias soun='ssh ubuntu@54.228.193.84 -i ~/.ssh/developers.pem'
# user test
alias sous="ssh ubuntu@54.228.230.235 -i ~/.ssh/philips.pem"
# staging
alias sos="ssh ubuntu@staging.${OSSYOR_DOMAIN} -i ~/.ssh/philips.pem"
# production
alias sop="ssh ubuntu@${OSSYOR_DOMAIN} -i ~/.ssh/philips.pem"

alias ag='alias | grep '
alias gi='gem install '

# bundler
alias be='bundle exec'

# Rails, cuke and more
alias gpr='git remote prune origin' # Always forget this one...
alias gba='git fetch && git branch -a'
alias br='be rake'
alias cu='be cucumber'
alias wip='be cucumber -r features -p wip'
alias rtg='be rake -T | grep ' # Grep rake tasks: rtg database

# Middleman (middlemanapp.com)
alias mm='middleman'
alias mmb='mm build'
alias mmi='mm init'
alias mmd='mm deploy'

# Working with these dotfiles made easier
alias reload='source ~/.zshrc'
alias zshrc='vim ~/.zshrc && reload'

# homesick
alias hcd='homesick commit dotfiles'
alias hpd='homesick push dotfiles'
alias hsd='homesick symlink dotfiles'
