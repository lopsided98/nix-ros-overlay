
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, crazyflie-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-crazyflie-py";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/rolling/crazyflie_py/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "605ff69642c33138dc1663860ffee6a66f1bfb44abead817e1c31908fac5c99f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-interfaces rclpy ];

  meta = {
    description = "Simple Python Interface for Crayzswarm2";
    license = with lib.licenses; [ mit ];
  };
}
