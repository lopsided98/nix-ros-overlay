
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, ros2cli, ros2srv, ros2topic }:
buildRosPackage {
  pname = "ros-crystal-ros2service";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2service/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "4034b2face753bc2960ae7ad0d7b0c009e7f51f14639fafd7f6386397c2340c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli ros2srv ros2topic ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
