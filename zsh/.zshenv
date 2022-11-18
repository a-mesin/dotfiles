#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi


export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-19.jdk/Contents/Home
export GOROOT=/opt/homebrew/opt/go/libexec
export GOPATH=$HOME/go
export KUBE_EDITOR=/opt/homebrew/bin/nvim

export PATH=$PATH:$JAVA_HOME:$GOPATH/bin:$GOROOT/bin

