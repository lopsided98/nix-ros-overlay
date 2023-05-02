
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-mavic";
  version = "2023.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_mavic/2023.0.3-1.tar.gz";
    name = "2023.0.3-1.tar.gz";
    sha256 = "d48fd3d477156d3297f4d4b6f08d109c11ab56c9baa6f44f8ce6155f0e60477f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = ''Mavic 2 Pro robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
