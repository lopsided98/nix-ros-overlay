
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-rolling-r2r-spl-7";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/r2r_spl_7/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "5d16b77a49b4f84c6ea73eb370e0063e9bb774ade89f71a760e40dbd70ca4b5d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL using SPLSM V7";
    license = with lib.licenses; [ asl20 ];
  };
}
