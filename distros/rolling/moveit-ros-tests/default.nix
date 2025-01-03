
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, moveit-common, moveit-configs-utils, moveit-core, moveit-planners-chomp, moveit-planners-ompl, moveit-planners-stomp, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-simple-controller-manager, pilz-industrial-motion-planner, rclcpp, ros-testing, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-tests";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_tests/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "ddea99b80a5c3bc757914396d4d44a0ccbff066953689656b373ed9fd2ef1720";
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
