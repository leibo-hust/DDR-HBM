# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lb/DRAMsim3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lb/DRAMsim3/build

# Include any dependencies generated for this target.
include CMakeFiles/dramsim3main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dramsim3main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dramsim3main.dir/flags.make

CMakeFiles/dramsim3main.dir/src/main.cc.o: CMakeFiles/dramsim3main.dir/flags.make
CMakeFiles/dramsim3main.dir/src/main.cc.o: ../src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lb/DRAMsim3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dramsim3main.dir/src/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dramsim3main.dir/src/main.cc.o -c /home/lb/DRAMsim3/src/main.cc

CMakeFiles/dramsim3main.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dramsim3main.dir/src/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lb/DRAMsim3/src/main.cc > CMakeFiles/dramsim3main.dir/src/main.cc.i

CMakeFiles/dramsim3main.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dramsim3main.dir/src/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lb/DRAMsim3/src/main.cc -o CMakeFiles/dramsim3main.dir/src/main.cc.s

CMakeFiles/dramsim3main.dir/src/main.cc.o.requires:

.PHONY : CMakeFiles/dramsim3main.dir/src/main.cc.o.requires

CMakeFiles/dramsim3main.dir/src/main.cc.o.provides: CMakeFiles/dramsim3main.dir/src/main.cc.o.requires
	$(MAKE) -f CMakeFiles/dramsim3main.dir/build.make CMakeFiles/dramsim3main.dir/src/main.cc.o.provides.build
.PHONY : CMakeFiles/dramsim3main.dir/src/main.cc.o.provides

CMakeFiles/dramsim3main.dir/src/main.cc.o.provides.build: CMakeFiles/dramsim3main.dir/src/main.cc.o


CMakeFiles/dramsim3main.dir/src/cpu.cc.o: CMakeFiles/dramsim3main.dir/flags.make
CMakeFiles/dramsim3main.dir/src/cpu.cc.o: ../src/cpu.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lb/DRAMsim3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dramsim3main.dir/src/cpu.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dramsim3main.dir/src/cpu.cc.o -c /home/lb/DRAMsim3/src/cpu.cc

CMakeFiles/dramsim3main.dir/src/cpu.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dramsim3main.dir/src/cpu.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lb/DRAMsim3/src/cpu.cc > CMakeFiles/dramsim3main.dir/src/cpu.cc.i

CMakeFiles/dramsim3main.dir/src/cpu.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dramsim3main.dir/src/cpu.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lb/DRAMsim3/src/cpu.cc -o CMakeFiles/dramsim3main.dir/src/cpu.cc.s

CMakeFiles/dramsim3main.dir/src/cpu.cc.o.requires:

.PHONY : CMakeFiles/dramsim3main.dir/src/cpu.cc.o.requires

CMakeFiles/dramsim3main.dir/src/cpu.cc.o.provides: CMakeFiles/dramsim3main.dir/src/cpu.cc.o.requires
	$(MAKE) -f CMakeFiles/dramsim3main.dir/build.make CMakeFiles/dramsim3main.dir/src/cpu.cc.o.provides.build
.PHONY : CMakeFiles/dramsim3main.dir/src/cpu.cc.o.provides

CMakeFiles/dramsim3main.dir/src/cpu.cc.o.provides.build: CMakeFiles/dramsim3main.dir/src/cpu.cc.o


# Object files for target dramsim3main
dramsim3main_OBJECTS = \
"CMakeFiles/dramsim3main.dir/src/main.cc.o" \
"CMakeFiles/dramsim3main.dir/src/cpu.cc.o"

# External object files for target dramsim3main
dramsim3main_EXTERNAL_OBJECTS =

dramsim3main: CMakeFiles/dramsim3main.dir/src/main.cc.o
dramsim3main: CMakeFiles/dramsim3main.dir/src/cpu.cc.o
dramsim3main: CMakeFiles/dramsim3main.dir/build.make
dramsim3main: ../libdramsim3.so
dramsim3main: CMakeFiles/dramsim3main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lb/DRAMsim3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable dramsim3main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dramsim3main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dramsim3main.dir/build: dramsim3main

.PHONY : CMakeFiles/dramsim3main.dir/build

CMakeFiles/dramsim3main.dir/requires: CMakeFiles/dramsim3main.dir/src/main.cc.o.requires
CMakeFiles/dramsim3main.dir/requires: CMakeFiles/dramsim3main.dir/src/cpu.cc.o.requires

.PHONY : CMakeFiles/dramsim3main.dir/requires

CMakeFiles/dramsim3main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dramsim3main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dramsim3main.dir/clean

CMakeFiles/dramsim3main.dir/depend:
	cd /home/lb/DRAMsim3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lb/DRAMsim3 /home/lb/DRAMsim3 /home/lb/DRAMsim3/build /home/lb/DRAMsim3/build /home/lb/DRAMsim3/build/CMakeFiles/dramsim3main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dramsim3main.dir/depend

