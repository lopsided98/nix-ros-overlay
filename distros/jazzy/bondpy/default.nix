
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bond, python3Packages, rclpy, smclib }:
buildRosPackage {
  pname = "ros-jazzy-bondpy";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/bondpy/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "22e934b8ad31a22341edd61ca3e5dc6a8897f0af18a8eb5e6d823fcf0583f5e4";
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
