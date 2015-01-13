FILE(REMOVE_RECURSE
  "CMakeFiles/more-road-graphs"
  "USA-road-d.USA.gr"
  "USA-road-d.W.gr"
  "USA-road-d.NY.gr"
  "USA-road-d.USA.dimacs"
  "USA-road-d.W.dimacs"
  "USA-road-d.NY.dimacs"
  "USA-road-d.USA.gz"
  "USA-road-d.W.gz"
  "USA-road-d.NY.gz"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/more-road-graphs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
