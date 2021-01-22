
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, openssl, python3Packages, pythonPackages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-sros2";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "f17d82cd80c3b0ac1ccfdc2d9d2c584c94bb80ab7de24b5876dbeb586180cb9a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python openssl python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
