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

# Utility rule file for GTgraph-rmat.

# Include the progress variables for this target.
include tools/CMakeFiles/GTgraph-rmat.dir/progress.make

tools/CMakeFiles/GTgraph-rmat: tools/CMakeFiles/GTgraph-rmat-complete

tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-install
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-mkdir
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-update
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-patch
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-build
tools/CMakeFiles/GTgraph-rmat-complete: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-install
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/CMakeFiles"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/CMakeFiles/GTgraph-rmat-complete"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-done"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-install: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-build
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing install step for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && $(MAKE) install
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-install"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/tmp"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E make_directory "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-mkdir"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-urlinfo.txt
tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing download step (download, verify and extract) for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src" && /usr/bin/cmake -P "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/download-GTgraph-rmat.cmake"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src" && /usr/bin/cmake -P "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/verify-GTgraph-rmat.cmake"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src" && /usr/bin/cmake -P "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/extract-GTgraph-rmat.cmake"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-update: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No update step for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-update"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-patch: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing patch step for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat" && bash -c "if [ ! -e CMakeLists.txt ] ; then patch -p1 < /home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/tools/GTgraph-rmat.patch ; fi"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-patch"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure: tools/GTgraph-rmat/tmp/GTgraph-rmat-cfgcmd.txt
tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-update
tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-patch
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing configure step for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && /usr/bin/cmake -DCMAKE_CXX_COMPILER=/usr/bin/c++ "-DCMAKE_CXX_FLAGS=-O3 -DNDEBUG" -DCMAKE_C_COMPILER=/usr/bin/cc "-DCMAKE_C_FLAGS=-O3 -DNDEBUG" "-DCMAKE_INSTALL_PREFIX=/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" "-GUnix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure"

tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-build: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'GTgraph-rmat'"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && $(MAKE)
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-build" && /usr/bin/cmake -E touch "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-build"

GTgraph-rmat: tools/CMakeFiles/GTgraph-rmat
GTgraph-rmat: tools/CMakeFiles/GTgraph-rmat-complete
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-install
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-mkdir
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-download
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-update
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-patch
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-configure
GTgraph-rmat: tools/GTgraph-rmat/src/GTgraph-rmat-stamp/GTgraph-rmat-build
GTgraph-rmat: tools/CMakeFiles/GTgraph-rmat.dir/build.make
.PHONY : GTgraph-rmat

# Rule to build all files generated by this target.
tools/CMakeFiles/GTgraph-rmat.dir/build: GTgraph-rmat
.PHONY : tools/CMakeFiles/GTgraph-rmat.dir/build

tools/CMakeFiles/GTgraph-rmat.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" && $(CMAKE_COMMAND) -P CMakeFiles/GTgraph-rmat.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/GTgraph-rmat.dir/clean

tools/CMakeFiles/GTgraph-rmat.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/tools" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/CMakeFiles/GTgraph-rmat.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tools/CMakeFiles/GTgraph-rmat.dir/depend

