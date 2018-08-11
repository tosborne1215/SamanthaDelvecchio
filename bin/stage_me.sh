#!/bin/bash

#I want this script to
# Accepts Argument Tag
TAG=$1

# Cleanup tmp directory
rm -Rf /tmp/SamanthaDelvecchioStaging/
rm -f /tmp/SamanthaDelvecchio.$TAG.tar.gz

# Clone to tmp directory
git clone . /tmp/SamanthaDelvecchioStaging/

# checkout tag
cd /tmp/SamanthaDelvecchioStaging/
git checkout tags/$TAG

# Zip Clone
tar -czvf /tmp/SamanthaDelvecchio.$TAG.tar.gz .

# scp Clone to vultr.staging.coldones:/tmp/
scp /tmp/SamanthaDelvecchio.$TAG.tar.gz vultr.staging.coldones:/tmp/

# on host:
# unpack contents into directory with name SamanthaDelvecchio-$TAG
ssh -t root@vultr.staging.coldones "mkdir ~/SamanthaDelvecchio-$TAG && tar -xvzf /tmp/SamanthaDelvecchio.$TAG.tar.gz -C ~/SamanthaDelvecchio-$TAG"
