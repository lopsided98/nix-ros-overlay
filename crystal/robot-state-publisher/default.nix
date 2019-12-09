
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, orocos-kdl, sensor-msgs, urdfdom-headers, geometry-msgs, urdf, ament-lint-common, ament-cmake, rclcpp, ament-lint-auto, kdl-parser }:
buildRosPackage {
  pname = "ros-crystal-robot-state-publisher";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/crystal/robot_state_publisher/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "d849ccbb30a8a45c01a4a67ab1c7fbcfa331902a2786e127739eb63182b539a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ orocos-kdl sensor-msgs geometry-msgs urdfdom-headers urdf rclcpp tf2-ros kdl-parser ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ orocos-kdl sensor-msgs geometry-msgs urdfdom-headers urdf rclcpp tf2-ros kdl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 version of the robot_state_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
