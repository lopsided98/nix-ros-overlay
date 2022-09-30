
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-tesla";
  version = "2022.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_tesla/2022.1.0-1.tar.gz";
    name = "2022.1.0-1.tar.gz";
    sha256 = "308797a994bcf7a415cb6af9c09cbc4e134d8d28d2b40bbfa61e64b9eb598684";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv3 rclpy webots-ros2-driver ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
