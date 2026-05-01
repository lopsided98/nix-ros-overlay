
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-topic-monitor";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/topic_monitor/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "b63808342a57a6c36f25fa44dff2e9bc13a84f421a6a3a98cb2459df82b764e2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces launch launch-ros rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
