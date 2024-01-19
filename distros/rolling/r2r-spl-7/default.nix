
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-rolling-r2r-spl-7";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/r2r_spl_7/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "93c199e5558da311f06547600d680c06337a02f8ca1ce1855f4277ba676d2e3a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = ''Robot-To-Robot communication in RoboCup SPL using SPLSM V7'';
    license = with lib.licenses; [ asl20 ];
  };
}
