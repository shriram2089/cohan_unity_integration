# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "dynamic_reconfigure;geometry_msgs;cohan_msgs;message_runtime;nav_msgs;roscpp;std_srvs;tf;visualization_msgs;tf2;tf2_ros;costmap_2d".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lagent_path_prediction".split(';') if "-lagent_path_prediction" != "" else []
PROJECT_NAME = "agent_path_prediction"
PROJECT_SPACE_DIR = "/home/shari/cohan2_ws/install"
PROJECT_VERSION = "0.0.1"
