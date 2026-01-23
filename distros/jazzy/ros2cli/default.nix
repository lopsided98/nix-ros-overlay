
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2cli";
  version = "0.32.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2cli/0.32.8-1.tar.gz";
    name = "0.32.8-1.tar.gz";
    sha256 = "91d2a3f16320de97a549d46f57d57aeeb5c67a8280ead817f22e31c1d7244de2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata python3Packages.packaging python3Packages.psutil python3Packages.setuptools rclpy ];

  meta = {
    description = "Framework for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
