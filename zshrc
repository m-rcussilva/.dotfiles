# Display the current git branch
function show_current_branch() {
	git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
PROMPT='%f%F{#76946A} %f%B%3~%b%f %F{#76946A}$(show_current_branch) %f%F{#76946A} '

# Get ls colros to work
alias ls="ls --color=auto"

# Case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Zsh-syntax-highlighting and zsh-autosuggestions
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Additional completion definitions for zsh.
# https://github.com/zsh-users/zsh-completions
