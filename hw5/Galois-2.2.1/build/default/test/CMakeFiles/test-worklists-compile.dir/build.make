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
include test/CMakeFiles/test-worklists-compile.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test-worklists-compile.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test-worklists-compile.dir/flags.make

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o: test/CMakeFiles/test-worklists-compile.dir/flags.make
test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o: ../../test/worklists-compile.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/worklists-compile.cpp"

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/worklists-compile.cpp" > CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.i

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test/worklists-compile.cpp" -o CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.s

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.requires:
.PHONY : test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.requires

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.provides: test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test-worklists-compile.dir/build.make test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.provides.build
.PHONY : test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.provides

test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.provides.build: test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o

# Object files for target test-worklists-compile
test__worklists__compile_OBJECTS = \
"CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o"

# External object files for target test-worklists-compile
test__worklists__compile_EXTERNAL_OBJECTS =

test/test-worklists-compile: test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o
test/test-worklists-compile: test/CMakeFiles/test-worklists-compile.dir/build.make
test/test-worklists-compile: src/libgalois.a
test/test-worklists-compile: test/CMakeFiles/test-worklists-compile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-worklists-compile"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-worklists-compile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test-worklists-compile.dir/build: test/test-worklists-compile
.PHONY : test/CMakeFiles/test-worklists-compile.dir/build

test/CMakeFiles/test-worklists-compile.dir/requires: test/CMakeFiles/test-worklists-compile.dir/worklists-compile.cpp.o.requires
.PHONY : test/CMakeFiles/test-worklists-compile.dir/requires

test/CMakeFiles/test-worklists-compile.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" && $(CMAKE_COMMAND) -P CMakeFiles/test-worklists-compile.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test-worklists-compile.dir/clean

test/CMakeFiles/test-worklists-compile.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/test" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/test/CMakeFiles/test-worklists-compile.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : test/CMakeFiles/test-worklists-compile.dir/depend

