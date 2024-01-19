
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-iron-sros2";
  version = "0.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/iron/sros2/0.11.3-1.tar.gz";
    name = "0.11.3-1.tar.gz";
    sha256 = "1ad0df380847ad2e2757a2072090dde73b43caca90eff6de48b91ab6486c25b7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
