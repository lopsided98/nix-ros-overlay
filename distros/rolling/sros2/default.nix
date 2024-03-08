
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-sros2";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/rolling/sros2/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "5e7a6ac390e5dd0dc71aa7153a5aec779f0070dddf6b428827213f13b96c604f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
