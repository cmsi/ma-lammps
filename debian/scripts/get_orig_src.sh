#!/bin/bash

# The script creates a tar.xz tarball from git-repository of LAMMPS-project
# ./get_orig_src.sh commitID   -   creates a tarball of specified commit
# ./get_orig_src.sh   - creates a tarball of the latest version
# Packages, that needs to be installed to use the script:
# atool, git-core

git clone https://github.com/lammps/lammps.git git_temp_packaging

cd git_temp_packaging

if [ $1 ]
then
    echo 'Checking out the revision ' $1
    git checkout -b newvers $1
else
    echo 'Using the latest revision'
fi 

GIT_REV=$(git log -n 1 --pretty="format:%h")
GIT_DAT=$(git log -n 1 --pretty="format:%ai")
GIT_DAT=${GIT_DAT:0:10}
GIT_DAT=$(echo $GIT_DAT | sed 's/-//g')

VER_DEB=0~$GIT_DAT.git$GIT_REV
FOLDER_NAME=lammps-0~$GIT_DAT.git$GIT_REV
TARBALL_NAME=lammps_0~$GIT_DAT.git$GIT_REV.orig.tar.xz

echo $VER_DEB
echo $FOLDER_NAME
echo $TARBALL_NAME

cd ..

mv git_temp_packaging $FOLDER_NAME 
rm -rf $FOLDER_NAME/.git 
find $FOLDER_NAME/doc/_static/ -name *.js -exec rm -rf {} \;
find $FOLDER_NAME/ -name .gitignore -exec rm -rf {} \;
rm -rf $FOLDER_NAME/doc/utils/sphinx-config

tar Jcvf $TARBALL_NAME $FOLDER_NAME
