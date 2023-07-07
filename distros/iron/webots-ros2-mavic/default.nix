
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-iron-webots-ros2-mavic";
  version = "2023.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/iron/webots_ros2_mavic/2023.1.0-1.tar.gz";
    name = "2023.1.0-1.tar.gz";
    sha256 = "7029f0dd11e934039230e384c5ca29e54ee53dd249395c436d0c4cde2fdc513c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = ''Mavic 2 Pro robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
