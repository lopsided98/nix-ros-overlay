
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sros2";
  version = "0.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/lyrical/sros2/0.16.5-1.tar.gz";
    name = "0.16.5-1.tar.gz";
    sha256 = "3eeca0ac7aea94d51a5d9433ba541d2f7f466c1345a26f1be95aa7e1221574da";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest python3Packages.pytest-timeout ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = "Command line tools for managing SROS2 keys";
    license = with lib.licenses; [ asl20 ];
  };
}
