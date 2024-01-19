
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-grbl-ros";
  version = "0.0.16-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/rolling/grbl_ros/0.0.16-5.tar.gz";
    name = "0.0.16-5.tar.gz";
    sha256 = "945d0e2080d8b172557e8f3167a4403050d03b55c18cd844e80bd433123a0539";
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
