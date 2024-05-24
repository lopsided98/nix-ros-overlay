
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-gc-spl-2022";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/gc_spl_2022/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "d95ad80c80ec42f46c9ecef30b6e2116e80d85f43a200c40b3519232b9ba4078";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL at RoboCup2022";
    license = with lib.licenses; [ asl20 ];
  };
}
