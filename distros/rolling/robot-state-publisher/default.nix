
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch-ros, launch-testing-ament-cmake, orocos-kdl-vendor, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-rolling-robot-state-publisher";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/rolling/robot_state_publisher/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "64da42365636e4c43e3b0642f93b9a48a84c28832200333dd558aca0c2947b41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs kdl-parser orocos-kdl-vendor rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package take the joint angles of a robot as input, and publishes the 3D poses of the robot links to tf2, using a kinematic tree model of the robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
