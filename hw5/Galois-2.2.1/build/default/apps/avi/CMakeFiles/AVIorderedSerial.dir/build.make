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
include apps/avi/CMakeFiles/AVIorderedSerial.dir/depend.make

# Include the progress variables for this target.
include apps/avi/CMakeFiles/AVIorderedSerial.dir/progress.make

# Include the compile flags for this target's objects.
include apps/avi/CMakeFiles/AVIorderedSerial.dir/flags.make

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o: apps/avi/CMakeFiles/AVIorderedSerial.dir/flags.make
apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o: ../../apps/avi/main/AVIorderedSerial.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o -c "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/avi/main/AVIorderedSerial.cpp"

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.i"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/avi/main/AVIorderedSerial.cpp" > CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.i

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.s"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/avi/main/AVIorderedSerial.cpp" -o CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.s

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.requires:
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.requires

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.provides: apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.requires
	$(MAKE) -f apps/avi/CMakeFiles/AVIorderedSerial.dir/build.make apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.provides.build
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.provides

apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.provides.build: apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o

# Object files for target AVIorderedSerial
AVIorderedSerial_OBJECTS = \
"CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o"

# External object files for target AVIorderedSerial
AVIorderedSerial_EXTERNAL_OBJECTS =

apps/avi/AVIorderedSerial: apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o
apps/avi/AVIorderedSerial: apps/avi/CMakeFiles/AVIorderedSerial.dir/build.make
apps/avi/AVIorderedSerial: apps/avi/libAVI.a
apps/avi/AVIorderedSerial: /usr/lib/liblapack.so
apps/avi/AVIorderedSerial: /usr/lib/libf77blas.so.3gf
apps/avi/AVIorderedSerial: /usr/lib/libatlas.so.3gf
apps/avi/AVIorderedSerial: src/libgalois.a
apps/avi/AVIorderedSerial: /usr/lib/x86_64-linux-gnu/libz.so
apps/avi/AVIorderedSerial: /usr/lib/x86_64-linux-gnu/libboost_system.so
apps/avi/AVIorderedSerial: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
apps/avi/AVIorderedSerial: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
apps/avi/AVIorderedSerial: apps/avi/CMakeFiles/AVIorderedSerial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable AVIorderedSerial"
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AVIorderedSerial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/avi/CMakeFiles/AVIorderedSerial.dir/build: apps/avi/AVIorderedSerial
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/build

apps/avi/CMakeFiles/AVIorderedSerial.dir/requires: apps/avi/CMakeFiles/AVIorderedSerial.dir/main/AVIorderedSerial.cpp.o.requires
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/requires

apps/avi/CMakeFiles/AVIorderedSerial.dir/clean:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" && $(CMAKE_COMMAND) -P CMakeFiles/AVIorderedSerial.dir/cmake_clean.cmake
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/clean

apps/avi/CMakeFiles/AVIorderedSerial.dir/depend:
	cd "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/apps/avi" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi" "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/apps/avi/CMakeFiles/AVIorderedSerial.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : apps/avi/CMakeFiles/AVIorderedSerial.dir/depend

