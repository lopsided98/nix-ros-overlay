
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-rolling-ros2param";
  version = "0.34.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2param/0.34.1-1.tar.gz";
    name = "0.34.1-1.tar.gz";
    sha256 = "ccc0e179e99743df717a7a24c5ded3f803a2f31c50c4610005fb2e5e15a22d61";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ rcl-interfaces rclpy ros2cli ros2node ros2service ];

  meta = {
    description = "The param command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
