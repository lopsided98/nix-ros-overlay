
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2cli";
  version = "0.29.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli/0.29.1-1.tar.gz";
    name = "0.29.1-1.tar.gz";
    sha256 = "26de20b950be8a911addbc28389cb987d4bf629f058e49f5e6a67a97ddd99905";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata python3Packages.netifaces python3Packages.packaging python3Packages.setuptools rclpy ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
