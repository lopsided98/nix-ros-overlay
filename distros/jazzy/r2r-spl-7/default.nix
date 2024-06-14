
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-jazzy-r2r-spl-7";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/jazzy/r2r_spl_7/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "f828c806b4e56415cf32fafab0290f9c32ca038a1cccadcf21b253d7615c4d2d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL using SPLSM V7";
    license = with lib.licenses; [ asl20 ];
  };
}
