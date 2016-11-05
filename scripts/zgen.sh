source $HOME/.zgen/zgen.zsh

# If init script does not exist
if ! zgen saved; then

  zgen oh-my-zsh
  zgen oh-my-zsh themes/miloshadzic
  zgen load zsh-users/zsh-syntax-highlighting

  zgen save
fi
