
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2cli";
  version = "0.26.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli/0.26.0-1.tar.gz";
    name = "0.26.0-1.tar.gz";
    sha256 = "893bb7daf83228f113d79ccf04d66929c8caa0236e25840461dca6e35f7e736c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata python3Packages.netifaces python3Packages.packaging python3Packages.setuptools rclpy ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
