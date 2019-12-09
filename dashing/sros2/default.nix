
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, pythonPackages, openssl, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-sros2";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e1f3418eb4f3500eb3c8603aab81c2315f248c1963efd4c808049b4778328612";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ openssl ros2cli python3Packages.lxml rclpy ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
