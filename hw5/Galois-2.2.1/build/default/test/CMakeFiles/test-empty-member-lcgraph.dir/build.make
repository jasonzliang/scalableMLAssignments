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
include test/CMakeFiles/test-empty-member-lcgraph.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test-empty-member-lcgraph.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test-empty-member-lcgraph.dir/flags.make

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o: test/CMakeFiles/test-empty-member-lcgraph.dir/flags.make
test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o: ../../test/empty-member-lcgraph.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/empty-member-lcgraph.cpp"

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/empty-member-lcgraph.cpp" > CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.i

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/empty-member-lcgraph.cpp" -o CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.s

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.requires:
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.requires

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.provides: test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test-empty-member-lcgraph.dir/build.make test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.provides.build
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.provides

test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.provides.build: test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o

# Object files for target test-empty-member-lcgraph
test__empty__member__lcgraph_OBJECTS = \
"CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o"

# External object files for target test-empty-member-lcgraph
test__empty__member__lcgraph_EXTERNAL_OBJECTS =

test/test-empty-member-lcgraph: test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o
test/test-empty-member-lcgraph: test/CMakeFiles/test-empty-member-lcgraph.dir/build.make
test/test-empty-member-lcgraph: src/libgalois.a
test/test-empty-member-lcgraph: test/CMakeFiles/test-empty-member-lcgraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-empty-member-lcgraph"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-empty-member-lcgraph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test-empty-member-lcgraph.dir/build: test/test-empty-member-lcgraph
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/build

test/CMakeFiles/test-empty-member-lcgraph.dir/requires: test/CMakeFiles/test-empty-member-lcgraph.dir/empty-member-lcgraph.cpp.o.requires
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/requires

test/CMakeFiles/test-empty-member-lcgraph.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && $(CMAKE_COMMAND) -P CMakeFiles/test-empty-member-lcgraph.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/clean

test/CMakeFiles/test-empty-member-lcgraph.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test/CMakeFiles/test-empty-member-lcgraph.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : test/CMakeFiles/test-empty-member-lcgraph.dir/depend

