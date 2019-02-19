# ma-lammps

## How to prepare lammps source tarball

* Download source files (lammps-stable.tar.gz) from http://lammps.sandia.gov/download.html
   ```
   VERSION=20181212
   VERSION_ORIG=12Dec2018
   wget https://github.com/lammps/lammps/archive/stable_$VERSION_ORIG.tar.gz
   tar zxvf stable_$VERSION_ORIG.tar.gz
   mv lammps-stable_$VERSION_ORIG lammps_$VERSION
   tar zcvf lammps_$VERSION.orig.tar.gz lammps_$VERSION
   rm -rf stable_$VERSION_ORIG.tar.gz lammps_$VERSION
   ```
