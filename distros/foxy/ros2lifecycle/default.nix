
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle-msgs, pythonPackages, rclpy, ros-testing, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-foxy-ros2lifecycle";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2lifecycle/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "7e407a3efe7629e4f7dc4deebb2e451c1b0cc7d75648859e101d07088c4fbbd4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
