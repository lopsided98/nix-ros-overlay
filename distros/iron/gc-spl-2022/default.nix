
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-iron-gc-spl-2022";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/iron/gc_spl_2022/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "deadf38664818db96103c9032131936da604fdba9d0e1a228fd868a33ccdd277";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL at RoboCup2022";
    license = with lib.licenses; [ asl20 ];
  };
}
