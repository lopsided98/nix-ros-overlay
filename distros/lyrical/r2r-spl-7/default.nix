
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-lyrical-r2r-spl-7";
  version = "3.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/lyrical/r2r_spl_7/3.0.1-5.tar.gz";
    name = "3.0.1-5.tar.gz";
    sha256 = "68c6b2208a29aace41164ec6090587ec09564338919c7675a9c7991aaa3cf1c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL using SPLSM V7";
    license = with lib.licenses; [ asl20 ];
  };
}
