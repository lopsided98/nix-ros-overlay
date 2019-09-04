
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, ament-cmake, orocos-kdl, ament-lint-common, sensor-msgs, tf2-ros, urdfdom-headers, urdf, rclcpp, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-robot-state-publisher";
  version = "2.2.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/robot_state_publisher-release/archive/release/dashing/robot_state_publisher/2.2.3-1.tar.gz;
    sha256 = "785dffebcdfff68251b7d221051ab5b853ac65e0af8577452a376a5279e75fe6";
  };

  buildType = "ament_cmake";
  buildInputs = [ kdl-parser orocos-kdl sensor-msgs tf2-ros urdfdom-headers urdf rclcpp geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ kdl-parser orocos-kdl sensor-msgs tf2-ros urdfdom-headers urdf rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 version of the robot_state_publisher package'';
    license = with lib.licenses; [ asl20 ];
  };
}
