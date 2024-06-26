#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# Workaround SSL proxy wonkiness
sudo /nix/var/nix/profiles/default/bin/nix-channel --update nixpkgs

# install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages
