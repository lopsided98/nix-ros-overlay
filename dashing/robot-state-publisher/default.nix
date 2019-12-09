
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, orocos-kdl, sensor-msgs, urdfdom-headers, geometry-msgs, urdf, ament-lint-common, ament-cmake, rclcpp, ament-lint-auto, kdl-parser }:
buildRosPackage {
  pname = "ros-dashing-robot-state-publisher";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/dashing/robot_state_publisher/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "d8c69f1e1ccc6409e7252b556c8350e4125761097ce096fb90c7f517acfc72e2";
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
