
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, webots-ros2-core }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-tesla";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_tesla/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "2932674164ea46aceb14284e9ee8bf6d7f57e44519502e13cf689a0135eaf78a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-core ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
