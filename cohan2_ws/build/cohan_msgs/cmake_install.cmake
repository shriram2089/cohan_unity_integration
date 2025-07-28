# Install script for directory: /home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shari/cohan2_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE PROGRAM FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE PROGRAM FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/setup.bash;/home/shari/cohan2_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE FILE FILES
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/setup.bash"
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/setup.sh;/home/shari/cohan2_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE FILE FILES
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/setup.sh"
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/setup.zsh;/home/shari/cohan2_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE FILE FILES
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/setup.zsh"
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/setup.fish;/home/shari/cohan2_ws/install/local_setup.fish")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE FILE FILES
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/setup.fish"
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/local_setup.fish"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/shari/cohan2_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/shari/cohan2_ws/install" TYPE FILE FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs/msg" TYPE FILE FILES
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentPath.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentPathArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentTimeToGoal.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentTimeToGoalArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentTrajectory.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentTrajectoryArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentType.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrackedSegment.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrackedAgent.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrackedAgents.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrackedSegmentType.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryStamped.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/StateArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentMarker.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/AgentMarkerStamped.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/PointArray.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/PassageType.msg"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Predictions.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs/srv" TYPE FILE FILES
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/srv/Optimize.srv"
    "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/srv/GetTrajectory.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs/cmake" TYPE FILE FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/cohan_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shari/cohan2_ws/devel/.private/cohan_msgs/include/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shari/cohan2_ws/devel/.private/cohan_msgs/share/roseus/ros/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shari/cohan2_ws/devel/.private/cohan_msgs/share/common-lisp/ros/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shari/cohan2_ws/devel/.private/cohan_msgs/share/gennodejs/ros/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/shari/cohan2_ws/devel/.private/cohan_msgs/lib/python3/dist-packages/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/shari/cohan2_ws/devel/.private/cohan_msgs/lib/python3/dist-packages/cohan_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/cohan_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs/cmake" TYPE FILE FILES "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/cohan_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs/cmake" TYPE FILE FILES
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/cohan_msgsConfig.cmake"
    "/home/shari/cohan2_ws/build/cohan_msgs/catkin_generated/installspace/cohan_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cohan_msgs" TYPE FILE FILES "/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/shari/cohan2_ws/build/cohan_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/shari/cohan2_ws/build/cohan_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
