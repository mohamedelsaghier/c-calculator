#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "addition" for configuration "Release"
set_property(TARGET addition APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(addition PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/addition/x64/msvc16/lib/addition.lib"
  )

list(APPEND _cmake_import_check_targets addition )
list(APPEND _cmake_import_check_files_for_addition "${_IMPORT_PREFIX}/addition/x64/msvc16/lib/addition.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
