#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "multiplication" for configuration "Release"
set_property(TARGET multiplication APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(multiplication PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/multiplication/x64/msvc16/lib/multiplication.lib"
  )

list(APPEND _cmake_import_check_targets multiplication )
list(APPEND _cmake_import_check_files_for_multiplication "${_IMPORT_PREFIX}/multiplication/x64/msvc16/lib/multiplication.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
