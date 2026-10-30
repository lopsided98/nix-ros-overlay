
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-topic-monitor";
  version = "0.36.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/topic_monitor/0.36.6-1.tar.gz";
    name = "0.36.6-1.tar.gz";
    sha256 = "9547c71f5d0355680cd8747eaec43da6fbbeca2d4e7d39ae7f85fa72ef236998";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
