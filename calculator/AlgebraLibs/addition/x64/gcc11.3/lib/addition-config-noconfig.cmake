#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "addition" for configuration ""
set_property(TARGET addition APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(addition PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/addition/x64/gcc11.3/lib/libaddition.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS addition )
list(APPEND _IMPORT_CHECK_FILES_FOR_addition "${_IMPORT_PREFIX}/addition/x64/gcc11.3/lib/libaddition.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
