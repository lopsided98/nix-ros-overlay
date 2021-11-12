
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, std-msgs, vision-msgs, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-core";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_core/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "900d07b75665a03e0e535536e98b711ce4c2ec6c90d85c3c202c930174755a05";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.tkinter rclpy std-msgs vision-msgs webots-ros2-msgs ];

  meta = {
    description = ''Core interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
