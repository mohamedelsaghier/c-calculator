#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Multiplication" for configuration "Release"
set_property(TARGET Multiplication APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Multiplication PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/Multiplication/Multiplication.lib"
  )

list(APPEND _cmake_import_check_targets Multiplication )
list(APPEND _cmake_import_check_files_for_Multiplication "${_IMPORT_PREFIX}/Multiplication/Multiplication.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
