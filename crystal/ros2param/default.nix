
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2node, ros2cli, rcl-interfaces, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-ros2param";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2param/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "4e9e9bf121ab885ecbc1994379ec6722c85a41abca9e6d4bf5454fcce40cd171";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rcl-interfaces rclpy ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ ros2node ros2cli rcl-interfaces rclpy ];

  meta = {
    description = ''The param command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
