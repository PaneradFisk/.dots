function fish_right_prompt
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showcolorhints true
    set -g __fish_git_prompt_color_prefix cyan
    set -g __fish_git_prompt_color_suffix cyan
    set_color cyan
    echo -n (fish_git_prompt)
end
