
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-ros2cli";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2cli/0.6.3-0.tar.gz;
    sha256 = "b777413fcbd5057055a331e5375bbb562c0cbb62074464298a593170795eb9ee";
  };

  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy python3Packages.setuptools ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
