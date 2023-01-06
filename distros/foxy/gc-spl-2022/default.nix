
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-foxy-gc-spl-2022";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/gc_spl_2022/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "15a5f4197725b8a783b37e20e999b3e2f18b2f6aec7edef2c112465acc7ef175";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL at RoboCup2022'';
    license = with lib.licenses; [ asl20 ];
  };
}
