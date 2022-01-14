
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tesla";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_tesla/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "b26ebc29ecfd8319935737f632f3c085022bead48e21766dc3bb8eabf29a2f5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv3 rclpy webots-ros2-core ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
