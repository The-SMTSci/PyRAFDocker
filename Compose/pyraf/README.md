Compose PyRAF for Spectroscopy
==============================

This project uses Docker to isolate the host system quirks that prevent IRAF/PyRAF from running nativly.

The Dockerfile takes pains to create a complete environmnet sans data to support IRAF/PyRAF
to process data. This container relies on the user's .Xauthority and $DISPLAY variables.

The IRAF/PyRAF is the ubuntu:latest's distro image.

The barebones IRAF/PyRAF has been pushed to agree with the Author's development approach.
The loginuser.cl file includes packages and defines foreign routines to leverage
Unix scripts and programs that are found in the Author's ~/bin directory.

An bash alias for pyraf that runs this command is:


```bash
    function pyraf { cd /home/git/external/PyrafDocker.pre/Compose/pyraf;
                     docker compose run --remove-orphans -v /tmp/.X11-unix:/tmp/.X11-unix \
                       -v /home/wayne/.Xauthority:/root/.Xauthority \
                       -v $HOME/Observations:/root/data \
                       -v $HOME/bin:/root/bin \
                       -e DISPLAY=$DISPLAY \
                       -e USER=$USER pyraf /bin/bash
                   }
```

Remember! Deleting files in bin also kills the files in your host machine.


