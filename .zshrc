# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pascal/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file


DEFAULT_USER=pascal

#
# Antigen
#
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
# antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme robbyrussell
# antigen theme avit
# antigen theme agnoster

antigen apply


#
# Powerline
#
# if [[ -r /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#  source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
# fi
