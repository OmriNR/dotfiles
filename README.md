# dotfiles

My Hyprland setup on CachyOS.

| Path | What |
| --- | --- |
| `.config/hypr/` | Hyprland config (Lua), split into modules under `config/` |
| `.config/noctalia/` | Noctalia shell: bar, panels, wallpaper-based theming |
| `.config/kitty/` | Kitty terminal |
| `wallpapers/` | Submodule of [D3Ext/aesthetic-wallpapers](https://github.com/D3Ext/aesthetic-wallpapers) |

## Install

```sh
git clone --recurse-submodules <this-repo-url> ~/dotfiles
~/dotfiles/install.sh
```

`install.sh` symlinks each config dir into `~/.config/` and links `~/aesthetic-wallpapers` to the wallpaper submodule. Anything already there gets backed up first.

## Wallpaper keybinds

- `SUPER + SHIFT + W`: wallpaper panel
- `SUPER + ALT + Left/Right`: previous/next wallpaper
- `SUPER + ALT + R`: random wallpaper
