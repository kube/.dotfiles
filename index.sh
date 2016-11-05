
      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

HERE=$(cd $(dirname "$0");pwd)

# Source all scripts
for script in $HERE/scripts/*.sh
do
  source $script
done
