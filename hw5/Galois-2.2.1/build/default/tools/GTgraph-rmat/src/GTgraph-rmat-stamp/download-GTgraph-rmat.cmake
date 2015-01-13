message(STATUS "downloading...
     src='http://www.cse.psu.edu/~madduri/software/GTgraph/GTgraph.tar.gz'
     dst='/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat/GTgraph.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "http://www.cse.psu.edu/~madduri/software/GTgraph/GTgraph.tar.gz"
  "/home/jason/Desktop/Dropbox/fall2014/Scalable Machine Learning/hw5/Galois-2.2.1/build/default/tools/GTgraph-rmat/src/GTgraph-rmat/GTgraph.tar.gz"
  SHOW_PROGRESS
  # no EXPECTED_HASH
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'http://www.cse.psu.edu/~madduri/software/GTgraph/GTgraph.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
