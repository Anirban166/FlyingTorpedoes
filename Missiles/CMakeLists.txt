# cd build && cmake .. && cmake --build . && ./Core/Executable
cmake_minimum_required(VERSION 3.16)
set(CMAKE_CXX_STANDARD           17)
set(CMAKE_CXX_STANDARD_REQUIRED  ON)
set(CMAKE_CXX_EXTENSIONS        OFF)

project(MissileSystems VERSION 1.0.0 LANGUAGES C CXX)

# Variables (regular)
set(LIB_A Missile) # type (string) is automatically guessed (hence, Missile works, instead of an explicit "Missile")
set(LIB_B MissileSilo)
set(EXEC Executable)
# Just an alias, to use stuff like target_link_libraries(${EXEC} PUBLIC ${LIB}) 
# instead of target_link_libraries(executableName PUBLIC Library), and to avoid
# changing names in the sub-directories (will be just changing it here)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/") #./Missiles/cmake/*.cmake
include(AddGitSubmodule) # include() is for Cmake module files
add_git_submodule(external/Catch2) # For unit testing

# Sub-directories
add_subdirectory(Core)
add_subdirectory(Utils)
add_subdirectory(configured)
# Gotta add the libraries in the sub-directories, e.g.: add_library(${LIB} STATIC Missile.cpp)

# For making the executable without using external libraries from Utils/ (not applicable at the moment, but in case I make main.cpp a standalone unit)
# cmake .. -DCOMPILE_LIBRARIES=ON && cmake --build . && ./Executable
# option(DCOMPILE_LIBRARIES "Compile libraries?" OFF)
# if(DCOMPILE_LIBRARIES)
#     add_subdirectory(Utils)
# endif()

# Notes
# Since used libraries will be a dependency of the final executable, building the latter will build the former (libraries) as well.
# The libraries must be added first, then the final executable.
# In the cmake build directory, execute: cmake --build . --target executableName