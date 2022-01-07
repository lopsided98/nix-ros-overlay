
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-sros2";
  version = "0.10.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/galactic/sros2/0.10.2-2.tar.gz";
    name = "0.10.2-2.tar.gz";
    sha256 = "e2a5da1776045744622be952d57f3c6cd63e5b13c70b84a0b055eb2f5d425baf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
