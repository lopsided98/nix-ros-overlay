
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-galactic-rcgcrd-spl-4-conversion";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/galactic/rcgcrd_spl_4_conversion/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0dbeb342f4357e15d8cbe5e9644ca4f3a277d43757033b5d046b4b7014774ace";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
