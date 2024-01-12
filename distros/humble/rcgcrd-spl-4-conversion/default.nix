
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-humble-rcgcrd-spl-4-conversion";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/humble/rcgcrd_spl_4_conversion/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a6343f4ebbd8d3c5a6dc10d5b0864c79acf266d02adfb6d9baccd6792453b6a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
