
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rclpy, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ros2cli";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2cli/0.7.4-1.tar.gz;
    sha256 = "fe0a5365018d0996e0ee475e7cca98ed7dc63c6c1b4e1705d55b7afd71c21495";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ rclpy python3Packages.setuptools ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
