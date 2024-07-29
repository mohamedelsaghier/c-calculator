#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "InputOutput" for configuration "Release"
set_property(TARGET InputOutput APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(InputOutput PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/InputOutput/InputOutput.lib"
  )

list(APPEND _cmake_import_check_targets InputOutput )
list(APPEND _cmake_import_check_files_for_InputOutput "${_IMPORT_PREFIX}/InputOutput/InputOutput.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
