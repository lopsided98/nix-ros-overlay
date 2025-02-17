
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, python3Packages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-jazzy-bondpy";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/bondpy/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "f44ab92df1dc8bb0712a971764a46ab33d85d34fbb677f22eb1d1ccaf2c8ddc2";
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
