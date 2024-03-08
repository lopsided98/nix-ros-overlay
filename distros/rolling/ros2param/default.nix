
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-rolling-ros2param";
  version = "0.31.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2param/0.31.1-2.tar.gz";
    name = "0.31.1-2.tar.gz";
    sha256 = "ce56d84eb631692417bbd25c02170b8db0400a1e89144b88d244a8273ddac304";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ rcl-interfaces rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The param command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
