set(EXE_SOURCE "main.cpp")

# Add the executable and link the libraries used:
add_executable(${EXEC} ${EXE_SOURCE})
target_link_libraries(${EXEC} PUBLIC ${LIB_A} ${LIB_B} gtest_main gmock_main)