
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-monitor";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_monitor/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "8d0baf2a3b6b635a2829013224948aa285dd79d8b1170c9f76c7a81d98cc4cb8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
