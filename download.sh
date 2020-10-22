#!/bin/sh
VERSION=20201009
VERSION_ORIG=patch_9Oct2020
wget -O lammps-$VERSION.tar.gz https://github.com/lammps/lammps/archive/$VERSION_ORIG.tar.gz
tar zxvf lammps-$VERSION.tar.gz
mv lammps-$VERSION_ORIG lammps_$VERSION
tar zcvf lammps_$VERSION.orig.tar.gz lammps_$VERSION
rm -rf lammps-$VERSION.tar.gz lammps_$VERSION
