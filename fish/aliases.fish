# ==================================
# Aliases
# ==================================

# Reload fish config
alias reload='source ~/.config/fish/config.fish'


# ==================================
# System
# ==================================

alias l="ls -lah --color"
alias la="ls -AF --color"
alias ll="ls -lFh --color"

alias dirnames="find . -maxdepth 1 -type d"

# alias ip="ip --color"
# alias ipb="ip --color --brief"


# ==================================
# Node, npm, yarn, nvm
# ==================================

alias nr="npm run"
alias nt="npm run test"
alias nl="npm run lint"
alias ntc="npm run typecheck"
alias nv="npm run validate"
alias np="npm publish"
alias ndt="npm dist-tag ls"

alias yanr="yarn"
alias yr="yarn run"
alias yt="yarn run test"
alias yl="yarn run lint"
alias ytc="yarn run typecheck"
alias yv="yarn run validate"
alias yp="yarn publish"
alias yui="yarn upgrade-interactive"
alias yuil="yarn upgrade-interactive --latest"
alias yuili="yarn upgrade-interactive --latest --ignore-engines"
alias yw="yarn workspace"

alias npmeu="npm --registry https://registry.npmjs.eu"
alias npmorg="npm --registry https://registry.npmjs.org"
alias npmcf="npm --registry https://registry.npmjs.cf"


# ==================================
# Docker
# ==================================

alias dc='docker-compose'

# Kill all running containers.
alias dockerkillall='docker kill (docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='docker rm (docker ps -aq)'

# Delete all untagged images.
alias dockercleani='docker rmi (docker images -q -f dangling=true --quiet)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Delete old containers.
# See http://stackoverflow.com/questions/17236796/how-to-remove-old-docker-io-containers
alias dockercleanoldc='docker ps -a | grep "weeks ago" | awk "{print \$1}" | xargs docker rm'


# ==================================
# Git
# ==================================

alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias gl="git log --oneline --decorate"
# alias gs="git status --porcelain"
alias gs="git status --short"
alias gaa="git add -A"
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
alias gbra="git branch -a"
alias grup="git remote update --prune"
alias gsa="git stash apply"
alias gcf="git commit --fixup"
alias gri="git rebase --interactive"
alias gria="git rebase --interactive --autosquash"
alias gch="git checkout HEAD ."
alias gc="git checkout"
alias gcm="git checkout master"
alias gpf="git push --force-with-lease"
alias gca="git commit --amend --no-edit"
