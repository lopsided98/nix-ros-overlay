
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle-msgs, pythonPackages, rclpy, ros2cli, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-dashing-ros2lifecycle";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2lifecycle/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "7337e5aa79511e6fe056e61d63d3de41130cd2b85b0615e4d34426e3cbe4f4b9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
