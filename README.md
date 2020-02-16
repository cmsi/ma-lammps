<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: LAMMPS

### LAMMPS Molecular Dynamics Simulator

### Version

* 20190201-1 (27 Feb 2019)
 
### Provided packages

* lammps - lammps binary
* lammps-data - potentials
* lammps-doc - examples
* liblammps - shared libraries
* liblammps-dev - header files

### Target distributions and architectures

* Debian stretch (amd64, i386)
* Debian jessie (amd64, i386)

### For users

* How to install LAMMPS

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[日本語](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install LAMMPS runtime, data files, and examples

     ```
     suto apt-get install lammps lammps-data lammps-doc
     ```

### For developers

* How to prepare original source tarball

  ```
  VERSION=20190807
  VERSION_ORIG=stable_7Aug2019
  wget -O lammps-$VERSION.tar.gz https://github.com/lammps/lammps/archive/$VERSION_ORIG.tar.gz
  tar zxvf lammps-$VERSION.tar.gz
  mv lammps-$VERSION_ORIG lammps_$VERSION
  tar zcvf lammps_$VERSION.orig.tar.gz lammps_$VERSION
  rm -rf lammps-$VERSION.tar.gz lammps_$VERSION
  ```
