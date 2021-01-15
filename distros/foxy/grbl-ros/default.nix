
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grbl-ros";
  version = "0.0.15-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/foxy/grbl_ros/0.0.15-1.tar.gz";
    name = "0.0.15-1.tar.gz";
    sha256 = "9b54ba04a2d8f07c6957fb8ec0c634ecd6cf49799f315f354f3641e5e114dfeb";
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
