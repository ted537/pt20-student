#!/bin/bash

# note: you need to paste your password a bunch of times

# change this
netid=16tlcb
server=linux1.caslab.queensu.ca

dirs_to_copy="
    /caslab_linux/caslab/lib/pt
    /caslab_linux/caslab/lib/ssl
    /opt/caslab/lib/pt
    /opt/caslab/lib/ssl
"

files_to_copy="
    /caslab_linux/caslab/bin/ptc
    /caslab_linux/caslab/bin/pti
    /caslab_linux/caslab/bin/ssl
    /caslab_linux/caslab/bin/ssltrace
"

for dir in $dirs_to_copy; do
    sudo mkdir -p $dir
    sudo rsync -r -e ssh \
        ${netid}@${server}:$dir/ $dir
done

sudo mkdir -p /caslab_linux/caslab/bin
for file in $files_to_copy; do
    sudo scp ${netid}@${server}:$file $file
done

# get tools on PATH via symbolic links
sudo ln -s /caslab_linux/caslab/bin/ptc /usr/local/bin/ptc
sudo ln -s /caslab_linux/caslab/bin/pti /usr/local/bin/pti
sudo ln -s /caslab_linux/caslab/bin/ssl /usr/local/bin/ssl
sudo ln -s /caslab_linux/caslab/bin/ssltrace /usr/local/bin/ssltrace
sudo ln -s /opt/caslab/lib/pt /usr/local/lib/pt

mkdir lib bin