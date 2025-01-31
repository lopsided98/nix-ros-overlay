
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, python3Packages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-rolling-bondpy";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/bondpy/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "89afbb5546cca32403b77ea6029f2eed63b7f663706cf91a24f4d79b515401d2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bond rclpy smclib ];

  meta = {
    description = "Python implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsd3 ];
  };
}
