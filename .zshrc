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
export PATH="/usr/local/bin/nvim:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi
eval "$(pyenv init -)"

# Created by `pipx` on 2024-08-01 23:13:42
export PATH="$PATH:/Users/loganrohlfs/.local/bin"
