set(LIBRARY_A "Missile.cpp" "Missile.h")
set(LIBRARY_B "MissileSilo.cpp" "MissileSilo.h")
set(CONFIGURED_DIR "${CMAKE_BINARY_DIR}/configured_files/include")

add_library(${LIB_A} STATIC ${LIBRARY_A})
add_library(${LIB_B} STATIC ${LIBRARY_B})

target_include_directories(${LIB_A} PUBLIC "./" ${CONFIGURED_DIR}
                           ${LIB_B} PUBLIC "./" ${CONFIGURED_DIR})