set fish_greeting

function fish_prompt
  echo (set_color green)(prompt_pwd)(set_color normal)'> '
end

rvm default

set -x PATH $PATH $HOME/bin
set -x EDITOR vim

alias xvim="xargs -o vim"
alias be="bundle exec"
alias pw="prettier --write"
