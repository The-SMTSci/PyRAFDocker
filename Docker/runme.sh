#!/bin/bash
#############################################################################
# Docker irafbase
#############################################################################
function usage {
   echo "asolvelog <asolve log filenames>"
   echo "For each file, remove goofy characters from solve-field's log."
}


##############################################################################
# 
# Moving parts:
#
# --user $(id -u):$(id -g)            -- tie the user/group together
# -v ~/.Xauthority:/root/.Xauthority  -- Tie X credentuals
# -e DISPLAY=$DISPLAY                 -- X11 neweds this
# 
# Hook up my observations and bin directories.
#              --net=host
##############################################################################

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix           \
              -v ~/.Xauthority:/root/.Xauthority          \
              -v ~/bin:/home/wayne/bin                    \
              -v ~/.Observations:/home/wayne/Observations \
              --user $(id -u):$(id -g)                    \
              -e DISPLAY=$DISPLAY                         \
C              --net=host                                  \
              irafbase:1

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix           \
              -v ~/.Xauthority:/root/.Xauthority          \
              -e DISPLAY=$DISPLAY                         \
              irafbase:3

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix           \
              -v ~/.Xauthority:/root/.Xauthority          \
              -e DISPLAY=$DISPLAY                         \
              irafbase:3


