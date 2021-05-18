#!/bin/sh
VERSION=20210514
VERSION_ORIG=patch_14May2021
wget -O $VERSION_ORIG.tar.gz https://github.com/lammps/lammps/archive/$VERSION_ORIG.tar.gz
tar zxvf $VERSION_ORIG.tar.gz
mv lammps-$VERSION_ORIG lammps-$VERSION
tar zcvf lammps-$VERSION.tar.gz lammps-$VERSION
rm -rf $VERSION_ORIG.tar.gz lammps-$VERSION

