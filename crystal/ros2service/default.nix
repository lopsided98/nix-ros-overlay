
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, ros2srv, ros2topic, pythonPackages, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-ros2service";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2service/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "4034b2face753bc2960ae7ad0d7b0c009e7f51f14639fafd7f6386397c2340c8";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml ros2srv ros2topic ros2cli rclpy ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
