#!/usr/bin/env bash
# Symlink dotfiles into place. Existing non-symlink targets are backed up with a .bak-<timestamp> suffix.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

git -C "$DOTFILES" submodule update --init --recursive

link() {
    local src="$1" dst="$2"
    mkdir -p "$(dirname "$dst")"
    if [ -e "$dst" ] && [ ! -L "$dst" ]; then
        mv "$dst" "$dst.bak-$STAMP"
        echo "backed up $dst -> $dst.bak-$STAMP"
    fi
    ln -sfn "$src" "$dst"
    echo "linked $dst -> $src"
}

for dir in hypr noctalia kitty; do
    link "$DOTFILES/.config/$dir" "$HOME/.config/$dir"
done

# Noctalia's wallpaper directory and the Hyprland binds point here
link "$DOTFILES/wallpapers" "$HOME/aesthetic-wallpapers"
