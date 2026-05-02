
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/rolling/game_controller_spl/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "3e59303fc6ebd307818aa39f7a256c67bc6565d49cf8956f1465b97af1d834f4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
