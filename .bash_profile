export PATH=~/.local/bin:$PATH
export PATH="$PATH:/opt/yarn-1.13.0/bin"
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

# Git
alias gr="git branch -D"
alias gc="git checkout -- ."
alias log="git log --oneline"
alias gch="git checkout"
alias gs="git status"
alias getlatest="sh ~/code/scripts/git-latest.sh"
alias rebase="sh ~/code/scripts/git-rebase.sh"
alias push="sh ~/code/scripts/git-push.sh"
alias nb="sh ~/code/scripts/new_branch.sh"

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
