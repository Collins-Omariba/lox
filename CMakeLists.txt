cmake_minimum_required(VERSION 3.10)

project(Lox VERSION 1.0)


set(CMAKE_C_STANDARD 99)

include_directories(${PROJECT_SOURCE_DIR}/include)


file(GLOB SOURCES "${PROJECT_SOURCE_DIR}/src/*.c")

add_executable(lox ${SOURCES})


set_target_properties(lox PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
