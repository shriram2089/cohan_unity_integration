# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agent_path_prediction: 3 messages, 2 services")

set(MSG_I_FLAGS "-Iagent_path_prediction:/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg;-Icohan_msgs:/home/shari/cohan_multi_ws/src/cohan_planner_multi/cohan_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agent_path_prediction_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_custom_target(_agent_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent_path_prediction" "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/Twist:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/TwistStamped"
)

get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_custom_target(_agent_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent_path_prediction" "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_custom_target(_agent_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent_path_prediction" "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_custom_target(_agent_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent_path_prediction" "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/Twist:agent_path_prediction/PredictedPoses:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/TwistStamped"
)

get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_custom_target(_agent_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent_path_prediction" "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" "agent_path_prediction/AgentPose:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_cpp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_cpp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
)

### Generating Services
_generate_srv_cpp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
)
_generate_srv_cpp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
)

### Generating Module File
_generate_module_cpp(agent_path_prediction
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agent_path_prediction_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agent_path_prediction_generate_messages agent_path_prediction_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_cpp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_cpp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_cpp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_cpp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_cpp _agent_path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_path_prediction_gencpp)
add_dependencies(agent_path_prediction_gencpp agent_path_prediction_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_path_prediction_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_eus(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_eus(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
)

### Generating Services
_generate_srv_eus(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
)
_generate_srv_eus(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
)

### Generating Module File
_generate_module_eus(agent_path_prediction
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(agent_path_prediction_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(agent_path_prediction_generate_messages agent_path_prediction_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_eus _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_eus _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_eus _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_eus _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_eus _agent_path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_path_prediction_geneus)
add_dependencies(agent_path_prediction_geneus agent_path_prediction_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_path_prediction_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_lisp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_lisp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
)

### Generating Services
_generate_srv_lisp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
)
_generate_srv_lisp(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
)

### Generating Module File
_generate_module_lisp(agent_path_prediction
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agent_path_prediction_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agent_path_prediction_generate_messages agent_path_prediction_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_lisp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_lisp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_lisp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_lisp _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_lisp _agent_path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_path_prediction_genlisp)
add_dependencies(agent_path_prediction_genlisp agent_path_prediction_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_path_prediction_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_nodejs(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_nodejs(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
)

### Generating Services
_generate_srv_nodejs(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
)
_generate_srv_nodejs(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
)

### Generating Module File
_generate_module_nodejs(agent_path_prediction
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(agent_path_prediction_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(agent_path_prediction_generate_messages agent_path_prediction_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_nodejs _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_nodejs _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_nodejs _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_nodejs _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_nodejs _agent_path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_path_prediction_gennodejs)
add_dependencies(agent_path_prediction_gennodejs agent_path_prediction_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_path_prediction_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_py(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
)
_generate_msg_py(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
)

### Generating Services
_generate_srv_py(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
)
_generate_srv_py(agent_path_prediction
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv"
  "${MSG_I_FLAGS}"
  "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
)

### Generating Module File
_generate_module_py(agent_path_prediction
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agent_path_prediction_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agent_path_prediction_generate_messages agent_path_prediction_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedPoses.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_py _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/PredictedGoal.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_py _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/msg/AgentPose.msg" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_py _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentPosePredict.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_py _agent_path_prediction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shari/cohan_multi_ws/src/cohan_planner_multi/agent_path_prediction/srv/AgentGoal.srv" NAME_WE)
add_dependencies(agent_path_prediction_generate_messages_py _agent_path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_path_prediction_genpy)
add_dependencies(agent_path_prediction_genpy agent_path_prediction_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_path_prediction_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent_path_prediction
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET cohan_msgs_generate_messages_cpp)
  add_dependencies(agent_path_prediction_generate_messages_cpp cohan_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent_path_prediction
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET cohan_msgs_generate_messages_eus)
  add_dependencies(agent_path_prediction_generate_messages_eus cohan_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent_path_prediction
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET cohan_msgs_generate_messages_lisp)
  add_dependencies(agent_path_prediction_generate_messages_lisp cohan_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent_path_prediction
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET cohan_msgs_generate_messages_nodejs)
  add_dependencies(agent_path_prediction_generate_messages_nodejs cohan_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent_path_prediction
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET cohan_msgs_generate_messages_py)
  add_dependencies(agent_path_prediction_generate_messages_py cohan_msgs_generate_messages_py)
endif()
