
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-grbl-ros";
  version = "0.0.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/galactic/grbl_ros/0.0.16-1.tar.gz";
    name = "0.0.16-1.tar.gz";
    sha256 = "13184d926c6e8ae2b47b7dc7397a22ac39838ddf3a06de4a607d2b0d00c08741";
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
