
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-mavic";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_mavic/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "7865fd57931d645d1d425c9bf9d50771d14d0a029e1ba0f0e58ff39395ef3665";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = "Mavic 2 Pro robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
