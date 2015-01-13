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

# Utility rule file for mesh-nodes.

# Include the progress variables for this target.
include inputs/meshes/CMakeFiles/mesh-nodes.dir/progress.make

inputs/meshes/CMakeFiles/mesh-nodes: inputs/meshes/r500k.node
inputs/meshes/CMakeFiles/mesh-nodes: inputs/meshes/r1M.node
inputs/meshes/CMakeFiles/mesh-nodes: inputs/meshes/r5M.node

inputs/meshes/r500k.node: apps/delaunaytriangulation/delaunaytriangulation
inputs/meshes/r500k.node: inputs/meshes/r500k.raw.node
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r500k.node, r500k.ele, r500k.poly"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && ../../apps/delaunaytriangulation/delaunaytriangulation -noverify -writemesh r500k r500k.raw.node

inputs/meshes/r500k.ele: inputs/meshes/r500k.node

inputs/meshes/r500k.poly: inputs/meshes/r500k.node

inputs/meshes/r1M.node: apps/delaunaytriangulation/delaunaytriangulation
inputs/meshes/r1M.node: inputs/meshes/r1M.raw.node
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r1M.node, r1M.ele, r1M.poly"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && ../../apps/delaunaytriangulation/delaunaytriangulation -noverify -writemesh r1M r1M.raw.node

inputs/meshes/r1M.ele: inputs/meshes/r1M.node

inputs/meshes/r1M.poly: inputs/meshes/r1M.node

inputs/meshes/r5M.node: apps/delaunaytriangulation/delaunaytriangulation
inputs/meshes/r5M.node: inputs/meshes/r5M.raw.node
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r5M.node, r5M.ele, r5M.poly"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && ../../apps/delaunaytriangulation/delaunaytriangulation -noverify -writemesh r5M r5M.raw.node

inputs/meshes/r5M.ele: inputs/meshes/r5M.node

inputs/meshes/r5M.poly: inputs/meshes/r5M.node

inputs/meshes/r500k.raw.node:
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r500k.raw.node"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && python /home/jason/Desktop/Dropbox/fall2014/Scalable\ Machine\ Learning/hw5/Galois-2.2.1/build/default/tools/generators/random-2d-points.py 500000 1 > r500k.raw.node

inputs/meshes/r1M.raw.node:
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r1M.raw.node"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && python /home/jason/Desktop/Dropbox/fall2014/Scalable\ Machine\ Learning/hw5/Galois-2.2.1/build/default/tools/generators/random-2d-points.py 1000000 1 > r1M.raw.node

inputs/meshes/r5M.raw.node:
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating r5M.raw.node"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && python /home/jason/Desktop/Dropbox/fall2014/Scalable\ Machine\ Learning/hw5/Galois-2.2.1/build/default/tools/generators/random-2d-points.py 5000000 1 > r5M.raw.node

mesh-nodes: inputs/meshes/CMakeFiles/mesh-nodes
mesh-nodes: inputs/meshes/r500k.node
mesh-nodes: inputs/meshes/r500k.ele
mesh-nodes: inputs/meshes/r500k.poly
mesh-nodes: inputs/meshes/r1M.node
mesh-nodes: inputs/meshes/r1M.ele
mesh-nodes: inputs/meshes/r1M.poly
mesh-nodes: inputs/meshes/r5M.node
mesh-nodes: inputs/meshes/r5M.ele
mesh-nodes: inputs/meshes/r5M.poly
mesh-nodes: inputs/meshes/r500k.raw.node
mesh-nodes: inputs/meshes/r1M.raw.node
mesh-nodes: inputs/meshes/r5M.raw.node
mesh-nodes: inputs/meshes/CMakeFiles/mesh-nodes.dir/build.make
.PHONY : mesh-nodes

# Rule to build all files generated by this target.
inputs/meshes/CMakeFiles/mesh-nodes.dir/build: mesh-nodes
.PHONY : inputs/meshes/CMakeFiles/mesh-nodes.dir/build

inputs/meshes/CMakeFiles/mesh-nodes.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" && $(CMAKE_COMMAND) -P CMakeFiles/mesh-nodes.dir/cmake_clean.cmake
.PHONY : inputs/meshes/CMakeFiles/mesh-nodes.dir/clean

inputs/meshes/CMakeFiles/mesh-nodes.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/inputs/meshes" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/inputs/meshes/CMakeFiles/mesh-nodes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : inputs/meshes/CMakeFiles/mesh-nodes.dir/depend

