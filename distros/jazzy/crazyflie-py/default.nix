
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, crazyflie-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-py";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_py/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "43a62f187b3d702fdb62969cef823ce27d10fc19044e581ae45f9c596deec32d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-interfaces rclpy ];

  meta = {
    description = "Simple Python Interface for Crayzswarm2";
    license = with lib.licenses; [ mit ];
  };
}
