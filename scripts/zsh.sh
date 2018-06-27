
      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

# Lambda Prompt
PROMPT='%F{12}λ%f '

fpath=(/Users/kube/.zsh/plugins/zsh-completions/src $fpath)

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:]}={[:upper:]}'

autoload -Uz compinit
compinit
