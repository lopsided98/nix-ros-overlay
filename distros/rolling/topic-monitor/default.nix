
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, launch, launch-ros, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-monitor";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_monitor/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "28e7dc912e35e71521148048d1409f5ab9cb33874d0ea07b644675d080d73457";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = ''Package containing tools for monitoring ROS 2 topics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
