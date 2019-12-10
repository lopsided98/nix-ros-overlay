
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros2cli, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-eloquent-sros2";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/eloquent/sros2/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "9f8dabde33f6ab15c12d2320689600224e2f2410726ceec344137856b887627e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.cryptography python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
