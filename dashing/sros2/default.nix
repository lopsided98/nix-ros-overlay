
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, python3Packages, openssl, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-sros2";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e1f3418eb4f3500eb3c8603aab81c2315f248c1963efd4c808049b4778328612";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy openssl python3Packages.lxml ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
