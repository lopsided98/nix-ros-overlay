
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, pythonPackages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-rolling-bondpy";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/bondpy/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "8cf24af416ec10eb4aa90d3762d849aa614deb7a63e362d5eec37feee0e48cde";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ bond rclpy smclib ];

  meta = {
    description = "Python implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
