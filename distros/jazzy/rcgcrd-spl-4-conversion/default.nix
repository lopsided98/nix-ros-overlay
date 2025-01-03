
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-jazzy-rcgcrd-spl-4-conversion";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/rcgcrd_spl_4_conversion/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "e8e687f694e0dc4ca926fc916889fa7513484cf877d9dc8cfae1b9996c5380ef";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = "Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
