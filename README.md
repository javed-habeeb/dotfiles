# Dotfiles

personalised dotfiles,mainly '.vimrc' as of now

## features

### Config for C development
- Custom keybindings:
  - `\r` → save, compile, and execute (clears previous output buffer)
  - `\f` → compile with extra flags (useful for non-native C libraries, e.g. `-lm` for `math.h`)
- Syntax highlighting

### Config for python development
- Enforces 4-space indentation
- Syntax highlighting

### Assembly (uses nasm x86)
- Highlights comments in red

## usage

clone the repository
copy/replace the whole file to use as your .vimrc
open your vim text editor and type 
`:source ~/.vimrc` 

refer the code down below for usage
```bash
git clone https://github.com/javed-habeeb/dotfiles.git
cd ~/dotfiles
```
## uninstall
if you ever feel to revert back to regular vim.clear or delete the whole .vimrc file

