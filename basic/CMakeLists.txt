CMAKE_MINIMUM_REQUIRED(VERSION 3.2)

project(go Fortran)


function(SIMPLE REQUIRED_ARG)
    message("    ")
    message(".........................    ")
    message(STATUS "function called Simple has arguments: ${REQUIRED_ARG}, followed by ${ARGN}")
    set(${REQUIRED_ARG} "From SIMPLE" PARENT_SCOPE)
    message(".........................    ")
    message("    ")
endfunction()

simple(This Foo Bar)
simple(danny)
simple(deeter arg1 arg2 arg3)


message("Output: ${This}")


