#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Subtraction" for configuration "Release"
set_property(TARGET Subtraction APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Subtraction PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/Subtraction/Subtraction.lib"
  )

list(APPEND _cmake_import_check_targets Subtraction )
list(APPEND _cmake_import_check_files_for_Subtraction "${_IMPORT_PREFIX}/Subtraction/Subtraction.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
