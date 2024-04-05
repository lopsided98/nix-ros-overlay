
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2node";
  version = "0.31.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2node/0.31.2-1.tar.gz";
    name = "0.31.2-1.tar.gz";
    sha256 = "e20d1565c2485f4519695a34891fa592ddd8f4dd7854ed4a9ea1789235c1de21";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest rclpy test-msgs ];
  propagatedBuildInputs = [ rclpy ros2cli ];

  meta = {
    description = "The node command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
