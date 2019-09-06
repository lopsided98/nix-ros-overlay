
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ros2node, rclpy, pythonPackages, ament-pep257, rcl-interfaces, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2param";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2param/0.6.3-0.tar.gz;
    sha256 = "4e9e9bf121ab885ecbc1994379ec6722c85a41abca9e6d4bf5454fcce40cd171";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy rcl-interfaces ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy ros2node rcl-interfaces ros2cli ];

  meta = {
    description = ''The param command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
