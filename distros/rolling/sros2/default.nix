
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-sros2";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/rolling/sros2/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "9b67b88186f059ddd745439ebd9d16bea6c3cbe9f90c971366c97f7a0b3a9913";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
