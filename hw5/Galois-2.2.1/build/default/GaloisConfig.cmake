# Config file for the Galois package
# It defines the following variables
#  Galois_INCLUDE_DIRS
#  Galois_LIBRARIES
#  Galois_CXX_COMPILER
#  Galois_CXX_FLAGS

get_filename_component(GALOIS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Galois_INCLUDE_DIRS "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/include;/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/include")
set(Galois_INCLUDE_DIRS ${Galois_INCLUDE_DIRS} "/usr/include")

if(NOT TARGET galois AND NOT Galois_BINARY_DIR)
  include("${GALOIS_CMAKE_DIR}/GaloisTargets.cmake")
endif()

set(Galois_LIBRARIES galois)
set(Galois_CXX_COMPILER "/usr/bin/c++")
set(Galois_CXX_FLAGS "-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS   -g -march=native -std=c++11 -O3 -DNDEBUG")
