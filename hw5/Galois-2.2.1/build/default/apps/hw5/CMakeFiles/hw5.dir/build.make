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
include apps/hw5/CMakeFiles/hw5.dir/depend.make

# Include the progress variables for this target.
include apps/hw5/CMakeFiles/hw5.dir/progress.make

# Include the compile flags for this target's objects.
include apps/hw5/CMakeFiles/hw5.dir/flags.make

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o: apps/hw5/CMakeFiles/hw5.dir/flags.make
apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o: ../../apps/hw5/hw5.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hw5.dir/hw5.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/hw5/hw5.cpp"

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw5.dir/hw5.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/hw5/hw5.cpp" > CMakeFiles/hw5.dir/hw5.cpp.i

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw5.dir/hw5.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/hw5/hw5.cpp" -o CMakeFiles/hw5.dir/hw5.cpp.s

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.requires:
.PHONY : apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.requires

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.provides: apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.requires
	$(MAKE) -f apps/hw5/CMakeFiles/hw5.dir/build.make apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.provides.build
.PHONY : apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.provides

apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.provides.build: apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o

# Object files for target hw5
hw5_OBJECTS = \
"CMakeFiles/hw5.dir/hw5.cpp.o"

# External object files for target hw5
hw5_EXTERNAL_OBJECTS =

apps/hw5/hw5: apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o
apps/hw5/hw5: apps/hw5/CMakeFiles/hw5.dir/build.make
apps/hw5/hw5: src/libgalois.a
apps/hw5/hw5: apps/hw5/CMakeFiles/hw5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hw5"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/hw5/CMakeFiles/hw5.dir/build: apps/hw5/hw5
.PHONY : apps/hw5/CMakeFiles/hw5.dir/build

apps/hw5/CMakeFiles/hw5.dir/requires: apps/hw5/CMakeFiles/hw5.dir/hw5.cpp.o.requires
.PHONY : apps/hw5/CMakeFiles/hw5.dir/requires

apps/hw5/CMakeFiles/hw5.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" && $(CMAKE_COMMAND) -P CMakeFiles/hw5.dir/cmake_clean.cmake
.PHONY : apps/hw5/CMakeFiles/hw5.dir/clean

apps/hw5/CMakeFiles/hw5.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/hw5" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/hw5/CMakeFiles/hw5.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/hw5/CMakeFiles/hw5.dir/depend
