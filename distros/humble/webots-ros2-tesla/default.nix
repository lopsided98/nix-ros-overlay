
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-tesla";
  version = "2023.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_tesla/2023.0.4-1.tar.gz";
    name = "2023.0.4-1.tar.gz";
    sha256 = "b180eebb17bc5c524f91e6a5da68c5d0e35123f2c5cf8cc20ec71767c02591d7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv3 rclpy webots-ros2-driver ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
