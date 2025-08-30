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

clone the repository and run install.sh to symlink 

```bash
git clone https://github.com/javed-habeeb/dotfiles.git	~/dotfiles
./install.sh
