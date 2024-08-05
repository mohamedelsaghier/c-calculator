#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "multiplication" for configuration ""
set_property(TARGET multiplication APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(multiplication PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/multiplication/x64/gcc11.3/lib/libmultiplication.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS multiplication )
list(APPEND _IMPORT_CHECK_FILES_FOR_multiplication "${_IMPORT_PREFIX}/multiplication/x64/gcc11.3/lib/libmultiplication.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
