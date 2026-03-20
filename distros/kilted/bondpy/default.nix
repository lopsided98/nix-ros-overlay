
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, python3Packages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-kilted-bondpy";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/kilted/bondpy/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "3fc3e7d48d1272a78028b8ec93385dab6a4021755e4c79c697169491151e90b3";
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
