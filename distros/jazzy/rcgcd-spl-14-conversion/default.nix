
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-jazzy-rcgcd-spl-14-conversion";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/rcgcd_spl_14_conversion/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "ac4c24848aeb7453de588f40b05d287766b93b7c41900a5b616718a7b70c13d8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = "Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
