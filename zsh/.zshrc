# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

alias rm='echo "This is not the command you are looking for. Use trash."; false'

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats " %F{#8e8e93}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats " %F{#8e8e93}%c%u(%b)%f %a"
zstyle ':vcs_info:*' stagedstr "%F{#30d158}"
zstyle ':vcs_info:*' unstagedstr "%F{#ff3b30}"
zstyle ':vcs_info:*' check-for-changes true

precmd() { vcs_info }
setopt PROMPT_SUBST
export PROMPT=$'%F{#1d9cf0}%~%f$vcs_info_msg_0_\n\U2192 '

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
