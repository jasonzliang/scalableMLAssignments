#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "galois" for configuration "Release"
set_property(TARGET galois APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(galois PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "-lpthread"
  IMPORTED_LOCATION_RELEASE "/usr/local/lib/libgalois.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS galois )
list(APPEND _IMPORT_CHECK_FILES_FOR_galois "/usr/local/lib/libgalois.a" )

# Import target "graph-convert" for configuration "Release"
set_property(TARGET graph-convert APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(graph-convert PROPERTIES
  IMPORTED_LOCATION_RELEASE "/usr/local/bin/graph-convert"
  )

list(APPEND _IMPORT_CHECK_TARGETS graph-convert )
list(APPEND _IMPORT_CHECK_FILES_FOR_graph-convert "/usr/local/bin/graph-convert" )

# Import target "graph-convert-standalone" for configuration "Release"
set_property(TARGET graph-convert-standalone APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(graph-convert-standalone PROPERTIES
  IMPORTED_LOCATION_RELEASE "/usr/local/bin/graph-convert-standalone"
  )

list(APPEND _IMPORT_CHECK_TARGETS graph-convert-standalone )
list(APPEND _IMPORT_CHECK_FILES_FOR_graph-convert-standalone "/usr/local/bin/graph-convert-standalone" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
