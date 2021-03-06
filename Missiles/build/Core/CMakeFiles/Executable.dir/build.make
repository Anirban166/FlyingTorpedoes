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
include Core/CMakeFiles/Executable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Core/CMakeFiles/Executable.dir/compiler_depend.make

# Include the progress variables for this target.
include Core/CMakeFiles/Executable.dir/progress.make

# Include the compile flags for this target's objects.
include Core/CMakeFiles/Executable.dir/flags.make

Core/CMakeFiles/Executable.dir/main.cpp.o: Core/CMakeFiles/Executable.dir/flags.make
Core/CMakeFiles/Executable.dir/main.cpp.o: ../Core/main.cpp
Core/CMakeFiles/Executable.dir/main.cpp.o: Core/CMakeFiles/Executable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anirban166/FlyingTorpedoes/Missiles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Core/CMakeFiles/Executable.dir/main.cpp.o"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Core && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Core/CMakeFiles/Executable.dir/main.cpp.o -MF CMakeFiles/Executable.dir/main.cpp.o.d -o CMakeFiles/Executable.dir/main.cpp.o -c /Users/anirban166/FlyingTorpedoes/Missiles/Core/main.cpp

Core/CMakeFiles/Executable.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Executable.dir/main.cpp.i"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Core && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anirban166/FlyingTorpedoes/Missiles/Core/main.cpp > CMakeFiles/Executable.dir/main.cpp.i

Core/CMakeFiles/Executable.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Executable.dir/main.cpp.s"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Core && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anirban166/FlyingTorpedoes/Missiles/Core/main.cpp -o CMakeFiles/Executable.dir/main.cpp.s

# Object files for target Executable
Executable_OBJECTS = \
"CMakeFiles/Executable.dir/main.cpp.o"

# External object files for target Executable
Executable_EXTERNAL_OBJECTS =

Core/Executable: Core/CMakeFiles/Executable.dir/main.cpp.o
Core/Executable: Core/CMakeFiles/Executable.dir/build.make
Core/Executable: Utils/libMissile.a
Core/Executable: Utils/libMissileSilo.a
Core/Executable: lib/libgtest_main.a
Core/Executable: lib/libgmock_main.a
Core/Executable: lib/libgmock.a
Core/Executable: lib/libgtest.a
Core/Executable: Core/CMakeFiles/Executable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anirban166/FlyingTorpedoes/Missiles/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Executable"
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Executable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Core/CMakeFiles/Executable.dir/build: Core/Executable
.PHONY : Core/CMakeFiles/Executable.dir/build

Core/CMakeFiles/Executable.dir/clean:
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build/Core && $(CMAKE_COMMAND) -P CMakeFiles/Executable.dir/cmake_clean.cmake
.PHONY : Core/CMakeFiles/Executable.dir/clean

Core/CMakeFiles/Executable.dir/depend:
	cd /Users/anirban166/FlyingTorpedoes/Missiles/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anirban166/FlyingTorpedoes/Missiles /Users/anirban166/FlyingTorpedoes/Missiles/Core /Users/anirban166/FlyingTorpedoes/Missiles/build /Users/anirban166/FlyingTorpedoes/Missiles/build/Core /Users/anirban166/FlyingTorpedoes/Missiles/build/Core/CMakeFiles/Executable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Core/CMakeFiles/Executable.dir/depend

