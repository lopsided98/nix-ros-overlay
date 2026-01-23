
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2cli";
  version = "0.38.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2cli/0.38.2-1.tar.gz";
    name = "0.38.2-1.tar.gz";
    sha256 = "68eedeb41f7fbe215628156661136713161b42ac8f2fd1dfb780bd7d8260fc81";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.packaging python3Packages.psutil rclpy ];

  meta = {
    description = "Framework for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
