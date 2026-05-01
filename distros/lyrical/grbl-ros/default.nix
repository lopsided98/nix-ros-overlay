
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-grbl-ros";
  version = "0.0.16-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/lyrical/grbl_ros/0.0.16-8.tar.gz";
    name = "0.0.16-8.tar.gz";
    sha256 = "9244e736ac88e1073ee94b0938df6c9f34a6ee28285165f3e1588c0a3fadf49d";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ grbl-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package to interface with a GRBL serial device";
    license = with lib.licenses; [ mit ];
  };
}
