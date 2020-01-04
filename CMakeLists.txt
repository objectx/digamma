
cmake_minimum_required (VERSION 3.16)

project (digamma
         DESCRIPTION "R7RS/R6RS Scheme Implementation derived from Ypsilon."
         HOMEPAGE_URL https://github.com/fujita-y/digamma)

enable_language (CXX)
enable_testing ()

function (setvar_default_ var_)
    if (NOT DEFINED ${var_})
        set (${var_} ${ARGN} PARENT_SCOPE)
    endif ()
endfunction ()

setvar_default_ (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
setvar_default_ (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
setvar_default_ (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)

add_subdirectory (src)
add_subdirectory (test)
