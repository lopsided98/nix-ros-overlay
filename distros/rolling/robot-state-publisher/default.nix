
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, orocos-kdl, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs, tf2-ros, tf2-ros-py, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-robot-state-publisher";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/rolling/robot_state_publisher/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "424744fa8fdca7de0cd62b439b40849bf33cb21aa935285e771eef13ae524804";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.pytest rclpy tf2-ros-py ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces geometry-msgs kdl-parser launch launch-ros orocos-kdl rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "This package take the joint angles of a robot as input, and publishes the 3D poses of the robot links to tf2, using a kinematic tree model of the robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
