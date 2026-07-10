
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-topic-monitor";
  version = "0.37.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/topic_monitor/0.37.9-1.tar.gz";
    name = "0.37.9-1.tar.gz";
    sha256 = "da9b824583bf8626f0c46f585578a45e29b6c8957efe2b44dd77bc68ea2452ae";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces launch launch-ros rclpy std-msgs ];

  meta = {
    description = "Package containing tools for monitoring ROS 2 topics.";
    license = with lib.licenses; [ asl20 ];
  };
}
