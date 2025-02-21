
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-mavic";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_mavic/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "c9a993caf18961369bf72314a8b1f55478acaace8c3606d0e24516c7b6114196";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = "Mavic 2 Pro robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
