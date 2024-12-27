
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-game-controller-spl";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/game_controller_spl/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "40d96979d05f9581750dd79ab5ccb46e998ae504221843607b1ad30002c4cc36";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
