#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "inputoutput" for configuration ""
set_property(TARGET inputoutput APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(inputoutput PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/inputoutput/x64/gcc11.3/lib/libinputoutput.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS inputoutput )
list(APPEND _IMPORT_CHECK_FILES_FOR_inputoutput "${_IMPORT_PREFIX}/inputoutput/x64/gcc11.3/lib/libinputoutput.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
