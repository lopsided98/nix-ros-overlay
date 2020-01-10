
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, openssl, python3Packages, pythonPackages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-sros2";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e1f3418eb4f3500eb3c8603aab81c2315f248c1963efd4c808049b4778328612";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ openssl python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
