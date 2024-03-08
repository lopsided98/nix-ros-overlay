
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-humble-rcgcd-spl-14-conversion";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/humble/rcgcd_spl_14_conversion/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "935b2e2e3a2eb54b45cb1cd469bd457f5dcc9f2c0c9fcf5ab84e25e77a8709a5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
