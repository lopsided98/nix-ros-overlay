
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2node";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2node/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "3951b528b1be7dd0bd3499062d7df3eb69055b2cfce648cb2b6ec8daa8884f01";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout rclpy test-msgs ];
  propagatedBuildInputs = [ rclpy ros2cli ];

  meta = {
    description = "The node command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
