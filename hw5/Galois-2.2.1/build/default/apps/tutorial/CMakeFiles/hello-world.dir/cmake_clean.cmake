FILE(REMOVE_RECURSE
  "CMakeFiles/hello-world.dir/HelloWorld.cpp.o"
  "hello-world.pdb"
  "hello-world"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/hello-world.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
