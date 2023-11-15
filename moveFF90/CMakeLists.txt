CMAKE_MINIMUM_REQUIRED(VERSION 3.25)

project(go Fortran)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake_function/functions.cmake)

simple(This Foo Bar)
message("Output: ${This}")
simple(danny)
simple(deeter arg1 arg2 arg3)
#
to_F90(gaga)
message(" ==================toF90 got in gaga============")
foreach(thing ${gaga})
  message("to_F90 got:  ${thing}")
endforeach()
#
back_to_FF90(gaga)
#
list_all_files(gaga)


