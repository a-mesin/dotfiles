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


export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-18.jdk/Contents/Home
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

export PATH=$PATH:$JAVA_HOME:$GOPATH/bin:$GOROOT/bin

