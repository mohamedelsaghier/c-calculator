#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "subtraction" for configuration ""
set_property(TARGET subtraction APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(subtraction PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/subtraction/x64/gcc11.3/lib/libsubtraction.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS subtraction )
list(APPEND _IMPORT_CHECK_FILES_FOR_subtraction "${_IMPORT_PREFIX}/subtraction/x64/gcc11.3/lib/libsubtraction.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
