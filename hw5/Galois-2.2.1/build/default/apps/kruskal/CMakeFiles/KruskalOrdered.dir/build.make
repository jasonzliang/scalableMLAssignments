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
include apps/kruskal/CMakeFiles/KruskalOrdered.dir/depend.make

# Include the progress variables for this target.
include apps/kruskal/CMakeFiles/KruskalOrdered.dir/progress.make

# Include the compile flags for this target's objects.
include apps/kruskal/CMakeFiles/KruskalOrdered.dir/flags.make

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o: apps/kruskal/CMakeFiles/KruskalOrdered.dir/flags.make
apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o: ../../apps/kruskal/KruskalOrdered.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/kruskal/KruskalOrdered.cpp"

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/kruskal/KruskalOrdered.cpp" > CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.i

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/kruskal/KruskalOrdered.cpp" -o CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.s

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.requires:
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.requires

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.provides: apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.requires
	$(MAKE) -f apps/kruskal/CMakeFiles/KruskalOrdered.dir/build.make apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.provides.build
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.provides

apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.provides.build: apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o

# Object files for target KruskalOrdered
KruskalOrdered_OBJECTS = \
"CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o"

# External object files for target KruskalOrdered
KruskalOrdered_EXTERNAL_OBJECTS =

apps/kruskal/KruskalOrdered: apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o
apps/kruskal/KruskalOrdered: apps/kruskal/CMakeFiles/KruskalOrdered.dir/build.make
apps/kruskal/KruskalOrdered: src/libgalois.a
apps/kruskal/KruskalOrdered: apps/kruskal/CMakeFiles/KruskalOrdered.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable KruskalOrdered"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KruskalOrdered.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/kruskal/CMakeFiles/KruskalOrdered.dir/build: apps/kruskal/KruskalOrdered
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/build

apps/kruskal/CMakeFiles/KruskalOrdered.dir/requires: apps/kruskal/CMakeFiles/KruskalOrdered.dir/KruskalOrdered.cpp.o.requires
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/requires

apps/kruskal/CMakeFiles/KruskalOrdered.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" && $(CMAKE_COMMAND) -P CMakeFiles/KruskalOrdered.dir/cmake_clean.cmake
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/clean

apps/kruskal/CMakeFiles/KruskalOrdered.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/kruskal" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/kruskal/CMakeFiles/KruskalOrdered.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/kruskal/CMakeFiles/KruskalOrdered.dir/depend

