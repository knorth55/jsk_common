project(nlopt)

cmake_minimum_required(VERSION 2.4.6)

find_package(catkin)

message("cmake -E chdir ${PROJECT_SOURCE_DIR} make -f ${PROJECT_SOURCE_DIR}/Makefile DSTDIR=${PROJECT_SOURCE_DIR}")
execute_process(COMMAND cmake -E chdir ${PROJECT_SOURCE_DIR} make -f ${PROJECT_SOURCE_DIR}/Makefile DSTDIR=${PROJECT_SOURCE_DIR})

catkin_package(
    DEPENDS
    CATKIN-DEPENDS
    INCLUDE_DIRS
    LIBRARIES
)

# set(NLOPTDIR ${CATKIN_PACKAGE_SHARE_DESTINATION}/jskeus/eus)
# install(CODE "message(\"-- Force change Cflags of \$ENV{DESTDIR}/\${CMAKE_INSTALL_PREFIX}/${CATKIN_PACKAGE_LIB_DESTINATION}/pkgconfig/euslisp.pc \$ENV{DESTDIR}/\${CMAKE_INSTALL_PREFIX}/${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake/\${PROJECT_NAME}Config.cmake\") execute_process(COMMAND sed -i s@\${CMAKE_INSTALL_PREFIX}/include@\${CMAKE_INSTALL_PREFIX}/${EUSDIR}/include@ \$ENV{DESTDIR}/\${CMAKE_INSTALL_PREFIX}/${CATKIN_PACKAGE_LIB_DESTINATION}/pkgconfig/euslisp.pc \$ENV{DESTDIR}/\${CMAKE_INSTALL_PREFIX}/${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake/${PROJECT_NAME}Config.cmake)")

# install(DIRECTORY lib
#   DESTINATION ${EUSDIR}/lib
#   FILES_MATCHING PATTERN "*.l" PATTERN ".svn" EXCLUDE
# )

# install(DIRECTORY test
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#   USE_SOURCE_PERMISSIONS
#   )
