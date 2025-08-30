# Dotfiles

personalised dotfiles,mainly '.vimrc' as of now

## features

1.) configured mainly for C
    - uses \r for save,compile and execute while clearing prev output buffer,can be modified to your wish
    - an additional \f while dealing with non-native c libraries,but required to enter the flag. e.g. for math.h,enter \f -lm
    - syntax highlighting	
2.) configured for python
    - always makes sure the tab indent space is set to 4,along with other sytax features
    - syntax highlighting

## usage

clone the repository and run install.sh to symlink 

```bash
git clone https://github.com/javed-habeeb/dotfiles.git	~/dotfiles
./install.sh
