
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-humble-tecgihan-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/tecgihan/tecgihan_driver-release/archive/release/humble/tecgihan_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9939a65ea13fcf65c1ef83cdfcc913bae341cf7c0fa5bd853d8feb6999cd392f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyserial rclpy xacro ];

  meta = {
    description = "Linux and ROS driver software for Tec Gihan sensor amplifiers for robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
