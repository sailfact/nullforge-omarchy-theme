# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this repository.

## What this repo is

A complete [Omarchy](https://omarchy.org) desktop theme called **Nullforge** — dark, terminal-first, JetBrains Mono throughout. Each file is a drop-in config for one desktop component; they are not compiled or built.

## Install / activation

```bash
cp -r . ~/.config/omarchy/themes/nullforge
omarchy-theme-set nullforge
# Reload daemons if the switcher doesn't:
pkill -SIGUSR2 waybar
makoctl reload
```

## Color palette (single source of truth: `colors.toml`)

All component files must use only these named roles, translated to their hex values when the format requires raw hex:

| Role | Hex | Meaning |
|---|---|---|
| `void` | `#0a1420` | deepest background |
| `null` | `#1a2a3a` | surface / panel background |
| `depth` | `#3d5a75` | subtle accents, inactive borders |
| `slate` | `#7a9bb8` | muted foreground, secondary text |
| `mist` | `#dce6f0` | cyan-ish highlight |
| `parchment` | `#f2ece6` | primary foreground |
| `forge` | `#c4622d` | **primary accent** (borders, selections, cursors) |
| `ember` | `#e8a882` | secondary accent / warm highlight |
| `danger` | `#d97264` | red / errors |
| `ok` | `#8fb27e` | green / success |

`colors.toml` is loaded by Omarchy's theme engine; the individual component files each hardcode the same values. When changing any color, update `colors.toml` **and** every component file that uses it.

## File map

| File | Component | Key variables / selectors |
|---|---|---|
| `alacritty.toml` | Terminal colors | `[colors.*]` sections |
| `btop.theme` | btop process viewer | gradient ramps, box colors |
| `chromium.theme` | Chromium/Electron frame | JSON key-value pairs |
| `hyprland.conf` | Window borders, gaps, animations | `general {}`, `decoration {}` |
| `hyprlock.conf` | Lock screen layout | `background {}`, `label {}`, `input-field {}` |
| `mako.ini` | Notification daemon | INI + `[urgency=*]` sections |
| `neovim.lua` | Neovim highlight groups | `local P = {}` palette table at top of file |
| `swayosd.css` | Volume/brightness OSD | `@define-color` vars |
| `walker.css` | App launcher | `@define-color` vars |
| `waybar.css` | Status bar | `@define-color` vars + module selectors |
| `backgrounds/` | Wallpapers | PNGs, 16:9 and 21:9, three designs |

## Conventions

- **Font**: JetBrains Mono throughout — do not introduce other fonts.
- **Border radius**: 2px everywhere (sharp/angular aesthetic). Do not round up.
- **Border size**: 2px for windows (`hyprland.conf`), 1px for notifications (`mako.ini`).
- **Active border**: always the `forge`→`ember` 45° gradient (`rgb(c4622d) rgb(e8a882) 45deg`).
- **Inactive border**: `rgba(1a2a3a88)` (null at ~53% opacity).
- **CSS files** (`waybar.css`, `walker.css`, `swayosd.css`) use `@define-color` for all colors — no raw hex outside variable declarations.
- **Neovim**: palette lives in `local P = {}` near the top of `neovim.lua`; all `hl()` calls reference `P.*` names, never raw hex strings.
- **Waybar module names** follow Omarchy defaults (`#workspaces`, `#custom-launcher`, etc.).

## Backgrounds

Three designs × two aspect ratios (16:9 and 21:9). Naming: `NN-name-WxH.png` (e.g. `02-type-21x9.png`). Add new wallpapers in the same pattern; do not rename existing ones as Omarchy may reference them by path.
