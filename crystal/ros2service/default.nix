
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, ros2srv, pythonPackages, ament-pep257, python3Packages, ament-copyright, ros2cli, ros2topic }:
buildRosPackage {
  pname = "ros-crystal-ros2service";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2service/0.6.3-0.tar.gz;
    sha256 = "4034b2face753bc2960ae7ad0d7b0c009e7f51f14639fafd7f6386397c2340c8";
  };

  buildInputs = [ rclpy ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy ros2srv ros2topic python3Packages.pyyaml ros2cli ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
