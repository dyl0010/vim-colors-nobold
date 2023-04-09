# Overview

[vim-colors-nobold](https://gitlab.com/tomac/vim-colors-nobold) is a
collection of [Vim](https://www.vim.org) color schemes, with "bold" attribute
removed in GUI and terminal, but not in text console. I wasn't entirely happy
with how fonts, which I use in Vim, looked when rendered in bold, so I decided
to create modified versions of my favourite Vim color schemes, with "bold"
attribute removed. At the same time, I didn't want new color schemes to look
different in text console, compared to original color schemes.

In some cases, I also changed colors of some of the elements - for example, to
make active and inactive status lines look different.

The collection is split into two parts:

* **base**:
  * Contains color schemes based on the 18 standard schemes shipped with Vim.
  * Requires standard Vim color schemes to be present locally.
* **extra**:
  * Contains additional color schemes, based on schemes created
    by Vim users.
  * Does not require original color schemes to be present locally.
    This is because "extra" color schemes include code from original
    scripts, with permission from their authors.

Sample screenshots can be found here:
https://gitlab.com/tomac/vim-colors-nobold/wikis/screenshots

# Installation

1. Download vim-colors-nobold scripts. Available sources:
  * vim-colors-nobold git repository:
    `git clone https://gitlab.com/tomac/vim-colors-nobold.git`
  * Archives available on "releases" page on GitLab:
    https://gitlab.com/tomac/vim-colors-nobold/-/releases
  * Scripts repository on vim.org.
    Direct link: https://www.vim.org/scripts/script.php?script_id=5708.
    Or, search for "vim-colors-nobold" here: https://www.vim.org/scripts/index.php
2. Copy `*.vim` scripts from `base` and `extra` directories (all of them, or
   just ones you're interested in) to directory below - don't create any
   subdirectories there. If the directory does not exist, then create it.
  * Unix: `~/.vim/colors`
  * Windows: `C:\Users\your_user_name\vimfiles\colors`
