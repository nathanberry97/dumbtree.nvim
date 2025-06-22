# Dumbtree.nvim

> A neovim file tree using netrw so simple it's dumb

## Preview

![image](.img/preview.png)

> Features included in Dumbtree.nvim:
> - Toggle for file tree

## Overview

The main reason for creating this plugin was due to wanting a simple toggle for
netrw to view files without needing to install a nerd font and 10 other things;
I know I'm probably the only dev who doesn't like using nerd fonts, shoot me.

### Installation

#### Lazy

```lua
{
    'nathanberry97/dumbtree.nvim'
}
```

#### Packer

```lua
use {
    'nathanberry97/dumbtree.nvim'
}
```

### Setup

> [`:h dumbtree.nvim`](./doc/dumbtree.txt)

Once installed you will need to add the following to your config to initialise
the plugin:

```lua
-- Setup dumbtree configuration
require('dumbtree').setup()
```

### Key mappings

In terms of using the functionality of the plugin I have defined one custom
keymapping to toggle the file tree:

```lua
    vim.keymap.set('n', '<leader>b', ToggleNetrw, { noremap = true, silent = true })
```

This results in you being able to press your leader key followed by b to
toggle the file tree on and off.

Also the following keymapping to go to netrw on the whole page:

```lua
    vim.keymap.set('n', '-', ':Ex<CR>')
```

I find this keymapping quite usful as it is the same to go back within netrw.
