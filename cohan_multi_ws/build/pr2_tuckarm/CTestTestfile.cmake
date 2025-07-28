# CMake generated Testfile for 
# Source directory: /home/shari/cohan_multi_ws/src/pr2_apps/pr2_tuckarm
# Build directory: /home/shari/cohan_multi_ws/build/pr2_tuckarm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pr2_tuckarm_roslaunch-check__home_shari_cohan_multi_ws_src_pr2_apps_pr2_tuckarm_launch_tuck_arms.launch "/home/shari/cohan_multi_ws/build/pr2_tuckarm/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shari/cohan_multi_ws/build/pr2_tuckarm/test_results/pr2_tuckarm/roslaunch-check__home_shari_cohan_multi_ws_src_pr2_apps_pr2_tuckarm_launch_tuck_arms.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/shari/cohan_multi_ws/build/pr2_tuckarm/test_results/pr2_tuckarm" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/shari/cohan_multi_ws/build/pr2_tuckarm/test_results/pr2_tuckarm/roslaunch-check__home_shari_cohan_multi_ws_src_pr2_apps_pr2_tuckarm_launch_tuck_arms.launch.xml\" \"/home/shari/cohan_multi_ws/src/pr2_apps/pr2_tuckarm/launch/tuck_arms.launch\" ")
set_tests_properties(_ctest_pr2_tuckarm_roslaunch-check__home_shari_cohan_multi_ws_src_pr2_apps_pr2_tuckarm_launch_tuck_arms.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/shari/cohan_multi_ws/src/pr2_apps/pr2_tuckarm/CMakeLists.txt;32;roslaunch_add_file_check;/home/shari/cohan_multi_ws/src/pr2_apps/pr2_tuckarm/CMakeLists.txt;0;")
subdirs("gtest")
