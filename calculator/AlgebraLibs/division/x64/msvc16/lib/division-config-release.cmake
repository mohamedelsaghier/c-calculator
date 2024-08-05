#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "division" for configuration "Release"
set_property(TARGET division APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(division PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/division/x64/msvc16/lib/division.lib"
  )

list(APPEND _cmake_import_check_targets division )
list(APPEND _cmake_import_check_files_for_division "${_IMPORT_PREFIX}/division/x64/msvc16/lib/division.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
