
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-humble-gc-spl-2022";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/gc_spl_2022/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "70c5d8808029f7d3da78d159a4590d47a2e7a41ffc9d3c018abf2da2365cad05";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL at RoboCup2022";
    license = with lib.licenses; [ asl20 ];
  };
}
