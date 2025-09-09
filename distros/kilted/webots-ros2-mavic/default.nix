
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-mavic";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_mavic/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "5ec3e0ab22bae9109af6e99d66d0b29dfbe5fe5075b6f7efa5c897459fa86828";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = "Mavic 2 Pro robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
