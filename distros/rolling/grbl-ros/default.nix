
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-grbl-ros";
  version = "0.0.16-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/rolling/grbl_ros/0.0.16-7.tar.gz";
    name = "0.0.16-7.tar.gz";
    sha256 = "16999fb2f16decb6a6c5283c99ca4171b9515e9d06761bfc0e41badeb7578d79";
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
