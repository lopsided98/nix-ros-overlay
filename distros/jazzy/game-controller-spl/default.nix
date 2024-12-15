
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-game-controller-spl";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/game_controller_spl/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "b1d2170142306c49e057b138286718465b28e91d2f59b9b62c4dc4993ad6f2d3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
