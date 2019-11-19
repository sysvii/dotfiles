zstyle ':prezto:*:*' color 'yes'

## zgen
source $HOME/.zgen/zgen.zsh
if ! zgen saved; then
  zgen prezto

  zgen prezto history-substring-search
  zgen prezto utility

  zgen save
fi

# conditionally run with starship
if command -v starship > /dev/null 2>&1 ; then
  eval "$(starship init zsh)"
else
  prompt pure
fi


## aliases
alias grep="grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn"

# git alias
alias gc="git commit"
alias gh="git checkout"
alias gb="git branch"
alias ga="git add"
alias gf="git fetch"
alias gp="git push"
alias gl="git pull"
alias gt="git stash"
alias gta="git stash apply"
alias gtp="git stash pop"
alias gts="git stash save"
alias gs="git status -sb"
alias gsh="git status -sb ."
alias gd="git diff"
alias gds="git diff --staged"
alias gr="git reset"
alias grh="git reset --hard"
alias glrm="git pull --rebase origin master"

# bundle alias
alias b="bundle"
alias be="bundle exec"

# vim: set ts=2 sw=2 expandtab:
