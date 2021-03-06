set(BUILD_SHARED_LIBS CACHE FORCE "Build QtShanoir with shared libraries." OFF)
set(CPACK_GENERATOR ${CPACK_GENERATOR};RPM)
set(CPACK_RPM ON)
if (BUILD_PACKAGE_BINARY)
  option(BUILD_PACKAGE_DEV "Package development distribution of QtShanoir" OFF)
  set(CPACK_PACKAGE_NAME "qtshanoir-dev")
  set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "QtShanoir")
  set(CPACK_RPM_PACKAGE_DESCRIPTION "QtShanoir")
else (BUILD_PACKAGE_BINARY)
  option(BUILD_PACKAGE_BINARY "Package binary distribution of QtShanoir" OFF)
  set(CPACK_PACKAGE_NAME "qtshanoir-dev")
  set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "QtShanoir")
  set(CPACK_RPM_PACKAGE_DESCRIPTION "QtShanoir")
  set(CPACK_PACKAGE_FILE_NAME "qtshanoir-dev-${QTSHANOIR_VERSION_MAJOR}.${QTSHANOIR_VERSION_MINOR}.${QTSHANOIR_VERSION_PATCH}")
endif(BUILD_PACKAGE_BINARY)
