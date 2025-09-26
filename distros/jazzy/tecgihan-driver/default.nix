
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-jazzy-tecgihan-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/tecgihan/tecgihan_driver-release/archive/release/jazzy/tecgihan_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "713eb1f90b49c3ef0197fb6ea843f5fb5b7cca7dfbe9c68099742962045c171d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyserial rclpy xacro ];

  meta = {
    description = "Linux and ROS driver software for Tec Gihan sensor amplifiers for robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
