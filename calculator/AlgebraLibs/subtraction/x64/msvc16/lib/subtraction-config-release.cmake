#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "subtraction" for configuration "Release"
set_property(TARGET subtraction APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(subtraction PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/subtraction/x64/msvc16/lib/subtraction.lib"
  )

list(APPEND _cmake_import_check_targets subtraction )
list(APPEND _cmake_import_check_files_for_subtraction "${_IMPORT_PREFIX}/subtraction/x64/msvc16/lib/subtraction.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
