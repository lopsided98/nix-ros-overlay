
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2node";
  version = "0.18.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2node/0.18.11-1.tar.gz";
    name = "0.18.11-1.tar.gz";
    sha256 = "7cc6de1cfa0fca4a40ce4ac33552a7091e8f912ea26547c552c635a793234c3c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest rclpy test-msgs ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The node command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
