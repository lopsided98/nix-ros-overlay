
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, gc-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-gc-spl";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/iron/gc_spl/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "f19dee091c5f82733a8f1a23d444fe52ca1151ffe6d17b568fc1d72defc8917e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ gc-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL'';
    license = with lib.licenses; [ asl20 ];
  };
}
