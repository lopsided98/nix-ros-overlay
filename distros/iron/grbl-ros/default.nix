
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-grbl-ros";
  version = "0.0.16-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/iron/grbl_ros/0.0.16-6.tar.gz";
    name = "0.0.16-6.tar.gz";
    sha256 = "89c47fe684bc482449bf0ce2c86b092aaefcb110b48c8def820e0a6ef7878d4e";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ grbl-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
