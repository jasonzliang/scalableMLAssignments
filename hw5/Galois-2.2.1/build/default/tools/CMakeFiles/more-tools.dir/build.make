# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default"

# Utility rule file for more-tools.

# Include the progress variables for this target.
include tools/CMakeFiles/more-tools.dir/progress.make

tools/CMakeFiles/more-tools:

more-tools: tools/CMakeFiles/more-tools
more-tools: tools/CMakeFiles/more-tools.dir/build.make
.PHONY : more-tools

# Rule to build all files generated by this target.
tools/CMakeFiles/more-tools.dir/build: more-tools
.PHONY : tools/CMakeFiles/more-tools.dir/build

tools/CMakeFiles/more-tools.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && $(CMAKE_COMMAND) -P CMakeFiles/more-tools.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/more-tools.dir/clean

tools/CMakeFiles/more-tools.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/tools" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/CMakeFiles/more-tools.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tools/CMakeFiles/more-tools.dir/depend

