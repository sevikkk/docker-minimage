#!/bin/sh -e -x

make
mkdir img
mkdir img/bin
cp echo mkdir true pause img/bin
tar cvf - -C img . |docker import -c 'CMD ["/bin/pause"]' - smartbear/minimage

