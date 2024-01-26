
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14-conversion";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcd_spl_14_conversion/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "b50e36da5879c3f8a58a9b9a48b2e8980a175bda843ea176226154fc870e11e7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
