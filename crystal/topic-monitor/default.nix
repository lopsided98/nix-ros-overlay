
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, std-msgs, pythonPackages, launch-ros, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-topic-monitor";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/topic_monitor/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "6cad0a1877a05bd2e7e7888f06f26f4739e442726da85a548f4ddb65783ead6c";
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
