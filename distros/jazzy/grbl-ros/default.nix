
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grbl-ros";
  version = "0.0.16-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/jazzy/grbl_ros/0.0.16-7.tar.gz";
    name = "0.0.16-7.tar.gz";
    sha256 = "ac469f34a4d40ce8edeb6042e317a47691d0531bc14f323190278f9c7fadce8e";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ grbl-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package to interface with a GRBL serial device";
    license = with lib.licenses; [ mit ];
  };
}
