
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-grbl-ros";
  version = "0.0.15-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/eloquent/grbl_ros/0.0.15-1.tar.gz";
    name = "0.0.15-1.tar.gz";
    sha256 = "01469d4be2ee0a36bc00c822d11993f13b4b0edc8822bf789fba580f62ce7b36";
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
