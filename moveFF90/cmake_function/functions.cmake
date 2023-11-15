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


function(to_F90 reqArg)
  message("..... in toF90 ")
  file(GLOB allFiles *.FF90)
  foreach(thing ${allFiles})
    if(EXISTS ${thing})
    string(REPLACE "FF90" "F90" f90File ${thing})
    message( "in to_F90:  ${thing}")
    message("      will go to ${f90File}")
    file(COPY_FILE ${thing} ${f90File})
    endif()
  endforeach()
  set(${reqArg} ${allFiles} PARENT_SCOPE)
endfunction()


function(back_to_FF90 reqArg)
  message("..... in back_to_FF90 ")
  foreach(thing ${reqArg})
    string(REPLACE "F90" "FF90" ff90File ${thing})
    message( "in back_to_F90:  ${thing}")
    message("      will go to ${ff90File}")
    file(RENAME ${thing} ${ff90File})
  endforeach()
endfunction()


function(list_all_files  reqArg)
  message("..... in list all files ")
  file(GLOB allFiles *)
  foreach(thing ${allFiles})
    message( "in list_all_files:  ${thing}")
  endforeach()
endfunction()

