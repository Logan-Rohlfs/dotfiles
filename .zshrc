# Created by newuser for 5.9
# Set starship as the prompt
eval "$(starship init zsh)"

source ~/.zsh_aliases

export EDITOR=nvim

setopt CORRECT
setopt EXTENDED_GLOB

# Case Insensitive AC
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Enable Command History & Share across sessions
HISTFILE=~/.zsh_history
HISTSIZE=9999
SAVEHIST=9999
setopt SHARE_HISTORY

# Enable auto-suggestions based on command history
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable syntax highlighting
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
