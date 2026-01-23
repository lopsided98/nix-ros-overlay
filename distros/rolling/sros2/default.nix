
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-sros2";
  version = "0.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/rolling/sros2/0.16.3-1.tar.gz";
    name = "0.16.3-1.tar.gz";
    sha256 = "cc9f04113e13923cb8560320cb75a0daa86b159dee7bb050988de5fcd06b543c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = "Command line tools for managing SROS2 keys";
    license = with lib.licenses; [ asl20 ];
  };
}
