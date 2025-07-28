# CMake generated Testfile for 
# Source directory: /home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_layers
# Build directory: /home/shari/cohan2_ws/build/cohan_layers
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_cohan_layers_roslint_package "/home/shari/cohan2_ws/build/cohan_layers/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shari/cohan2_ws/build/cohan_layers/test_results/cohan_layers/roslint-cohan_layers.xml" "--working-dir" "/home/shari/cohan2_ws/build/cohan_layers" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/shari/cohan2_ws/build/cohan_layers/test_results/cohan_layers/roslint-cohan_layers.xml make roslint_cohan_layers")
set_tests_properties(_ctest_cohan_layers_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_layers/CMakeLists.txt;49;roslint_add_test;/home/shari/cohan2_ws/src/CoHAN2.0/src/cohan_layers/CMakeLists.txt;0;")
subdirs("gtest")
