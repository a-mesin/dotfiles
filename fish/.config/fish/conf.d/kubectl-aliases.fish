function _kubectl-aliases_generate --on-event kubectl-aliases_install
    set fish_dir "$HOME/.config/fish"
    set abbr_file "$fish_dir/completions/kubectl_aliases.fish"
    set abbreviations "$(python ~/.config/fish/conf.d/generate_aliases.py fish)"
    echo "$abbreviations" > $abbr_file
end
