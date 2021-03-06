# QtShanoirSettings.cmake

# SETTING installation directories
SET (INSTALL_CMAKE /lib/QtShanoir-${QTSHANOIR_VERSION_MAJOR}.${QTSHANOIR_VERSION_MINOR}/)
SET (INSTALL_BIN /bin/)
SET (INSTALL_LIB /lib/)
SET (INSTALL_INC /include/qtshanoir)
SET (INSTALL_DOC /doc/)
SET (INSTALL_MAN /man/)
SET (INSTALL_SHARE /share/)

## SETTING THE INCLUDE DIRS

SET (QTSHANOIR_INCLUDE_DIRS
## Modules include dirs
  ${QTSHANOIR_SOURCE_DIR}/Code
  ${QTSHANOIR_BINARY_DIR}
  ${QTSHANOIR_BINARY_DIR}/qtshanoir_autogen/include
  ${QTSHANOIR_BINARY_DIR}/qtshanoir_autogen/include_Debug
  ${QTSHANOIR_BINARY_DIR}/qtshanoir_autogen/include_Release
  ${QTSHANOIR_BINARY_DIR}/qtshanoir_autogen/include_MinSizeRel
  ${QTSHANOIR_BINARY_DIR}/qtshanoir_autogen/include_RelWithDebInfo
  ${ZLIB_INCLUDE_DIRS}
)

## SETTING QTSHANOIR LIBRARY DIRS
SET (QTSHANOIR_LIBRARY_DIRS
  ${LIBRARY_OUTPUT_PATH}
)

include_directories(${QTSHANOIR_INCLUDE_DIRS})
link_directories(${QTSHANOIR_LIBRARY_DIRS})

if (NOT WIN32)
  set(ZLIB_LIBRARY z)
endif()

## SETTING QTSHANOIR LIBS
SET(QTSHANOIR_LIBS
  qtshanoir
  quazip
  ${ZLIB_LIBRARY}
  )
