
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-rolling-gc-spl-2022";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/gc_spl_2022/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "cb26ae665c09f73aa2aa06896dbb5191257ba4d15302ff84e2e09a92ec724f8a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL at RoboCup2022'';
    license = with lib.licenses; [ asl20 ];
  };
}
