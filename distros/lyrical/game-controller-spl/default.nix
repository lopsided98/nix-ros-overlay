
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-game-controller-spl";
  version = "5.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/lyrical/game_controller_spl/5.0.0-4.tar.gz";
    name = "5.0.0-4.tar.gz";
    sha256 = "8474ad07d771a1a37e55364628cf90138bd9d0dd63f3ec2677de9b59b9a74947";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
