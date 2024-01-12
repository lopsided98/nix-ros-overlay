
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, kdl-parser, launch-ros, launch-testing-ament-cmake, orocos-kdl-vendor, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-iron-robot-state-publisher";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/iron/robot_state_publisher/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "2a0f1b6735d9c43f25fdba637f16165a193a30602ed8ea021e0a47a11f35d574";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs kdl-parser orocos-kdl-vendor rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package take the joint angles of a robot as input, and publishes the 3D poses of the robot links to tf2, using a kinematic tree model of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
