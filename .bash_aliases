# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias c='clear'

# git aliases
alias ga='git add'
alias gai='git add -interactive'
alias gA='git add --all'
alias gbl="git branch --list --verbose"
alias gcb="git checkout -B"
alias gca='git commit --amend'
alias gcl="git clone --progress"
alias gco="git checkout"
alias gcm="git checkout master"
alias gct='git commit'
alias gd="git diff"
alias gitundocommit="git reset --soft 'HEAD^'"
alias gitundopush="git push -f origin 'HEAD^:master'"
alias glo="git log --decorate --oneline --graph"
alias glg="git log --decorate --graph --abbrev-commit --date=relative"
alias gmg='git merge --no-ff'
alias gph="git push"
alias gpr="git pull"
alias gpom="git push origin master"
alias grao="git remote add origin"
alias grau="git remote add upstream"
alias grv="git remote -v"
alias gs="git status --short --branch"
alias gss='git stash save'
alias gsa='git stash apply'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsc='git stash clear'
alias gsd='git stash drop'
