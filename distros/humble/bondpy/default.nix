
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, python3Packages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-humble-bondpy";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/humble/bondpy/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "c7e568776e0c54cecd72b07876faecbd8590f3c0bb29ec84505de63d3acd902b";
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
