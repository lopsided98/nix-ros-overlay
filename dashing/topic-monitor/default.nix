
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, std-msgs, pythonPackages, launch-ros, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-topic-monitor";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/topic_monitor/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "f70fb654734e17de351861325de4490dee136457934dbd7eb256a4640c32d9f0";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ std-msgs launch-ros launch rclpy ];

  meta = {
    description = ''Package containing tools for monitoring ROS 2 topics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
