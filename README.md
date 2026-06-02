# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
git clone git@github.com:Logan-Rohlfs/dotfiles.git ~/git/dotfiles
cd ~/git/dotfiles
./install.sh
```

`install.sh` runs `stow --target="$HOME" .`, which creates symlinks in `$HOME` mirroring the structure of this repo.

## What's tracked

| Symlink | Source |
|---------|--------|
| `~/.zshrc` | zsh config (Oh My Zsh, Powerlevel10k, aliases) |
| `~/.p10k.zsh` | Powerlevel10k prompt config |
| `~/.gitconfig` | git config with delta pager |
| `~/.ripgreprc` | ripgrep defaults |
| `~/.fzf.zsh` | fzf zsh integration |
| `~/.fzf.bash` | fzf bash integration |
| `~/.config/thefuck/settings.py` | thefuck config |

## Adding a new dotfile

```bash
mv ~/.some-config ~/git/dotfiles/.some-config
cd ~/git/dotfiles
stow --target="$HOME" .
git add .some-config && git commit -m "Add .some-config"
```

## Prerequisites (macOS)

```bash
brew install stow oh-my-zsh fzf zoxide zsh-autosuggestions zsh-syntax-highlighting zsh-completions eza ripgrep fd thefuck
```

Powerlevel10k theme for Oh My Zsh:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
