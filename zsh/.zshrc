# Aliases
alias v=nvim
alias cat=bat
alias ls='exa -al --color=always --group-directories-first --icons'
alias lg=lazygit

# Kubectl Aliases
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

alias kns='kubectl config set-context --current --namespace'
alias kctx='kubectl config use-context'

function nvims() {
  items=("default")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
