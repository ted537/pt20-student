# Installation (ubuntnu)

Download the relevant files from CASLAB by using `./local-setup.sh`

If you get an error about gcc, then run
`sudo apt-get install gcc-multilib`.

When running make, DO NOT run `make install`, as this will overwrite the
stable binaries for `ptc` and `pti`. 