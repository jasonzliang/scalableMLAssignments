FILE(REMOVE_RECURSE
  "CMakeFiles/mesh-nodes"
  "r500k.node"
  "r500k.ele"
  "r500k.poly"
  "r1M.node"
  "r1M.ele"
  "r1M.poly"
  "r5M.node"
  "r5M.ele"
  "r5M.poly"
  "r500k.raw.node"
  "r1M.raw.node"
  "r5M.raw.node"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/mesh-nodes.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
