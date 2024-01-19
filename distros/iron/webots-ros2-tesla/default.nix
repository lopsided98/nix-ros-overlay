
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-iron-webots-ros2-tesla";
  version = "2023.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/iron/webots_ros2_tesla/2023.1.1-2.tar.gz";
    name = "2023.1.1-2.tar.gz";
    sha256 = "e927abf95a989c2bd26ecd17eb2c179d146084d2faf7ec53c2049dc82c4ec259";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv4 rclpy webots-ros2-driver ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
