# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/share/orocos_kdl/cmake/../../../include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/share/orocos_kdl/cmake/../../../include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "message_runtime;roscpp;rospy;angles;std_msgs;nav_msgs;sensor_msgs;pr2_msgs;geometry_msgs;diagnostic_msgs;gazebo_msgs;urdf;tf;image_transport".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lgazebo_ros_controller_manager;-lgazebo_ros_power_monitor;-lorocos-kdl".split(';') if "-lgazebo_ros_controller_manager;-lgazebo_ros_power_monitor;-lorocos-kdl" != "" else []
PROJECT_NAME = "pr2_gazebo_plugins"
PROJECT_SPACE_DIR = "/home/shari/cohan_multi_ws/install"
PROJECT_VERSION = "2.1.0"
