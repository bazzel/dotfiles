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
#export PATH=/usr/local/share/npm/bin:$PATH
# Add project-specific binstubs to PATH:
export PATH=./bin:$PATH
#export PATH="$PATH:~/.scripts/bin"

# http://golang.org/doc/code.html#GOPATH
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin

# Make sure terminal locale settings are set to UTF-8 or tmux will start acting weird
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Projects
#
# ASML
#
export NLS_LANG="AMERICAN_AMERICA.UTF8"
#
# End ASML
# End Projects

# Aliases
#
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

alias 4m='bin/foreman '
alias 4ms='4m start '
alias 4mr='4m run '

alias ag='alias | grep '
alias gi='gem install '

# Rails, cuke and more
alias gpr='git remote prune origin' # Always forget this one...
alias gba='git fetch && git branch -a'
alias wip='RAILS_ENV=test bin/rake cucumber:wip'
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

# brew
alias bi='brew install'
alias bci='brew cask install'
alias bs='brew search'
alias bcs='brew cask search'

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

alias simpleserver='python -m SimpleHTTPServer '

# pyenv: enable shims and autocompletion:
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# http://direnv.net/
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/patrickbaselier/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
