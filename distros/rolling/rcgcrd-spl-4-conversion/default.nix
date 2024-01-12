
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-rolling-rcgcrd-spl-4-conversion";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcrd_spl_4_conversion/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "c69109bc1f92cb91bcabfb9404f10077b4565428489dababa2b9a5ba39f6f9a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
