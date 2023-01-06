
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-rolling-gc-spl-2022";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/gc_spl_2022/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "05f0ba9a4adce1d3ea5e825514d042f5990580cb8e007faf90fb92f8647650fe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL at RoboCup2022'';
    license = with lib.licenses; [ asl20 ];
  };
}
