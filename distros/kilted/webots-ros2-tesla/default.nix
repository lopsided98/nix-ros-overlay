
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-tesla";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_tesla/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "9dbbc5c7f6e77192c13efa409590cb5f3f07d4e80276ab47077916b554d560ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv4 rclpy webots-ros2-driver ];

  meta = {
    description = "Tesla ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
