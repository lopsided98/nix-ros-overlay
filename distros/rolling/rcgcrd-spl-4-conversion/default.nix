
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-rolling-rcgcrd-spl-4-conversion";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcrd_spl_4_conversion/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "241acd27c087f7db4ddd7f8751f581cd42752ec9b168174cfcc352c06b894512";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = "Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
