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

# Include any dependencies generated for this target.
include apps/independentset/CMakeFiles/independentset.dir/depend.make

# Include the progress variables for this target.
include apps/independentset/CMakeFiles/independentset.dir/progress.make

# Include the compile flags for this target's objects.
include apps/independentset/CMakeFiles/independentset.dir/flags.make

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o: apps/independentset/CMakeFiles/independentset.dir/flags.make
apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o: ../../apps/independentset/IndependentSet.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/independentset.dir/IndependentSet.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/independentset/IndependentSet.cpp"

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/independentset.dir/IndependentSet.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/independentset/IndependentSet.cpp" > CMakeFiles/independentset.dir/IndependentSet.cpp.i

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/independentset.dir/IndependentSet.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/independentset/IndependentSet.cpp" -o CMakeFiles/independentset.dir/IndependentSet.cpp.s

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.requires:
.PHONY : apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.requires

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.provides: apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.requires
	$(MAKE) -f apps/independentset/CMakeFiles/independentset.dir/build.make apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.provides.build
.PHONY : apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.provides

apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.provides.build: apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o

# Object files for target independentset
independentset_OBJECTS = \
"CMakeFiles/independentset.dir/IndependentSet.cpp.o"

# External object files for target independentset
independentset_EXTERNAL_OBJECTS =

apps/independentset/independentset: apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o
apps/independentset/independentset: apps/independentset/CMakeFiles/independentset.dir/build.make
apps/independentset/independentset: src/libgalois.a
apps/independentset/independentset: apps/independentset/CMakeFiles/independentset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable independentset"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/independentset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/independentset/CMakeFiles/independentset.dir/build: apps/independentset/independentset
.PHONY : apps/independentset/CMakeFiles/independentset.dir/build

apps/independentset/CMakeFiles/independentset.dir/requires: apps/independentset/CMakeFiles/independentset.dir/IndependentSet.cpp.o.requires
.PHONY : apps/independentset/CMakeFiles/independentset.dir/requires

apps/independentset/CMakeFiles/independentset.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" && $(CMAKE_COMMAND) -P CMakeFiles/independentset.dir/cmake_clean.cmake
.PHONY : apps/independentset/CMakeFiles/independentset.dir/clean

apps/independentset/CMakeFiles/independentset.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/independentset" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/independentset/CMakeFiles/independentset.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/independentset/CMakeFiles/independentset.dir/depend

