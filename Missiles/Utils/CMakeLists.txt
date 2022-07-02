set(LIBRARY_SOURCE_A "Missile.cpp")
set(LIBRARY_HEADER_A "Missile.h")
set(LIBRARY_SOURCE_B "MissileSilo.cpp")
set(LIBRARY_HEADER_B "MissileSilo.h")

add_library(${LIB_A} STATIC ${LIBRARY_SOURCE_A} ${LIBRARY_HEADER_A})
add_library(${LIB_B} STATIC ${LIBRARY_SOURCE_B} ${LIBRARY_HEADER_B})

target_include_directories(${LIB_A} PUBLIC "./" "${CMAKE_BINARY_DIR}/configured_files/include"
                           ${LIB_B} PUBLIC "./" "${CMAKE_BINARY_DIR}/configured_files/include")