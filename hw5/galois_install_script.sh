#!/bin/bash
module swap intel gcc/4.7.1
module load cmake/2.8.9
module load boost/1.55.0

cd ~/Desktop/
wget http://iss.ices.utexas.edu/projects/galois/downloads/Galois-2.2.1.tar.gz
tar xvzf Galois-2.2.1.tar.gz
cd Galois-2.2.1/build
mkdir default
cd default

export BOOST_ROOT=/opt/apps/gcc4_7/boost/1.55.0
export CXXFLAGS=-O3
cmake -DCMAKE_INSTALL_PREFIX=~/Desktop/galois ../..
make -j16
make install

#set threads for galois: Galois::setActiveThreads(int)