alias k="kubectl"

function parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '

alias vim=/usr/bin/vim

alias vim="NVIM_LISTEN_ADDRESS=/tmp/nvim-socket nvim"
alias search="grep -rin"
