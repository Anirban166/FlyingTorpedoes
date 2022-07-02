# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/anirban166/FlyingTorpedoes/Missiles

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/anirban166/FlyingTorpedoes/Missiles/build

# Include any dependencies generated for this target.
include Utils/CMakeFiles/MissileLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Utils/CMakeFiles/MissileLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include Utils/CMakeFiles/MissileLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include Utils/CMakeFiles/MissileLibrary.dir/flags.make

Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o: Utils/CMakeFiles/MissileLibrary.dir/flags.make
Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o: ../Utils/Missile.cpp
Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o: Utils/CMakeFiles/MissileLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anirban166/FlyingTorpedoes/Missiles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o -MF CMakeFiles/MissileLibrary.dir/Missile.cpp.o.d -o CMakeFiles/MissileLibrary.dir/Missile.cpp.o -c /Users/anirban166/FlyingTorpedoes/Missiles/Utils/Missile.cpp

Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MissileLibrary.dir/Missile.cpp.i"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anirban166/FlyingTorpedoes/Missiles/Utils/Missile.cpp > CMakeFiles/MissileLibrary.dir/Missile.cpp.i

Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MissileLibrary.dir/Missile.cpp.s"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anirban166/FlyingTorpedoes/Missiles/Utils/Missile.cpp -o CMakeFiles/MissileLibrary.dir/Missile.cpp.s

# Object files for target MissileLibrary
MissileLibrary_OBJECTS = \
"CMakeFiles/MissileLibrary.dir/Missile.cpp.o"

# External object files for target MissileLibrary
MissileLibrary_EXTERNAL_OBJECTS =

Utils/libMissileLibrary.a: Utils/CMakeFiles/MissileLibrary.dir/Missile.cpp.o
Utils/libMissileLibrary.a: Utils/CMakeFiles/MissileLibrary.dir/build.make
Utils/libMissileLibrary.a: Utils/CMakeFiles/MissileLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anirban166/FlyingTorpedoes/Missiles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMissileLibrary.a"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && $(CMAKE_COMMAND) -P CMakeFiles/MissileLibrary.dir/cmake_clean_target.cmake
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MissileLibrary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Utils/CMakeFiles/MissileLibrary.dir/build: Utils/libMissileLibrary.a
.PHONY : Utils/CMakeFiles/MissileLibrary.dir/build

Utils/CMakeFiles/MissileLibrary.dir/clean:
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils && $(CMAKE_COMMAND) -P CMakeFiles/MissileLibrary.dir/cmake_clean.cmake
.PHONY : Utils/CMakeFiles/MissileLibrary.dir/clean

Utils/CMakeFiles/MissileLibrary.dir/depend:
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anirban166/FlyingTorpedoes/Missiles /Users/anirban166/FlyingTorpedoes/Missiles/Utils /Users/anirban166/FlyingTorpedoes/Missiles/build /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils /Users/anirban166/FlyingTorpedoes/Missiles/build/Utils/CMakeFiles/MissileLibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Utils/CMakeFiles/MissileLibrary.dir/depend

