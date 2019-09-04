
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, ament-cmake, orocos-kdl, ament-lint-common, sensor-msgs, tf2-ros, urdfdom-headers, urdf, rclcpp, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-robot-state-publisher";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/crystal/robot_state_publisher/2.1.0-0.tar.gz;
    sha256 = "d849ccbb30a8a45c01a4a67ab1c7fbcfa331902a2786e127739eb63182b539a1";
  };

  buildInputs = [ kdl-parser orocos-kdl sensor-msgs tf2-ros urdfdom-headers urdf rclcpp geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ kdl-parser orocos-kdl sensor-msgs tf2-ros urdfdom-headers urdf rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 version of the robot_state_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
