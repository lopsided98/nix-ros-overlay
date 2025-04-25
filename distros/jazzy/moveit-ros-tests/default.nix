
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, moveit-common, moveit-configs-utils, moveit-core, moveit-planners-chomp, moveit-planners-ompl, moveit-planners-stomp, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-simple-controller-manager, pilz-industrial-motion-planner, rclcpp, ros-testing, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-tests";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_tests/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "55fd5ea8701f129fdf13838922cdcba425440496cd3ea13859c2ae68e19b7e1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto moveit-configs-utils moveit-core moveit-planners-chomp moveit-planners-ompl moveit-planners-stomp moveit-resources-panda-moveit-config moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-simple-controller-manager pilz-industrial-motion-planner ros-testing tf2-ros ];
  propagatedBuildInputs = [ moveit-common rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integration tests for moveit_ros";
    license = with lib.licenses; [ bsd3 ];
  };
}
