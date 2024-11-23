# make valid commands green instead of blue(?)
set -gx fish_color_command green

# No greeting
set fish_greeting

# set helix to be $EDITOR
set EDITOR hx

# fzf
fzf --fish | source
function fzf_ctrl_t
    set selected_path (fzf --preview 'tree -C {} | head -200' --height 40% --border --bind 'ctrl-t:accept')

    if test -n "$selected_path"
        set dir_path (dirname "$selected_path")
        tmux new-window "cd '$dir_path'; exec $SHELL"
    end
end

bind \ct fzf_ctrl_t

## global vars
set -gx CARGO_HOME /opt/rust/.cargo
set -gx RUSTUP_HOME /opt/rust/.rustup
set -gx ANSIBLE_LOCAL_TEMP /opt/ansible/tmp

### variables
set path_journey ~/Documents/the_journey
set path_dev ~/Documents/development
set path_film ~/Documents/film

### quality of life ###
#### abbreviations
abbr --add dev "cd $path_dev"
abbr --add film "cd $path_film"
abbr --add note "cd $path_journey"
abbr --add dot "cd ~/.dots"
abbr --add down "cd ~/Downloads"
abbr --add speed thokr # typing speedtest
abbr --add rss newsboat # feed reader
abbr --add c clear
abbr --add e exit
abbr --add d dict
abbr --add show "lal | rg"
abbr --add fp flatpak
abbr --add cat bat
abbr --add ccat cat

#### aliases
alias shrug="echo '¯\\_(ツ)_/¯'"
alias flip="echo '(╯°□°)╯︵ ┻━┻'"
alias coco="cp -f ~/.config/cmus/autosave ~/.dots/apps/.config/cmus/"
alias soso="source ~/.config/fish/config.fish; coco; echo 'cmus saved and zsh sourced!'"
alias week="date +%V"
alias srv="ssh berdna@192.168.1.43"
alias hfish="hx ~/.dots/apps/.config/fish/config.fish"


### moving around
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

### eza
alias ll="eza --group-directories-first --icons -l" # list ONLY NON-HIDDEN files, with DIRs first and icons
alias lal="eza --group-directories-first --icons -a -l" # list ALL files, with DIRs first and icons
alias tt="eza --group-directories-first --icons -T " # prints file-structure - hidden files
alias tta="eza --group-directories-first --icons -T -a --ignore-glob='.git|debug'" # prints file-tree + hidden files (exclude .git)

### rust
abbr --add cr "cargo run"
abbr --add cb "cargo build"
abbr --add ct "cargo test"
abbr --add ca "cargo add"
abbr --add ci "cargo install"

### git
abbr --add gs "git status"
abbr --add gp "git push"
abbr --add gc "git commit -m"
abbr --add gb "git checkout"


# PATHs
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $CARGO_HOME/bin
