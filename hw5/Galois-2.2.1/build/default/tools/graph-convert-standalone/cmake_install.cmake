# Install script for directory: /home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/tools/graph-convert-standalone

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")
  IF(EXISTS "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone"
         RPATH "")
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin" TYPE EXECUTABLE FILES "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/graph-convert-standalone/graph-convert-standalone")
  IF(EXISTS "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois/bin/graph-convert-standalone")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")

