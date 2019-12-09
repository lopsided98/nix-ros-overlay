
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, orocos-kdl, sensor-msgs, urdfdom-headers, geometry-msgs, urdf, ament-lint-common, ament-cmake, rclcpp, ament-lint-auto, kdl-parser }:
buildRosPackage {
  pname = "ros-eloquent-robot-state-publisher";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/eloquent/robot_state_publisher/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "196ab4c26252bc005ce11a625d291a1c09165e819df0fa4832a0acb537d7abb0";
  };

  buildType = "ament_cmake";
  buildInputs = [ orocos-kdl sensor-msgs geometry-msgs urdfdom-headers urdf rclcpp tf2-ros kdl-parser ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ orocos-kdl sensor-msgs geometry-msgs urdfdom-headers urdf rclcpp tf2-ros kdl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 version of the robot_state_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
