# CMake generated Testfile for 
# Source directory: /home/shari/cohan_multi_ws/src/pr2_common/pr2_description
# Build directory: /home/shari/cohan_multi_ws/build/pr2_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pr2_description_gtest_test_urdf "/home/shari/cohan_multi_ws/build/pr2_description/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shari/cohan_multi_ws/build/pr2_description/test_results/pr2_description/gtest-test_urdf.xml" "--working-dir" "/home/shari/cohan_multi_ws/src/pr2_common/pr2_description" "--return-code" "/home/shari/cohan_multi_ws/devel/.private/pr2_description/lib/pr2_description/test_urdf --gtest_output=xml:/home/shari/cohan_multi_ws/build/pr2_description/test_results/pr2_description/gtest-test_urdf.xml")
set_tests_properties(_ctest_pr2_description_gtest_test_urdf PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/shari/cohan_multi_ws/src/pr2_common/pr2_description/CMakeLists.txt;106;catkin_add_gtest;/home/shari/cohan_multi_ws/src/pr2_common/pr2_description/CMakeLists.txt;0;")
subdirs("gtest")
