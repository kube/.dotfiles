#!/bin/sh

      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

case "$(uname -s)" in
  Darwin)
    sh install_mac.sh;;

  Linux)
    sh install_linux.sh;;

  CYGWIN*|MINGW32*|MSYS*)
    echo 'Windows is unsupported'
    exit 1;;

  *)
    echo 'Unsupported OS'
    exit 1;;
esac
