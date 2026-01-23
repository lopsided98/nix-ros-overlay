
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-sros2";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/kilted/sros2/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "5c9e85d32d351e7f49b16b1a65d1b05909830ce4f5b77b90ad077c7a218fac00";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = "Command line tools for managing SROS2 keys";
    license = with lib.licenses; [ asl20 ];
  };
}
