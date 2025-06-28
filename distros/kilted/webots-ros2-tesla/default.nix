
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-tesla";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_tesla/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "5020b7bf4127784f5f57246f577e8928a462e5999f184ddb3a5295a2a6b0fd58";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv4 rclpy webots-ros2-driver ];

  meta = {
    description = "Tesla ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
