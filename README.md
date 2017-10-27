# ma-lammps

## How to prepare lammps source tarball

* Download source files (lammps-stable.tar.gz) from http://lammps.sandia.gov/download.html
   ```
   VERSION=0~20170811.malive
   VERSION_ORIG=11Aug17
   tar zxvf lammps-stable.tar.gz
   mv lammps-$VERSION_ORIG lammps_$VERSION
   tar zcvf lammps_$VERSION.orig.tar.gz lammps_$VERSION
   ```
