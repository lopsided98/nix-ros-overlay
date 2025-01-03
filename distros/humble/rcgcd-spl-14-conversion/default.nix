
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rcgcd-spl-14 }:
buildRosPackage {
  pname = "ros-humble-rcgcd-spl-14-conversion";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/rcgcd_spl_14_conversion/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "0c5970bea3efb352139aca44fa7184fa750f3290125dc96e89cd36202c81545d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcd-spl-14 ];

  meta = {
    description = "Converts RoboCup SPL GameController Data V14 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
