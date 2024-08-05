#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "division" for configuration ""
set_property(TARGET division APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(division PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/division/x64/gcc11.3/lib/libdivision.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS division )
list(APPEND _IMPORT_CHECK_FILES_FOR_division "${_IMPORT_PREFIX}/division/x64/gcc11.3/lib/libdivision.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
