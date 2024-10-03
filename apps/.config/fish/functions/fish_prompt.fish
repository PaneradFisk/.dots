function fish_prompt
    set -l last_status $status
    set -l stat
        if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)">"
    end

    set -l symbol ' >'
    if fish_is_root_user
        set symbol ' $'
    end

    set_color red
    echo -n $USER 
    set_color yellow
    echo -n @ 
    set_color green
    echo -n (prompt_pwd)
    set_color magenta
    echo -n $symbol
    set_color normal
    echo -n $stat
end