function fzf_ctrl_t
    set selected_path (fzf --preview 'tree -C {} | head -200' --height 40% --border --bind 'ctrl-t:accept')

    if test -n "$selected_path"
        set dir_path (dirname "$selected_path")
        tmux new-window "cd '$dir_path'; exec $SHELL"
    end
end
