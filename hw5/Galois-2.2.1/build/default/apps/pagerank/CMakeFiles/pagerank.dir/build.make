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
include apps/pagerank/CMakeFiles/pagerank.dir/depend.make

# Include the progress variables for this target.
include apps/pagerank/CMakeFiles/pagerank.dir/progress.make

# Include the compile flags for this target's objects.
include apps/pagerank/CMakeFiles/pagerank.dir/flags.make

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o: apps/pagerank/CMakeFiles/pagerank.dir/flags.make
apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o: ../../apps/pagerank/PageRank.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pagerank.dir/PageRank.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/pagerank/PageRank.cpp"

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pagerank.dir/PageRank.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/pagerank/PageRank.cpp" > CMakeFiles/pagerank.dir/PageRank.cpp.i

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pagerank.dir/PageRank.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/pagerank/PageRank.cpp" -o CMakeFiles/pagerank.dir/PageRank.cpp.s

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.requires:
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.requires

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.provides: apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.requires
	$(MAKE) -f apps/pagerank/CMakeFiles/pagerank.dir/build.make apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.provides.build
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.provides

apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.provides.build: apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o

# Object files for target pagerank
pagerank_OBJECTS = \
"CMakeFiles/pagerank.dir/PageRank.cpp.o"

# External object files for target pagerank
pagerank_EXTERNAL_OBJECTS =

apps/pagerank/pagerank: apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o
apps/pagerank/pagerank: apps/pagerank/CMakeFiles/pagerank.dir/build.make
apps/pagerank/pagerank: src/libgalois.a
apps/pagerank/pagerank: apps/pagerank/CMakeFiles/pagerank.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pagerank"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pagerank.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/pagerank/CMakeFiles/pagerank.dir/build: apps/pagerank/pagerank
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/build

apps/pagerank/CMakeFiles/pagerank.dir/requires: apps/pagerank/CMakeFiles/pagerank.dir/PageRank.cpp.o.requires
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/requires

apps/pagerank/CMakeFiles/pagerank.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" && $(CMAKE_COMMAND) -P CMakeFiles/pagerank.dir/cmake_clean.cmake
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/clean

apps/pagerank/CMakeFiles/pagerank.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/pagerank" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/pagerank/CMakeFiles/pagerank.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/pagerank/CMakeFiles/pagerank.dir/depend

