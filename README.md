# My Neovim Configuration

![My_Neovim_thumbnail](https://res.cloudinary.com/zen-coffee/image/upload/v1726065752/thumbnail/nvim-thumbnail_yjmwsf.png)

This is my personal Neovim configuration. It is a work in progress and I am constantly tweaking it to make it better. I have tried to keep it as minimal as possible and only include the plugins that I find useful.

## Installation
 1. Remove the previous data
	```bash
	rm -rf ~/.config/nvim 
	rm -rf ~/.local/state/nvim 
	rm -rf ~/.local/share/nvim
	 ```
 2. Go to neovim configuration directory
	 ```bash
	 cd ~./config/nvim
	 ```
 3.  Clone this repository
	 ```bash
	 git clone https://github.com/zidanhafiz/nvim-config.git
	 ```
 4. There you go!
	 ```bash
	 nvim
	 ```

## Features
- **Lazy**: I use `lazy` to manage plugins. This means that plugins are only loaded when they are needed.
- **Alpha**: I use Alpha as dashboard for Neovim. It provides a nice looking start screen.
- **Mason**: I use Mason to manage my LSP.
- **LSP**: I use the built-in LSP client in Neovim to provide language server features.
- **Treesitter**: I use Treesitter for syntax highlighting and code folding.
- **Telescope**: I use Telescope for fuzzy finding and file browsing.
- **Lualine**: I use Lualine for the status line.
- **Neotree**: I use Neotree for file browsing.
- **Bufferline**: I use Bufferline for buffer management.
- **Gitsigns**: I use Gitsigns for Git integration.
- **None-ls**: I use None-ls for formatting code.
- **Github/Copilot**: I use Github Copilot for AI autocompletion.
- **CopilotChat**: I use copilotchat for chat integration.
- **Minipairs**: I use Minipairs for auto closing brackets.
- **DAP**: I use DAP for debugging.
- **Catppuccin**: I use Catppuccin for color scheme.

## Languages Supported
- **HTML**
- **CSS**
- **Lua**
- **Python**
- **JavaScript**
- **TypeScript**
- **Go**

## File Structure
nvim/
├── init.lua
└── lua/
    ├── plugins/
    └── config/
        └── lazy.lua

- **init.lua**: This is the main configuration file.
- **lua/**: This directory contains all the Lua configuration files.
- **lua/plugins/**: This directory contains all the plugins.
- **lua/config/lazy.lua**: This file contains the lazy loading configuration.

