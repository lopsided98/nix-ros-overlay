
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, launch, launch-ros, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-monitor";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/topic_monitor/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "4b622162c7c30126b38c4e0d0aa31f555366ae55b18ad823e6e80ec2483e782a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros rclpy std-msgs ];

  meta = {
    description = ''Package containing tools for monitoring ROS 2 topics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
