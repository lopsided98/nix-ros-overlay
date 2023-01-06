
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14-conversion";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcd_spl_14_conversion/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "df5f680138520ce426209d7aa290c49c409efdf7e60f4b25753a77edb1166d68";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
