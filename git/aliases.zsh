# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
  alias hpr='git pull-request'
fi

# The rest of my fun git aliases
alias gca='git commit --amend -C HEAD'
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gg='git_checkout_grep'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -b' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gpr="git pull --rebase"

# pretty graph log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gsb='git checkout $(git branch | grep $1 | head -n1)'

# show unmerged branches
alias gbb='for branch in `git branch --list -a --no-merged | grep -v HEAD`; do echo -e `git show --format="%Cblue %ci %m %Cgreen %an %m %Creset" $branch | head -n 1` \\t$branch; done | sort -r | head -n 20'

# git track - set current branch to same upstream
alias gt='BRANCH=`git rev-parse --abbrev-ref HEAD` && git branch $BRANCH --set-upstream-to origin/$BRANCH'

# git delete merged
alias gdm='git branch -d `git branch --merged | grep -v "^*" | grep -v "master" | tr -d "\n"`'

alias gdun='git checkout master && git pull && gdm'
