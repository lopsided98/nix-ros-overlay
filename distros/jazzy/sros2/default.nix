
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sros2";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/jazzy/sros2/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "e4724f9c527dc2537da2f7cee8630e674b217f7e176f49b924d0c63d8e7cdf5f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.argcomplete python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = "Command line tools for managing SROS2 keys";
    license = with lib.licenses; [ asl20 ];
  };
}
