
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-galactic-r2r-spl-7";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/galactic/r2r_spl_7/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d102f7a313333d6b1ff1b73273f57dbadb59a668a85d6622192ae75d6906476e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = ''Robot-To-Robot communication in RoboCup SPL using SPLSM V7'';
    license = with lib.licenses; [ asl20 ];
  };
}
