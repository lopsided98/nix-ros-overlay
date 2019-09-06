
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-flake8, rclpy, pythonPackages, ament-pep257, std-msgs, ament-copyright, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-core";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_core/0.0.2-1.tar.gz;
    sha256 = "bcf69b4dcabfe0719810d89bc6e3d7133c21728bfd1a050d444bba2859cbb5b4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy webots-ros2-msgs std-msgs builtin-interfaces ];

  meta = {
    description = ''Core interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
