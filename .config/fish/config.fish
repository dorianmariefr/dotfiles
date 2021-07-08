set fish_greeting

function fish_prompt
  echo (set_color green)(prompt_pwd)(set_color normal)'> '
end

rvm default

set -x PATH $PATH $HOME/bin

set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x EDITOR vim

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools

alias react-native "npx react-native"
alias pod-install "npx pod-install"
alias glg="git ls-files | grep"
alias xvim="xargs -o vim"
alias be="bundle exec"
alias pw="prettier --write"
alias tc="srb tc"
alias cr="crystal"

# fix tab in fish
if test -d (brew --prefix)"/share/fish/completions"
  set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
  set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

