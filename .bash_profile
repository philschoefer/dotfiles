# branch management
alias gb="git branch"
alias gbr="git branch | grep -v "master" | xargs git branch -D"

# git general
alias co="git checkout"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gs="git status"
alias ga="git add ."
alias gap="git add -p"

pull() {
  git pull origin $1
}

push() {
  git push --force-with-lease origin $1
}

reset() {
  git reset --hard origin/$1
}

rebase() {
  git fetch origin $1
  git rebase -i origin/$1
}

# rebasing
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grm="git rebase master"
alias grs="git rebase --skip"
alias lastcommit="git reset --soft HEAD~"