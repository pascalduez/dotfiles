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

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github brew sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...



# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file



# ==================================
# PATH
# ==================================

# Sys
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11/bin:$HOME/bin:$PATH"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# PHP
# export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

# Android
export ANDROID_SDK_ROOT="$(brew --prefix android-sdk)"
export ANDROID_HOME="$(brew --prefix android-sdk)"

# Ruby
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
export GEM_HOME="$HOME/.gem/ruby/2.0.0/"
export GEM_PATH="$HOME/.gem/ruby/2.0.0/"

# For Sass/Compass
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# IEctrl
# export DEBUG='iectrl:*'


# ==================================
# Node, NVM
# ==================================

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# ==================================
# Aliases
# ==================================

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -l -a"

# Sass / Compass
alias becw="bundle exec compass watch"

# Textmate
# export EDITOR="$HOME/bin/mate -w"
# alias mate="$HOME/bin/mate -w"

# Sublime Text
export EDITOR='subl -wn'
alias subl="$HOME/bin/subl -n"

# Bower
alias bower='noglob bower'

# Npm
alias npme="npm --registry registry.npmjs.eu"

# Drush
alias dca="drush cc all"

# Make
# Fix the OSX PATH addition drama in Makefiles
alias make="make SHELL=/bin/bash"


# ==================================
# Misc
# ==================================

alias sniff="sudo ngrep -W byline -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"

# ROT13-encode text. Works for decoding, too.
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Get external IP
alias ipext="curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g'"

# Get local IP
# en1 WLAN, en0 Ethernet
alias ip="ipconfig getifaddr en1"
# or ifconfig |grep inet

# ==================================
# Git
# ==================================

alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias gaa="git add -A ."
alias gcam="git commit -am"
alias gpom="git push origin master"
alias gpod="git push origin develop"
alias gpo="git push origin"
alias gpt="git push --tags"
alias gpr="git pull --rebase"
alias gpro="git pull --rebase origin"
alias gprom="git pull --rebase origin master"
alias gprod="git pull --rebase origin develop"
alias gai="git add --interactive"
alias gs="git status --porcelain"
alias git-new-workdir="$(brew --prefix git)/share/git-core/contrib/workdir/git-new-workdir"

