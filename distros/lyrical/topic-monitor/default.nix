
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-topic-monitor";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/topic_monitor/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "b94dd0a819639586a372a017b54e4eea2b4f34a05f8ddab6908c6af7ae30ea3e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces launch launch-ros python3Packages.matplotlib rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
