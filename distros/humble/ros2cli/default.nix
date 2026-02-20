
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2cli";
  version = "0.18.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2cli/0.18.17-1.tar.gz";
    name = "0.18.17-1.tar.gz";
    sha256 = "4bda7c619e289f30062a11c7ba802d55f6d3468a47e9fe3c9edf8fe9b24f32e7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata python3Packages.netifaces python3Packages.packaging python3Packages.setuptools rclpy ];

  meta = {
    description = "Framework for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
