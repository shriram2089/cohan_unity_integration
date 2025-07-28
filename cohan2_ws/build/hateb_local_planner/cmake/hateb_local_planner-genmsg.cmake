# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hateb_local_planner: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ihateb_local_planner:/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Icostmap_converter:/opt/ros/noetic/share/costmap_converter/cmake/../msg;-Icohan_msgs:/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hateb_local_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_custom_target(_hateb_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hateb_local_planner" "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" "geometry_msgs/Point32:geometry_msgs/QuaternionStamped:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/TwistWithCovariance:std_msgs/Header"
)

get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_custom_target(_hateb_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hateb_local_planner" "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" ""
)

get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_custom_target(_hateb_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hateb_local_planner" "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" "hateb_local_planner/OptimizationCost:std_msgs/Header"
)

get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_custom_target(_hateb_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hateb_local_planner" "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Twist:geometry_msgs/Point32:geometry_msgs/TwistWithCovariance:cohan_msgs/TrajectoryPoint:geometry_msgs/Vector3:costmap_converter/ObstacleMsg:geometry_msgs/Polygon:cohan_msgs/Trajectory:costmap_converter/ObstacleArrayMsg:std_msgs/Header"
)

get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_custom_target(_hateb_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hateb_local_planner" "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/QuaternionStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_cpp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_cpp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_cpp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_cpp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(hateb_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hateb_local_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hateb_local_planner_generate_messages hateb_local_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_cpp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_cpp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_cpp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_cpp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_cpp _hateb_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hateb_local_planner_gencpp)
add_dependencies(hateb_local_planner_gencpp hateb_local_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hateb_local_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/QuaternionStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_eus(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_eus(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_eus(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_eus(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
)

### Generating Services

### Generating Module File
_generate_module_eus(hateb_local_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hateb_local_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hateb_local_planner_generate_messages hateb_local_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_eus _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_eus _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_eus _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_eus _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_eus _hateb_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hateb_local_planner_geneus)
add_dependencies(hateb_local_planner_geneus hateb_local_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hateb_local_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/QuaternionStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_lisp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_lisp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_lisp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_lisp(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(hateb_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hateb_local_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hateb_local_planner_generate_messages hateb_local_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_lisp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_lisp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_lisp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_lisp _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_lisp _hateb_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hateb_local_planner_genlisp)
add_dependencies(hateb_local_planner_genlisp hateb_local_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hateb_local_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/QuaternionStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_nodejs(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_nodejs(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_nodejs(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_nodejs(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hateb_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hateb_local_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hateb_local_planner_generate_messages hateb_local_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_nodejs _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_nodejs _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_nodejs _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_nodejs _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_nodejs _hateb_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hateb_local_planner_gennodejs)
add_dependencies(hateb_local_planner_gennodejs hateb_local_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hateb_local_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/QuaternionStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_py(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_py(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_py(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/TrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
)
_generate_msg_py(hateb_local_planner
  "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
)

### Generating Services

### Generating Module File
_generate_module_py(hateb_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hateb_local_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hateb_local_planner_generate_messages hateb_local_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/ObstacleMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_py _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCost.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_py _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/OptimizationCostArray.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_py _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_py _hateb_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan2_ws/src/CoHAN2.0/src/hateb_local_planner/msg/PlanningMode.msg" NAME_WE)
add_dependencies(hateb_local_planner_generate_messages_py _hateb_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hateb_local_planner_genpy)
add_dependencies(hateb_local_planner_genpy hateb_local_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hateb_local_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hateb_local_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hateb_local_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hateb_local_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET costmap_converter_generate_messages_cpp)
  add_dependencies(hateb_local_planner_generate_messages_cpp costmap_converter_generate_messages_cpp)
endif()
if(TARGET cohan_msgs_generate_messages_cpp)
  add_dependencies(hateb_local_planner_generate_messages_cpp cohan_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hateb_local_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hateb_local_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hateb_local_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET costmap_converter_generate_messages_eus)
  add_dependencies(hateb_local_planner_generate_messages_eus costmap_converter_generate_messages_eus)
endif()
if(TARGET cohan_msgs_generate_messages_eus)
  add_dependencies(hateb_local_planner_generate_messages_eus cohan_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hateb_local_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hateb_local_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hateb_local_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET costmap_converter_generate_messages_lisp)
  add_dependencies(hateb_local_planner_generate_messages_lisp costmap_converter_generate_messages_lisp)
endif()
if(TARGET cohan_msgs_generate_messages_lisp)
  add_dependencies(hateb_local_planner_generate_messages_lisp cohan_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hateb_local_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hateb_local_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hateb_local_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET costmap_converter_generate_messages_nodejs)
  add_dependencies(hateb_local_planner_generate_messages_nodejs costmap_converter_generate_messages_nodejs)
endif()
if(TARGET cohan_msgs_generate_messages_nodejs)
  add_dependencies(hateb_local_planner_generate_messages_nodejs cohan_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hateb_local_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hateb_local_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hateb_local_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET costmap_converter_generate_messages_py)
  add_dependencies(hateb_local_planner_generate_messages_py costmap_converter_generate_messages_py)
endif()
if(TARGET cohan_msgs_generate_messages_py)
  add_dependencies(hateb_local_planner_generate_messages_py cohan_msgs_generate_messages_py)
endif()
