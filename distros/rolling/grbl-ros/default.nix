
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-grbl-ros";
  version = "0.0.16-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/rolling/grbl_ros/0.0.16-3.tar.gz";
    name = "0.0.16-3.tar.gz";
    sha256 = "18d5caf2661ca669134deed089c334919f520ca3cd0dafa1f531c1894b531f95";
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
