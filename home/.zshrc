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
export BUNDLER_EDITOR=vim

# autojump
# https://github.com/joelthelion/autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
# Add project-specific binstubs to PATH:
export PATH=./bin:$PATH
#export PATH="$PATH:~/.scripts/bin"

# http://golang.org/doc/code.html#GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Make sure terminal locale settings are set to UTF-8 or tmux will start acting weird
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Projects
#
# Philips OSS
export OSS_ROOT='~/code/philips-oss'
export OSSYOR_ROOT="${OSS_ROOT}/ossyor"
export OSSPUBLISH_ROOT="${OSS_ROOT}/osspublish"
export OSSACT_ROOT="${OSS_ROOT}/ossact"
export OSSYOR_DOMAIN='pwl.philips.com'
export TACTIC_ASSET_CHECKIN_ROOT='/Volumes/2013-5023_ossassetbackup_ux'
# End Philips OSS
#
# ASML
export ORACLE_HOME=/usr/local/oracle/instantclient_11_2
export OCI_DIR=$ORACLE_HOME
#export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$ORACLE_HOME
# End ASML
#
# End Projects

# Aliases
#
alias tmux-ossyor="teamocil --here --layout ~/.teamocil/ossyor.yml"
alias tmux-osspublish="teamocil --here --layout ~/.teamocil/osspublish.yml"
alias tmux-ossact="teamocil --here --layout ${OSSACT_ROOT}/scripts/asset-structure-builder/tools/teamocil.yml"
alias tmux-osstactic="teamocil --here --layout ${OSSACT_ROOT}/tactic/python_scripts/tools/teamocil.yml"

alias spl='ssh pairing@localhost'
# content
alias soc="ssh ubuntu@origin.www.content.pwl.philips.com -i ~/.ssh/developers.pem"
# demo
alias sod="ssh ubuntu@origin.www.demo.pwl.philips.com -i ~/.ssh/developers.pem"
# unity test
#alias soun='ssh ubuntu@54.228.193.84 -i ~/.ssh/developers.pem'
alias soun="ssh ubuntu@origin.www.unity.pwl.philips.com -i ~/.ssh/developers.pem"
# user test
alias sous="ssh ubuntu@origin.www.test.pwl.philips.com -i ~/.ssh/philips.pem"
# staging
alias sos="ssh ubuntu@origin.www.staging.pwl.philips.com -i ~/.ssh/philips.pem"
# production
alias sop="ssh ubuntu@origin.www.pwl.philips.com -i ~/.ssh/philips.pem"

alias ag='alias | grep '
alias gi='gem install '

# Rails, cuke and more
alias gpr='git remote prune origin' # Always forget this one...
alias gba='git fetch && git branch -a'
alias wip='bin/rake cucumber:wip'
alias rtg='bin/rake -T | grep ' # Grep rake tasks: rtg database
alias zues='zeus'
alias zcu='zeus cucumber'
alias zwip='zeus cucumber -r features -p wip'
alias zr='zeus rake'
# Middleman (middlemanapp.com)
alias mm='middleman'
alias mmb='mm build'
alias mmi='mm init'
alias mmd='mm deploy'

# Konacha
alias rks='konacha:serve'
alias rkr='konacha:run'

# Working with these dotfiles made easier
alias reload='source ~/.zshrc'
alias zshrc='vim ~/.zshrc && reload'

# homesick
alias hcd='homesick commit dotfiles'
alias hpd='homesick push dotfiles'
alias hsd='homesick symlink dotfiles'

# ASML
alias asmlsshpdflithostag='ssh wwwsdev@nlseir201.sn-eu.asml.com'
alias asmlsshpdflithoprod='ssh wwwsdev@nlseir202.sn-eu.asml.com'
alias asmlsshfcolithostag='ssh wwwsdev@nlseir203.sn-eu.asml.com'
alias asmlsshfcolithoprod='ssh wwwsdev@nlseir204.sn-eu.asml.com'
alias asmlsshbranchcreateeid='ssh wwwsdev@nleidr081.sn-eu.asml.com'
alias asmlsshbranchcreatevdh='ssh wwwsdev@nlvdhr196.sn-eu.asml.com'

# Pair programming
alias cmapa='git commit --amend --author="Matthijs and Patrick <matthijs+patrick@kabisa.nl>"'

# Custom scripts
# Find them in ~/.scripts/bin
#alias rails_new='sh rails_new'

alias simpleserver='python -m SimpleHTTPServer 8000'

# Functions
#
#
# mrt (my rails templates)...
mrt() {
  bundle exec rake rails:template LOCATION=~/code/personal/rails-templates/"$*".rb
}

# pyenv: enable shims and autocompletion:
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# http://direnv.net/
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export ANSIBLE_HOSTS=hosts.local
export ANDROID_HOME=/usr/local/opt/android-sdk

# https://github.com/creationix/nvm
source $(brew --prefix nvm)/nvm.sh
