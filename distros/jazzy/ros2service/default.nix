
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, ros2topic, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2service";
  version = "0.32.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2service/0.32.11-1.tar.gz";
    name = "0.32.11-1.tar.gz";
    sha256 = "a0d2d16ab27a87f04d8de76626fd99c152f7ae8bcfe243da29c94755492cecae";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli ros2topic rosidl-runtime-py ];

  meta = {
    description = "The service command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
