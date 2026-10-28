# Neovim (LazyVim) cheatsheet

`<leader>` is Space. Press it and wait: which-key shows every available follow-up.

## Contents

- [Find things](#find-things)
- [Scrolling](#scrolling)
- [Jumping back and forth](#jumping-back-and-forth)
- [Files, buffers, windows](#files-buffers-windows)
- [Tabs, buffers and windows](#tabs-buffers-and-windows)
- [Clipboard](#clipboard)
- [Editing habits from Vim](#editing-habits-from-vim)
- [Folds](#folds)
- [Code (LSP)](#code-lsp)
- [Git](#git)
- [CodeDiff](#codediff)
- [Octo (GitHub PRs)](#octo-github-prs)
- [Toggles and appearance](#toggles-and-appearance)
- [Colorschemes installed](#colorschemes-installed)
- [Plugin management](#plugin-management)
- [Claude Code in Neovim](#claude-code-in-neovim)

## Find things

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Find git-tracked files |
| `<leader>fr` | Recent files |
| `<leader>fb` / `<leader>,` | Open buffers |
| `<leader>fc` | Find a config file |
| `<leader>/` / `<leader>sg` | Grep in the project |
| `<leader>sR` | Resume the last search |
| `<leader>sr` | Search and replace |
| `<leader>sk` | Search keymaps |
| `<leader>sh` | Search help pages |
| `<leader>ss` | Symbols in the current file (LSP, needs a server attached) |
| `<leader>sS` | Symbols in the whole project (LSP) |
| `<leader>cs` | Symbols outline side panel (Trouble) |

## Scrolling

| Key | Action |
|---|---|
| `<C-e>` | Scroll the view down one line, cursor stays on its text (**e**xtra line at the bottom) |
| `<C-y>` | Scroll the view up one line (the opposite of `<C-e>`) |
| `10<C-e>` | Same, ten lines at a time |
| `zt` / `zz` / `zb` | Put the cursor line at the top / middle / bottom of the screen |
| `<C-d>` / `<C-u>` | Half page down / up, with the cursor line centred |

`scrolloff = 4` in LazyVim: the cursor gets pushed along when a scroll brings it within four lines of the edge.

## Jumping back and forth

| Key | Action |
|---|---|
| `<C-o>` | Back to the previous position in the jumplist (after `gd`, `gr`, search, `G`, picker jumps) |
| `<C-i>` / `<Tab>` | Forward in the jumplist |
| `<C-t>` | Pop the tag stack (also works after LSP `gd`, and in help pages) |
| `<C-o>` in insert mode | Run one normal-mode command, then return to insert |

## Files, buffers, windows

| Key | Action |
|---|---|
| `<leader>e` | File explorer (project root) |
| `<leader>fE` | File explorer (cwd) |
| `<leader>fn` | New file |
| `<leader>bb` | Switch to the other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>wd` | Close window |
| `<C-h/j/k/l>` | Move between windows |
| `<leader>ft` / `<leader>fT` | Terminal (root / cwd) |
| `<leader>qq` | Quit all |

## Tabs, buffers and windows

A buffer is a file loaded in memory. A window is a split that shows one buffer. A tab page is a layout of windows, not a file: the numbers at the right end of the top bar are tab pages, and CodeDiff opens its own. Closing a tab keeps its buffers open.

| Key | Action |
|---|---|
| `<S-h>` / `<S-l>` | Previous / next buffer |
| `<leader>bb` | Switch to the last buffer |
| `<leader>,` | List open buffers |
| `<leader>bd` | Close the buffer |
| `gt` / `gT` | Next / previous tab (`2gt` goes to tab 2) |
| `<leader><tab>]` / `<leader><tab>[` | Next / previous tab |
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close the tab |
| `<leader><tab>o` | Close every other tab |
| `<leader><tab>f` / `<leader><tab>l` | First / last tab |
| `<C-h/j/k/l>` | Move between windows |
| `<C-w>o` | Close every other window in the tab |

## Clipboard

`clipboard` is empty on purpose: `y`, `d`, `c` and `x` stay inside Neovim, and only the keys below touch the system clipboard. `dd` then `p` still moves a line, as in Vim.

| Key | Action |
|---|---|
| `<leader>y` | Copy to the system clipboard (normal and visual) |
| `<leader>Y` | Copy to the end of the line to the system clipboard |
| `<leader>p` / `<leader>P` | Paste the system clipboard after / before the cursor |
| `<leader>p` (visual) | Replace the selection with the system clipboard, leaving every register untouched |
| `Cmd+V` | Paste from the terminal in any mode; it skips registers, so `.` cannot repeat it |
| `<leader>fy` / `<leader>fY` | Copy the buffer path (relative / absolute) to the system clipboard |

## Editing habits from Vim

| Key | Action |
|---|---|
| `jj` / `<C-c>` | Leave insert mode |
| `J` / `K` (visual) | Move the selected lines down / up |
| `n` / `N` | Next / previous search result, centred |
| `Q` | Disabled (no Ex mode) |

Line numbers turn absolute while you are in insert mode and go back to relative when you leave it.

## Folds

Octo's diff windows fold every unchanged region, so a diff there shows only the hunks. CodeDiff folds nothing unless compact mode is on (`gc`).

| Key | Action |
|---|---|
| `zR` | **R**eveal: open every fold, so you see the whole file |
| `zM` | **M**inimize: close every fold |
| `zo` / `zc` | Open / close the fold under the cursor |
| `za` | Toggle the fold under the cursor |

## Code (LSP)

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | References |
| `gI` | Implementations |
| `gy` | Type definition |
| `K` | Hover docs |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename |
| `<leader>cf` | Format |
| `<leader>cd` | Line diagnostics |
| `]d` / `[d` | Next / previous diagnostic |
| `<leader>xx` | All diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>cgd` / `cgr` / `cgy` / `cgi` | Glance: definitions / references / type / implementations |

## Git

| Key | Action |
|---|---|
| `<leader>gc` | CodeDiff (see the CodeDiff section below) |
| `<leader>gg` | Lazygit |
| `<leader>gs` | Git status |
| `<leader>gd` | Diff of hunks |
| `<leader>gl` | Git log |
| `<leader>gb` | Blame line |
| `<leader>ghp` | Preview hunk |
| `]h` / `[h` | Next / previous hunk |

## CodeDiff

| Where | Key | Action |
|---|---|---|
| Anywhere | `<leader>gc` | Open CodeDiff |
| Anywhere | `:CodeDiff file HEAD` | Diff only the current file |
| Anywhere | `:CodeDiff main...` | Diff everything on your branch since it split from `main` |
| Any CodeDiff window | `q` | Close CodeDiff |
| Any CodeDiff window | `gt` / `gT` | Switch to the next / previous tab and leave CodeDiff open |
| Diff panes | `\b` | Hide or show the file list |
| Diff panes | `\e` | Move into the file list |
| File list | `<C-l>` (or `<C-w>l`) | Move from the list into the diff |
| Left diff pane | `<C-h>` | Move back to the file list |
| File list | `<CR>` | Open the diff for the file under the cursor (the cursor stays in the list) |
| File list | `K` | Show the full path of the file under the cursor |
| File list | `i` | Switch between tree view (default) and list view |
| Diff panes | `]c` / `[c` | Next / previous change |
| Diff panes | `]f` / `[f` | Next / previous file |
| Diff panes or list | `-` | Stage or unstage the file |
| Diff panes | `<leader>hs` / `<leader>hu` / `<leader>hr` | Stage / unstage / discard the hunk |
| Diff panes | `t` | Switch between side-by-side and inline |
| Diff panes | `gf` | Open the file in your normal tab |
| Diff panes | `g?` | Show all CodeDiff keymaps |
| Diff panes | `:set scb` in each pane, then `:syncbind` | Re-sync scrolling if the panes come apart |
| Normal buffer | `<leader>ghp` | Preview the hunk under the cursor (gitsigns) |
| Normal buffer | `<leader>ghd` | Diff the file against the index (gitsigns) |

`\` is the local leader: press the backslash key, then the letter, with no Space. CodeDiff uses it so `<leader>b` and `<leader>e` keep their LazyVim meaning inside the diff.

Both panes scroll together vertically and horizontally (`scrollopt` includes `hor` in `lua/config/options.lua`).

## Octo (GitHub PRs)

Octo reads and writes through `gh`, so it only sees pushed PRs. Its review diff is always side by side: there is no unified view. `\` is the local leader (backslash, then the letter).

| Where | Key | Action |
|---|---|---|
| Anywhere | `<leader>gp` / `<leader>gP` | List / search PRs |
| Anywhere | `<leader>gi` / `<leader>gI` | List / search issues |
| Anywhere | `<leader>gr` / `<leader>gS` | List repos / search |
| Anywhere | `:Octo pr edit 123` | Open PR 123 |
| PR buffer | `:Octo review start` | Start the review: file panel at the bottom, two diff windows on top |
| Review | `\vs` | Submit: write the summary, then `<C-m>` comment, `<C-a>` approve, `<C-r>` request changes |
| Review | `\vd` / `\vr` | Discard / resume the pending review |
| Review | `<C-c>` | Close the review tab |
| Review | `:Octo review comments` | List pending comments (`<CR>` jumps to one) |
| Diff | `\ca` | Add a comment on the line or visual selection, then `:w` to save it |
| Diff | `\sa` | Add a suggestion, then `:w` |
| Diff | `]t` / `[t` | Next / previous thread |
| Diff | `gf` | Go to the file |
| Diff | `zR` | Open every fold to see the whole file |
| Thread window | `\cr` | Reply |
| Thread window | `\cd` | Delete the comment |
| Thread window | `\ce` | Show the comment's edit history |
| Thread window | `\rt` / `\rT` | Resolve / unresolve the thread |
| Diff or panel | `\<space>` | Mark the file as viewed or not |
| Diff or panel | `]q` / `[q` | Next / previous file |
| Diff or panel | `]u` / `[u` | Next / previous unviewed file |
| Diff or panel | `\b` | Hide or show the file panel |
| Diff or panel | `\e` | Move into the file panel |
| Panel | `<CR>` | Open the file under the cursor |
| Panel | `R` | Refresh the file list |
| Panel | `\C` | Review a single commit of the PR |

To edit one of your comments, put the cursor on its line, move to the thread window, change the text and save with `:w`.

## Toggles and appearance

| Key | Action |
|---|---|
| `<leader>uC` | Pick a colorscheme with live preview |
| `<leader>uw` | Toggle wrap |
| `<leader>ul` | Toggle line numbers |
| `<leader>uc` | Toggle conceal level |

## Colorschemes installed

`light2026` (current, set in `lua/plugins/colorscheme.lua`), `dark2026`, `catppuccin`, `tokyonight`.
Try one for the session with `:colorscheme dark2026`. The `vscode2026.nvim` themes are lazy-loaded, so type their names in full instead of tab-completing.

## Plugin management

| Command | Action |
|---|---|
| `:Lazy` | Plugin manager |
| `:Mason` | Install LSP servers and tools |
| `:LazyExtras` | Enable or disable LazyVim extras |
| `:checkhealth` | Diagnose problems |

## Claude Code in Neovim

Claude runs in a right-hand split (30% width) through `claudecode.nvim`. The process lives as long as Neovim does.

| Key | Action |
|---|---|
| `<leader>ac` | Show / hide the Claude terminal (the session stays alive) |
| `<leader>af` | Focus Claude; if the cursor is already inside it, hide it and go back |
| `<leader>ar` | Resume a previous session (`--resume`) |
| `<leader>aC` | Continue the latest conversation (`--continue`) |
| `<leader>ab` | Add the current buffer as an `@file` mention |
| `<leader>as` | Visual mode: send the selection as `@file#Lx-y`. In the explorer: add the file under the cursor |
| `<leader>aa` / `<leader>ad` | Accept / deny a diff Claude proposes |
| `<S-CR>` | Newline in the prompt without sending (terminal mode) |
| `<C-\><C-n>` | Leave terminal mode so `<C-w>h` / `<C-w>l` work |
| `:ClaudeCodeClose` | Kill the Claude process and lose that session |

Several comments in one turn: repeat select + `<leader>as`, type each comment in the prompt, and press Enter only at the end.
