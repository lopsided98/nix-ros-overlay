
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, rclpy, ros-testing, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-humble-sros2";
  version = "0.10.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/humble/sros2/0.10.8-1.tar.gz";
    name = "0.10.8-1.tar.gz";
    sha256 = "efbf6b2699bffe8ed6ea39b3a16355268de8d747e15c58496c1e08b8cfd112c6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.cryptography python3Packages.importlib-resources python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = "Command line tools for managing SROS2 keys";
    license = with lib.licenses; [ asl20 ];
  };
}
