FROM ubuntu:latest

#############################################################################
# docker build --no-cache -t irafbase:1 .
#
#
#  # on the host side, consider using x11docker <irafbase:1>
#  xhost +local:docker
#  docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix    \
#                 -v ~/.Xauthority:/root/.Xauthority  \
#                 -v ~/Observations:/home/wayne/Observations \
#                 -e "DISPLAY=$DISPLAY"                 \
#                 -e XPA_NSINET='0.0.0.0:14285' \
#                 irafbase:2
# When into the container, su -m wayne
#
# The --no-cache will force a complete rebuild... Use after build fails.
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


RUN apt-get install apt-utils

RUN apt-get update

RUN apt-get install -y   \
        x11-apps              \
        x11-utils

RUN apt-get install -y    \
        build-essential       \
        gfortran              \
        cmake                 \
        git                   \
        file                  \
        pkg-config            \
        man-db

RUN apt-get install -y   \
        wget                  \
        curl                  \
        less                  \
        locate                \
        emacs                 \
        emacs-nox             \
        vim                   \
        packaging-dev         \
        net-tools


RUN apt-get install -y  \
        python3               \
        python3-pip

RUN apt-get install -y  \
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


# open man documentation for all the tools
# RUN unminimize


RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y python3.13 python3.13-dev python3.13-venv

# This is 2.18's install from NOAO!!!
# RUN apt-get install iraf iraf-dev # python3-pyraf

RUN useradd -m -s /bin/bash wayne && echo "wayne:secret" | chpasswd
#RUN usermod -aG sudo,dialout wayne
RUN mkdir -p /home/home/wayne/envs

WORKDIR /opt
RUN git clone https://github.com/iraf-community/pyraf.git
 
WORKDIR /opt/pyraf
RUN     cd /opt/pyraf
COPY    ./pyproject.toml .

WORKDIR /home/wayne

CMD ["/bin/bash" ]

