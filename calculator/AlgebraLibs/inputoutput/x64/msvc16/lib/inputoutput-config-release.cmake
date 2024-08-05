#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "inputoutput" for configuration "Release"
set_property(TARGET inputoutput APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(inputoutput PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/inputoutput/x64/msvc16/lib/inputoutput.lib"
  )

list(APPEND _cmake_import_check_targets inputoutput )
list(APPEND _cmake_import_check_files_for_inputoutput "${_IMPORT_PREFIX}/inputoutput/x64/msvc16/lib/inputoutput.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
