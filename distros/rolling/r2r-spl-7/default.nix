
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-rolling-r2r-spl-7";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/r2r_spl_7/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d05563c4dd026b1a3681575e10982cb8bfe5fe9deb7a1db162cc4b21d6e0046e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = ''Robot-To-Robot communication in RoboCup SPL using SPLSM V7'';
    license = with lib.licenses; [ asl20 ];
  };
}
