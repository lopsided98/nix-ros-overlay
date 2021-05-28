
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-grbl-ros";
  version = "0.0.15-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/galactic/grbl_ros/0.0.15-2.tar.gz";
    name = "0.0.15-2.tar.gz";
    sha256 = "e42dd0bf624b9c6d4ae7c1399a6049902bcf578f6c4ffbcb7c4a3ebffcc09acb";
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
