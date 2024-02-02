
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-game-controller-spl";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/game_controller_spl/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "1b0f170d14263021dc15e3ae70004151e3a704108d3f0355dd9ca8c5070e00e5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL'';
    license = with lib.licenses; [ asl20 ];
  };
}
