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
include apps/gmetis/CMakeFiles/gmetis.dir/depend.make

# Include the progress variables for this target.
include apps/gmetis/CMakeFiles/gmetis.dir/progress.make

# Include the compile flags for this target's objects.
include apps/gmetis/CMakeFiles/gmetis.dir/flags.make

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o: apps/gmetis/CMakeFiles/gmetis.dir/flags.make
apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o: ../../apps/gmetis/GMetis.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmetis.dir/GMetis.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/GMetis.cpp"

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmetis.dir/GMetis.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/GMetis.cpp" > CMakeFiles/gmetis.dir/GMetis.cpp.i

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmetis.dir/GMetis.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/GMetis.cpp" -o CMakeFiles/gmetis.dir/GMetis.cpp.s

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.requires:
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.requires

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.provides: apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.requires
	$(MAKE) -f apps/gmetis/CMakeFiles/gmetis.dir/build.make apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.provides.build
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.provides

apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.provides.build: apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o: apps/gmetis/CMakeFiles/gmetis.dir/flags.make
apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o: ../../apps/gmetis/Coarsening.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmetis.dir/Coarsening.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Coarsening.cpp"

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmetis.dir/Coarsening.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Coarsening.cpp" > CMakeFiles/gmetis.dir/Coarsening.cpp.i

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmetis.dir/Coarsening.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Coarsening.cpp" -o CMakeFiles/gmetis.dir/Coarsening.cpp.s

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.requires:
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.requires

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.provides: apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.requires
	$(MAKE) -f apps/gmetis/CMakeFiles/gmetis.dir/build.make apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.provides.build
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.provides

apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.provides.build: apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o: apps/gmetis/CMakeFiles/gmetis.dir/flags.make
apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o: ../../apps/gmetis/Metric.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmetis.dir/Metric.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Metric.cpp"

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmetis.dir/Metric.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Metric.cpp" > CMakeFiles/gmetis.dir/Metric.cpp.i

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmetis.dir/Metric.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Metric.cpp" -o CMakeFiles/gmetis.dir/Metric.cpp.s

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.requires:
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.requires

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.provides: apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.requires
	$(MAKE) -f apps/gmetis/CMakeFiles/gmetis.dir/build.make apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.provides.build
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.provides

apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.provides.build: apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o: apps/gmetis/CMakeFiles/gmetis.dir/flags.make
apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o: ../../apps/gmetis/Refine.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmetis.dir/Refine.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Refine.cpp"

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmetis.dir/Refine.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Refine.cpp" > CMakeFiles/gmetis.dir/Refine.cpp.i

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmetis.dir/Refine.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Refine.cpp" -o CMakeFiles/gmetis.dir/Refine.cpp.s

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.requires:
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.requires

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.provides: apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.requires
	$(MAKE) -f apps/gmetis/CMakeFiles/gmetis.dir/build.make apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.provides.build
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.provides

apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.provides.build: apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o: apps/gmetis/CMakeFiles/gmetis.dir/flags.make
apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o: ../../apps/gmetis/Partitioning.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmetis.dir/Partitioning.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Partitioning.cpp"

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmetis.dir/Partitioning.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Partitioning.cpp" > CMakeFiles/gmetis.dir/Partitioning.cpp.i

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmetis.dir/Partitioning.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis/Partitioning.cpp" -o CMakeFiles/gmetis.dir/Partitioning.cpp.s

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.requires:
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.requires

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.provides: apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.requires
	$(MAKE) -f apps/gmetis/CMakeFiles/gmetis.dir/build.make apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.provides.build
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.provides

apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.provides.build: apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o

# Object files for target gmetis
gmetis_OBJECTS = \
"CMakeFiles/gmetis.dir/GMetis.cpp.o" \
"CMakeFiles/gmetis.dir/Coarsening.cpp.o" \
"CMakeFiles/gmetis.dir/Metric.cpp.o" \
"CMakeFiles/gmetis.dir/Refine.cpp.o" \
"CMakeFiles/gmetis.dir/Partitioning.cpp.o"

# External object files for target gmetis
gmetis_EXTERNAL_OBJECTS =

apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/build.make
apps/gmetis/gmetis: src/libgalois.a
apps/gmetis/gmetis: apps/gmetis/CMakeFiles/gmetis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable gmetis"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmetis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/gmetis/CMakeFiles/gmetis.dir/build: apps/gmetis/gmetis
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/build

apps/gmetis/CMakeFiles/gmetis.dir/requires: apps/gmetis/CMakeFiles/gmetis.dir/GMetis.cpp.o.requires
apps/gmetis/CMakeFiles/gmetis.dir/requires: apps/gmetis/CMakeFiles/gmetis.dir/Coarsening.cpp.o.requires
apps/gmetis/CMakeFiles/gmetis.dir/requires: apps/gmetis/CMakeFiles/gmetis.dir/Metric.cpp.o.requires
apps/gmetis/CMakeFiles/gmetis.dir/requires: apps/gmetis/CMakeFiles/gmetis.dir/Refine.cpp.o.requires
apps/gmetis/CMakeFiles/gmetis.dir/requires: apps/gmetis/CMakeFiles/gmetis.dir/Partitioning.cpp.o.requires
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/requires

apps/gmetis/CMakeFiles/gmetis.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" && $(CMAKE_COMMAND) -P CMakeFiles/gmetis.dir/cmake_clean.cmake
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/clean

apps/gmetis/CMakeFiles/gmetis.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/gmetis" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/gmetis/CMakeFiles/gmetis.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/gmetis/CMakeFiles/gmetis.dir/depend

