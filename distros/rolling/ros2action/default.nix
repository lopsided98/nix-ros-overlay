
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2action";
  version = "0.40.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2action/0.40.4-1.tar.gz";
    name = "0.40.4-1.tar.gz";
    sha256 = "bc303876aa8f04a796e424e44df4f1dbeb1cf1dcd19d1abd9d71f98f0774bc89";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.osrf-pycommon python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The action command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
