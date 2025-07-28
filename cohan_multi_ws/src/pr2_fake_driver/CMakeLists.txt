cmake_minimum_required(VERSION 2.8.3)
project(pr2_fake_driver)

find_package(catkin REQUIRED)

catkin_package()

catkin_install_python(PROGRAMS
  scripts/fake_pr2_driver.py
  scripts/fake_actor_path_publisher.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
