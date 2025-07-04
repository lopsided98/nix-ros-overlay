
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-grbl-ros";
  version = "0.0.16-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/kilted/grbl_ros/0.0.16-7.tar.gz";
    name = "0.0.16-7.tar.gz";
    sha256 = "580caac3eca69f0e60e71595a5c46ff9973d263d042357390ddfbd7a12df9469";
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
