FROM ubuntu:latest
# /home/git/external/PyrafDocker.pre/Compose/pyraf/Dockerfile
#############################################################################
# docker build -t irafbase:1 .
#
# docker run -it  -v /home/wayne/Configuration:/home/wayne  irafbase:1
#
# docker run -it   irafbase:1
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

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update

ENV USER=wayne
SHELL ["/bin/bash", "-c"]

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


#############################################################################
# Includes IRAF, PyRAF and ds9.
RUN apt-get install -y iraf
RUN apt-get install -y python3-pyraf
RUN apt-get install -y python3.12-venv

RUN mkdir -p /root/data
RUN mkdir -p /root/bin
RUN mkdir -p /root/.iraf
RUN mkdir -p /root/Configuration         # wrangle in local tarballs

COPY ./dockeriraf/ /root/.iraf
COPY ./dockeriraf/ /root/.iraf
COPY ./dot.ds9.ini /root/.ds9.ini
COPY ./dockerroot/.emacs.d /root


# We're inside of a highly privileged Docker container. Don't do this
# on a open file system.

# RUN mkdir -p /home/envs
# WORKDIR /homes/envs
# RUN python3 -m venv pyraf && source /home/envs/pyraf/bin/activate && \
#    pip3 install astropy && \
#    pip3 install numpy   && \
#    pip3 install pandas

WORKDIR /root
RUN python3 -m venv /root/pyraf
ENV PATH="/root/pyraf/bin:$PATH:/root/bin"
ENV VIRTUAL_ENV=/root/pyraf
RUN pip3 install astropy
RUN pip3 install astroquery


# RUN pip3 install numpy
# RUN pip3 install pandas

RUN mkdir -p /root/git
WORKDIR /root/git

### # Make cfitsio for fitsverify
### RUN git clone https://github.com/HEASARC/cfitsio.git
### RUN cd /root/git/cfitsio && ./configure && make && make install
### 
### # Make fitsverify
### WORKDIR /root/Configuration
### RUN tar xzvf fitsverify-4.22.tar.gz && cd fitsverify-4.22 &&  gcc -o fitsverify ftverify.c fvrf_data.c fvrf_file.c fvrf_head.c fvrf_key.c fvrf_misc.c -DSTANDALONE -I/root/git/cfitsio -L/root/git/cfitsio/.libs/  -lcfitsio -lm #  -lnsl
###  Copy ./Configuration/fitsverify-4.22.tar.gz /root/Configuration/fitsverify-4.22.tar.gz


ENV SHELL=/usr/bin/bash

WORKDIR /root

COPY ./dot.ds9.ini /root/.ds9.ini

CMD ["/bin/bash"]

