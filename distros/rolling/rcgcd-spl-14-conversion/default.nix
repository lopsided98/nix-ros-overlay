
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14-conversion";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcd_spl_14_conversion/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "1b58c1a33bdc827cde8ff7609ed666506a3d8a97848016f42e06e33d975c1ca3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = "Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
