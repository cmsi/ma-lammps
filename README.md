<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: LAMMPS

### LAMMPS Molecular Dynamics Simulator

### Version

* see debian/changelog
 
### Provided packages

* lammps - lammps binary
* lammps-data - potentials
* lammps-doc - examples
* liblammps - shared libraries
* liblammps-dev - header files

### Target distributions and architectures

* Debian buster (amd64, i386)
* Ubuntu focal (amd64)
* Ubuntu bionic (amd64)

### For users

* How to install LAMMPS

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[日本語](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install LAMMPS runtime, data files, and examples

     ```
     suto apt-get install lammps lammps-data lammps-doc
     ```
