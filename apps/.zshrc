### quality of life
alias show="lal | rg"

alias dev="cd ~/Documents/development"
alias dot="cd ~/.dotfiles"
alias down="cd ~/Downloads"
alias note="cd ~/the_journey/"
alias nn='cd ~/the_journey/notes && cp ~/the_journey/templates/template_journey.md "$(date +"%Y-%m-%d_%H%M").md" && $EDITOR "$(date +"%Y-%m-%d_%H%M").md"'
alias shrug="echo '¯\\_(ツ)_/¯'"
alias flip="echo '(╯°□°)╯︵ ┻━┻'"
alias speed="thokr" # typing speedtest
alias rss="newsboat" # rss feed app
alias srv="ssh berdna@192.168.1.43"
alias c="clear"
alias e="exit"
alias soso="source ~/.zshrc; coco1; echo 'cmus saved and zsh sourced!'"
alias week="date +%V"

### moving around
alias -g ...="cd ../.."
alias -g ....="cd ../../.."
alias -g .....="cd ../../../.."
alias -g ......="cd ../../../../.."

### eza
alias lsl="eza --group-directories-first --icons -l -d -a .*" # list only hidden files, with colors
alias ll="eza --group-directories-first --icons -l" # list ONLY NON-HIDDEN files, with DIRs first and icons
alias lal="eza --group-directories-first --icons -a -l" # list ALL files, with DIRs first and icons
alias tt="eza --group-directories-first --icons -T " # prints file-structure - hidden files
alias tta="eza --group-directories-first --icons -T -a --ignore-glob='.git|debug'"   # prints file-tree + hidden files (exclude .git)

### ripgrep
alias grep="rg"

### tmux
alias tp='tmux new-session cmus \; new-window \; new-window newsboat \; new-window \; select-window -t 1 \; attach-session'
# alias tp='tmux new-session \; new-window cmus \; new-window newsboat \; select-window -t 1 \; attach'
alias tks="tmux kill-session -t "
alias tls="tmux ls"

### rust
alias cr="cargo run"
alias cb="cargo build"
alias ct="cargo test"
alias ca="cargo add"
alias ci="cargo install"

### bottom
alias bottom="btm"
alias top="btm"

### git
alias gs="git status"

### cmus
alias ms="cmus"
alias coco1="cp -f ~/.config/cmus/autosave ~/.dotfiles/apps/.config/cmus/"


# exports
export EDITOR="code"
export PATH="/usr/bin/fzf:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# configurations
### adds git-branch name to cli prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST
PROMPT='%F{red}%n%f%F{yellow}@%f%F{green}%~%f %F{magenta}#%f'

# sources
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)
source "$HOME/.cargo/env"
