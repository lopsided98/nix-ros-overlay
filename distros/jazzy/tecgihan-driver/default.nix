
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-jazzy-tecgihan-driver";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tecgihan/tecgihan_driver-release/archive/release/jazzy/tecgihan_driver/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c055faac902539f2a9796143447aee85474b89a98403abdc34f136a2c1d22b4f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyserial rclpy xacro ];

  meta = {
    description = "Linux and ROS driver software for Tec Gihan sensor amplifiers for robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
