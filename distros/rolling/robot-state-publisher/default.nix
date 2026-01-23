
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch-ros, launch-testing-ament-cmake, orocos-kdl, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2-ros, tf2-ros-py, urdf }:
buildRosPackage {
  pname = "ros-rolling-robot-state-publisher";
  version = "3.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/rolling/robot_state_publisher/3.5.4-1.tar.gz";
    name = "3.5.4-1.tar.gz";
    sha256 = "122fd67a5e07c19bb14098a827d3a0af99f95f3e45fc19c2b82ed4f7c7282283";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs kdl-parser orocos-kdl rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package take the joint angles of a robot as input, and publishes the 3D poses of the robot links to tf2, using a kinematic tree model of the robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
