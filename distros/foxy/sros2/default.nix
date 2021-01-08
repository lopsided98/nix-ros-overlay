
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, python3Packages, pythonPackages, rclpy, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-sros2";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/foxy/sros2/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "f5a0f86337d7d4a6950558300f2ef1a4fcd2f7885b855064bc43747f917deb31";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.cryptography python3Packages.lxml rclpy ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
