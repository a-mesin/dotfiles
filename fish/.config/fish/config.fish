if status is-interactive
    # Commands to run in interactive sessions can go here
end

test -f ~/.config/fish/completions/kubectl_aliases.fish && source \
     (cat ~/.config/fish/completions/kubectl_aliases.fish | sed -r 's/(kubectl.*) --watch/watch \1/g' | psub)

starship init fish | source
