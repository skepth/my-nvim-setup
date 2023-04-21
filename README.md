# my-nvim-setup

## Key VIM Shortcuts

Note: Every shortcut described in this section is case sensitive.

### Mode Changes

#### INSERT Mode
* Using `a` will cause vim to go into insert mode but with the cursor to the
right side of the character the curser was pointing to.

* Using `O` will cause vim to go into insert mode but with the cursor on a
newline above from where the curser was currently at.


## Plugins

### File Tree (nvim-tree)

#### TODO;
- [ ] Keymaps to toggle, focus and open/fold directories.
- [ ] Disable cursor horizontal movement when in file tree.
- [ ] Enable git stages icons.
- [ ] Enable auto-resizing three window.
- [ ] Complete checking other features available.
- [ ] ~ Rename nvim tree name.

### Folding based on LSP (nvim-ufo)

#### Keymaps
* `za` toggle fold on whole function if foldable.
* `zM` folds all foldable functions.
* `zR` opens all folded functions.

#### TODO;
- [x] Make folds more visible (maybe highlighted rows).
- [x] Make folds aesthetic.
- [x] Disable folding for small functions. (only 12 lines & above get folded)
- [x] Fold only at the root of the function (no subfolds).
- [x] Keymaps for opening/closing all folds.
- [x] Keymaps for opening/closing one of the functions.

### Language Server (lspconfig)

#### TODO;
- [ ] Keymap to show/hide LSP errors for the language.
- [ ] Kepmap auto-completion selections.
- [ ] ~Format file on save (atleast for go, rust, md, json, proto).

### Color Scheme (rose-pine)

#### TODO;
- [x] Re-configure settings to make colors prettier.
