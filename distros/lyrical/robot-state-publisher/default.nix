
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch-ros, launch-testing-ament-cmake, launch-testing-ros, orocos-kdl, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2-ros, tf2-ros-py, urdf }:
buildRosPackage {
  pname = "ros-lyrical-robot-state-publisher";
  version = "3.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/lyrical/robot_state_publisher/3.5.6-1.tar.gz";
    name = "3.5.6-1.tar.gz";
    sha256 = "0d18df4777035d2ea099bb040f4ae35d6127ae868fca1c9e08c4fad6bb52f5e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake launch-testing-ros tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs kdl-parser orocos-kdl rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package take the joint angles of a robot as input, and publishes the 3D poses of the robot links to tf2, using a kinematic tree model of the robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
