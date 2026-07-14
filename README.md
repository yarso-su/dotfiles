# dotfiles 🔧

My personal development environment configuration for Arch Linux.

## Purpose

This repository exists to persistently store my personal environment configuration and make it easy to replicate my setup across machines.

## Key Components

The most important pieces that make this setup work for me:

- **tmux** — Session and window management
- **Neovim** — Primary editor with LSP support and minimal configuration

## Installation

Clone the repository and create symlinks as needed:

```bash
git clone https://github.com/yarso-su/dotfiles.git ~/dotfiles
# Create symlinks manually based on your preferences
```
### Nice to have

`xclip`, `maim`, `dunst`, `lsd`, `brightnessctl`, and `nautilus`.

#### Completely optional

- **noto-fonts** - Basic fonts ("noto-fonts", "noto-fonts-cjk", "noto-fonts-extra", "noto-fonts-emoji")
- **rofimoji** - Emoji picker (dmenu compatible) (requires "xdotool")
- **imagemagick** - Image manipulation (requires "xclip")

#### NvChad Preferred themes

- catppuccin-latter
- solarized_osaka

> [!NOTE]
> All content in this repository is free to use. Feel free to use it as a reference or integrate it directly into your own configuration.
