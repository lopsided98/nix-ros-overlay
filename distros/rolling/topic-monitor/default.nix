
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-monitor";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_monitor/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "ddcdd256116d27ab79c748e3889225dbff15b19ca011cdb6092a9ddbf06af605";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
