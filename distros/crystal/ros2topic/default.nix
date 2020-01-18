
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, ros2cli, ros2msg, test-msgs }:
buildRosPackage {
  pname = "ros-crystal-ros2topic";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2topic/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "cc449c6bfc2f21af43c622ffa5e00142a6b7f5cbec5a6de6534d8b37b2c51c54";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli ros2msg ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
