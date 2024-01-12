
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, launch, launch-ros, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-topic-monitor";
  version = "0.27.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/topic_monitor/0.27.1-1.tar.gz";
    name = "0.27.1-1.tar.gz";
    sha256 = "d15f4086b507a6bbb6210b7ec6edc69163f9b7e318a1f45591370e12620250ff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = ''Package containing tools for monitoring ROS 2 topics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
