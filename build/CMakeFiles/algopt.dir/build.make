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
CMAKE_SOURCE_DIR = /home/ahmed-hendway/Algopt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ahmed-hendway/Algopt/build

# Include any dependencies generated for this target.
include CMakeFiles/algopt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/algopt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/algopt.dir/flags.make

CMakeFiles/algopt.dir/main.cpp.o: CMakeFiles/algopt.dir/flags.make
CMakeFiles/algopt.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/algopt.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algopt.dir/main.cpp.o -c /home/ahmed-hendway/Algopt/main.cpp

CMakeFiles/algopt.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algopt.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed-hendway/Algopt/main.cpp > CMakeFiles/algopt.dir/main.cpp.i

CMakeFiles/algopt.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algopt.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed-hendway/Algopt/main.cpp -o CMakeFiles/algopt.dir/main.cpp.s

CMakeFiles/algopt.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/algopt.dir/main.cpp.o.requires

CMakeFiles/algopt.dir/main.cpp.o.provides: CMakeFiles/algopt.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/algopt.dir/build.make CMakeFiles/algopt.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/algopt.dir/main.cpp.o.provides

CMakeFiles/algopt.dir/main.cpp.o.provides.build: CMakeFiles/algopt.dir/main.cpp.o


CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o: CMakeFiles/algopt.dir/flags.make
CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o: ../backtrackinglinesearch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o -c /home/ahmed-hendway/Algopt/backtrackinglinesearch.cpp

CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed-hendway/Algopt/backtrackinglinesearch.cpp > CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.i

CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed-hendway/Algopt/backtrackinglinesearch.cpp -o CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.s

CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.requires:

.PHONY : CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.requires

CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.provides: CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.requires
	$(MAKE) -f CMakeFiles/algopt.dir/build.make CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.provides.build
.PHONY : CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.provides

CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.provides.build: CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o


CMakeFiles/algopt.dir/randomrestartmethod.cpp.o: CMakeFiles/algopt.dir/flags.make
CMakeFiles/algopt.dir/randomrestartmethod.cpp.o: ../randomrestartmethod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/algopt.dir/randomrestartmethod.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algopt.dir/randomrestartmethod.cpp.o -c /home/ahmed-hendway/Algopt/randomrestartmethod.cpp

CMakeFiles/algopt.dir/randomrestartmethod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algopt.dir/randomrestartmethod.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed-hendway/Algopt/randomrestartmethod.cpp > CMakeFiles/algopt.dir/randomrestartmethod.cpp.i

CMakeFiles/algopt.dir/randomrestartmethod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algopt.dir/randomrestartmethod.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed-hendway/Algopt/randomrestartmethod.cpp -o CMakeFiles/algopt.dir/randomrestartmethod.cpp.s

CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.requires:

.PHONY : CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.requires

CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.provides: CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.requires
	$(MAKE) -f CMakeFiles/algopt.dir/build.make CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.provides.build
.PHONY : CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.provides

CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.provides.build: CMakeFiles/algopt.dir/randomrestartmethod.cpp.o


CMakeFiles/algopt.dir/utils.cpp.o: CMakeFiles/algopt.dir/flags.make
CMakeFiles/algopt.dir/utils.cpp.o: ../utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/algopt.dir/utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algopt.dir/utils.cpp.o -c /home/ahmed-hendway/Algopt/utils.cpp

CMakeFiles/algopt.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algopt.dir/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed-hendway/Algopt/utils.cpp > CMakeFiles/algopt.dir/utils.cpp.i

CMakeFiles/algopt.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algopt.dir/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed-hendway/Algopt/utils.cpp -o CMakeFiles/algopt.dir/utils.cpp.s

CMakeFiles/algopt.dir/utils.cpp.o.requires:

.PHONY : CMakeFiles/algopt.dir/utils.cpp.o.requires

CMakeFiles/algopt.dir/utils.cpp.o.provides: CMakeFiles/algopt.dir/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/algopt.dir/build.make CMakeFiles/algopt.dir/utils.cpp.o.provides.build
.PHONY : CMakeFiles/algopt.dir/utils.cpp.o.provides

CMakeFiles/algopt.dir/utils.cpp.o.provides.build: CMakeFiles/algopt.dir/utils.cpp.o


CMakeFiles/algopt.dir/optimizer.cpp.o: CMakeFiles/algopt.dir/flags.make
CMakeFiles/algopt.dir/optimizer.cpp.o: ../optimizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/algopt.dir/optimizer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algopt.dir/optimizer.cpp.o -c /home/ahmed-hendway/Algopt/optimizer.cpp

CMakeFiles/algopt.dir/optimizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algopt.dir/optimizer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed-hendway/Algopt/optimizer.cpp > CMakeFiles/algopt.dir/optimizer.cpp.i

CMakeFiles/algopt.dir/optimizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algopt.dir/optimizer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed-hendway/Algopt/optimizer.cpp -o CMakeFiles/algopt.dir/optimizer.cpp.s

CMakeFiles/algopt.dir/optimizer.cpp.o.requires:

.PHONY : CMakeFiles/algopt.dir/optimizer.cpp.o.requires

CMakeFiles/algopt.dir/optimizer.cpp.o.provides: CMakeFiles/algopt.dir/optimizer.cpp.o.requires
	$(MAKE) -f CMakeFiles/algopt.dir/build.make CMakeFiles/algopt.dir/optimizer.cpp.o.provides.build
.PHONY : CMakeFiles/algopt.dir/optimizer.cpp.o.provides

CMakeFiles/algopt.dir/optimizer.cpp.o.provides.build: CMakeFiles/algopt.dir/optimizer.cpp.o


# Object files for target algopt
algopt_OBJECTS = \
"CMakeFiles/algopt.dir/main.cpp.o" \
"CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o" \
"CMakeFiles/algopt.dir/randomrestartmethod.cpp.o" \
"CMakeFiles/algopt.dir/utils.cpp.o" \
"CMakeFiles/algopt.dir/optimizer.cpp.o"

# External object files for target algopt
algopt_EXTERNAL_OBJECTS =

algopt: CMakeFiles/algopt.dir/main.cpp.o
algopt: CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o
algopt: CMakeFiles/algopt.dir/randomrestartmethod.cpp.o
algopt: CMakeFiles/algopt.dir/utils.cpp.o
algopt: CMakeFiles/algopt.dir/optimizer.cpp.o
algopt: CMakeFiles/algopt.dir/build.make
algopt: CMakeFiles/algopt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahmed-hendway/Algopt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable algopt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/algopt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/algopt.dir/build: algopt

.PHONY : CMakeFiles/algopt.dir/build

CMakeFiles/algopt.dir/requires: CMakeFiles/algopt.dir/main.cpp.o.requires
CMakeFiles/algopt.dir/requires: CMakeFiles/algopt.dir/backtrackinglinesearch.cpp.o.requires
CMakeFiles/algopt.dir/requires: CMakeFiles/algopt.dir/randomrestartmethod.cpp.o.requires
CMakeFiles/algopt.dir/requires: CMakeFiles/algopt.dir/utils.cpp.o.requires
CMakeFiles/algopt.dir/requires: CMakeFiles/algopt.dir/optimizer.cpp.o.requires

.PHONY : CMakeFiles/algopt.dir/requires

CMakeFiles/algopt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/algopt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/algopt.dir/clean

CMakeFiles/algopt.dir/depend:
	cd /home/ahmed-hendway/Algopt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmed-hendway/Algopt /home/ahmed-hendway/Algopt /home/ahmed-hendway/Algopt/build /home/ahmed-hendway/Algopt/build /home/ahmed-hendway/Algopt/build/CMakeFiles/algopt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/algopt.dir/depend

