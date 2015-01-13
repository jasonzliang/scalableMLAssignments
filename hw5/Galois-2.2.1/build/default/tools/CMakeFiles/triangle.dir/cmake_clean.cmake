FILE(REMOVE_RECURSE
  "CMakeFiles/triangle"
  "CMakeFiles/triangle-complete"
  "triangle/src/triangle-stamp/triangle-install"
  "triangle/src/triangle-stamp/triangle-mkdir"
  "triangle/src/triangle-stamp/triangle-download"
  "triangle/src/triangle-stamp/triangle-update"
  "triangle/src/triangle-stamp/triangle-patch"
  "triangle/src/triangle-stamp/triangle-configure"
  "triangle/src/triangle-stamp/triangle-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/triangle.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
