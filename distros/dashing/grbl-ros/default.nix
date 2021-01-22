
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-grbl-ros";
  version = "0.0.15-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/dashing/grbl_ros/0.0.15-1.tar.gz";
    name = "0.0.15-1.tar.gz";
    sha256 = "6a750f776884ec76f8dd6ee39b78239ff8cf971c1ee87f41507f2cdb11af064c";
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
