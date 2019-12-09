
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2node, ros2service, ros2cli, ament-pep257, rclpy, ament-flake8, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-crystal-ros2lifecycle";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2lifecycle/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f9b4f93f89f33644f48b8e71b38f9a28db19761f3a0233a01648a639ab7d2f06";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ ros2node ros2service ros2cli rclpy lifecycle-msgs ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
