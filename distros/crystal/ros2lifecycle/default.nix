
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, pythonPackages, rclpy, ros2cli, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-crystal-ros2lifecycle";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2lifecycle/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f9b4f93f89f33644f48b8e71b38f9a28db19761f3a0233a01648a639ab7d2f06";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
