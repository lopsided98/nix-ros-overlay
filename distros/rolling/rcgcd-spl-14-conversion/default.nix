
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14-conversion";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcd_spl_14_conversion/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "2d3d6dedadb6f6b9498ced98e3a061bae546acd0cfc2becf6fb0113df17fef21";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
