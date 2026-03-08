# dotfiles

My personal dotfiles for Linux and macOS.

## Contents

- `zsh` — shell config, aliases, prompt
- `vim` — editor config
- `tmux` — terminal multiplexer config
- `kitty` — terminal emulator config (macOS only)
- `git` — global git config and aliases
- `terraform` — CLI config
- `Brewfile` — Homebrew packages and apps (macOS only)

## Setup

**macOS** — install [Homebrew](https://brew.sh), then restore all packages (includes chezmoi):

```sh
brew bundle
```

**Linux / WSL** — install [chezmoi](https://www.chezmoi.io/install/):

```sh
sh -c "$(curl -fsLS get.chezmoi.io/lb)"
```

Then initialize chezmoi and apply the dotfiles:

```sh
~/.local/bin/chezmoi init --apply https://github.com/atrepca/dotfiles.git
```

Platform-specific files are handled automatically — kitty config and `.zprofile` are excluded on Linux.

## Updating

To pull and apply the latest changes from the remote repo on an already-initialized machine:

```sh
chezmoi update
```
