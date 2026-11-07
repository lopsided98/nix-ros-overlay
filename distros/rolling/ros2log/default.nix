
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, rosgraph-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2log";
  version = "0.42.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2log/0.42.2-1.tar.gz";
    name = "0.42.2-1.tar.gz";
    sha256 = "f2625bc0041f7723862ad45bab3833958a51439dfe6352127188842ce8c69844";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete rcl-interfaces rclpy ros2cli ros2node rosgraph-msgs ];

  meta = {
    description = "The log command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
