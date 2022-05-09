set(LIB_SUBDIR ${CMAKE_SOURCE_DIR})

macro(ADD_LIB_DIRS)
  foreach(SUBDIR ${ARGN})
    set(ORIG_LIB_SUBDIR ${LIB_SUBDIR})
    set(LIB_SUBDIR ${LIB_SUBDIR}/${SUBDIR})
    include(${LIB_SUBDIR}/CMakeLists.txt)
    set(LIB_SUBDIR ${ORIG_LIB_SUBDIR})
  endforeach(SUBDIR)
endmacro(ADD_LIB_DIRS)

macro(ADD_LIB_SOURCES)
  foreach(SOURCEFILE ${ARGN})
    set(LIB_SOURCES ${LIB_SOURCES} ${LIB_SUBDIR}/${SOURCEFILE})
  endforeach(SOURCEFILE)
endmacro(ADD_LIB_SOURCES)
