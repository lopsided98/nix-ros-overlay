
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-tesla";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_tesla/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "c6a6eca61383ae0d0a19439fb50815042bff72f815f08ccaeb4eb475d90ee574";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv4 rclpy webots-ros2-driver ];

  meta = {
    description = "Tesla ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
