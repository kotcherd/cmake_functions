CMAKE_MINIMUM_REQUIRED(VERSION 3.2)

project(go Fortran)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake_function/functions.cmake)

simple(This Foo Bar)
simple(danny)
simple(deeter arg1 arg2 arg3)


message("Output: ${This}")


