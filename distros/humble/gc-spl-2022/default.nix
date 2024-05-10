
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-humble-gc-spl-2022";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/gc_spl_2022/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f11b10541c95542de78a1ae080fb41a0fdfe44cfaa74fecb4840cb228226713e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL at RoboCup2022";
    license = with lib.licenses; [ asl20 ];
  };
}
