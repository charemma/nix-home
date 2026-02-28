# nix-home

Home Manager configuration for user-level packages. Works on NixOS, Debian, and macOS.

## What goes here

User packages that should be available everywhere: bat, starship, fzf, yazi, claude-code, etc.

Dotfiles (zshrc, nvim config, gitconfig) are managed separately via [chezmoi/dotfiles](https://github.com/charemma/dotfiles).

## Usage

```
just switch               apply home-manager configuration
just update               update flake inputs
just generations          list generations
just gc                   garbage collect old generations
```

## Setup

```
git clone git@github.com:charemma/nix-home.git ~/code/nix-home
cd ~/code/nix-home
nix run home-manager -- switch --flake .
```

## Related

- [nixos-config](https://github.com/charemma/nixos-config) -- NixOS system configuration
- [dotfiles](https://github.com/charemma/dotfiles) -- config files via chezmoi
