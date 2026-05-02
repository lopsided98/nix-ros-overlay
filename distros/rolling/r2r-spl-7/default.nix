
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-rolling-r2r-spl-7";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/r2r_spl_7/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "cf0c00f51a47e89d075ad2e4191ee50f647fba404d6dc67f1a80c8bf81c20099";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL using SPLSM V7";
    license = with lib.licenses; [ asl20 ];
  };
}
