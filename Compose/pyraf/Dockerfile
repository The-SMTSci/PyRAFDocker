FROM ubuntu:latest

#############################################################################
# docker build -t irafbase:1 .
#
# docker run -it  -v /home/wayne/Configuration:/home/wayne  irafbase:1
#
# docker run -it   irafbase:1
#
#
#
#  # on the host side, consider using x11docker <irafbase:1>
#  xhost +local:docker
#  docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix    \
#                 -v ~/.Xauthority:/root/.Xauthority  \
#                 -e DISPLAY=$DISPLAY                 \
#                 irafbase:1
#
#
#
# docker image rm -f irafbase:1
#
# add all docker container access to this machine.
# xhost +si:inet:172.17.0.0/24
#
# configure shared paths from Docker -> Preferences... -> Resources -> File Sharing
#
# apt --no-install-recommends don't drag in recommend ancillary packages
#
#############################################################################

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update


RUN apt-get install -y apt-utils

RUN apt-get update

RUN apt-get install -y   --no-install-recommends \
        x11-apps              \
        x11-utils

RUN apt-get install -y    --no-install-recommends \
        build-essential       \
        gfortran              \
        cmake                 \
        git                   \
        file                  \
        pkg-config

RUN apt-get install -y  --no-install-recommends \
        libcurl4-gnutls-dev   \
        swig                  \
        netpbm                \
        wcslib-dev            \
        wcslib-tools          \
        zlib1g-dev            \
        libbz2-dev            \
        libcairo2-dev         \
        libcfitsio-dev        \
        libcfitsio-bin        \
        libgsl-dev            \
        libjpeg-dev           \
        libnetpbm10-dev       \
        libpng-dev            \
        kmod

RUN apt-get install -y   --no-install-recommends \
        wget                  \
        curl                  \
        less                  \
        locate                \
        emacs                 \
        emacs-nox             \
        vim                   \
        packaging-dev         \
        net-tools


RUN apt-get install -y  --no-install-recommends \
        python3               \
        python3-pip


#        unionfs-fuse

RUN apt-get install -y --no-install-recommends      \
        libeigen3-dev         \
        libgtk2.0-dev         \
        libgtk-3-dev          \
        mesa-utils            \
        freeglut3-dev         \
        libwxgtk3.2-dev       \
        libnova-dev           \
        libopencv-dev         \
        libogg-dev

RUN apt-get install -y iraf
RUN apt-get install -y python3-pyraf
RUN apt-get install -y python3.12-venv

RUN mkdir -p /home/data

# We're inside of a highly privileged Docker container. Don't do this
# on a open file system.

# RUN mkdir -p /home/envs && cd /home/envs
# 
# RUN python3 -m venv pyraf && source /home/envs/pyraf/bin/activate && \
#   pip3 install astropy && \
#   pip3 install numpy   && \
#   pip3 install pandas

WORKDIR /home

CMD ["/usr/bin/bash" "-c" "/usr/bin/pyraf" ]

