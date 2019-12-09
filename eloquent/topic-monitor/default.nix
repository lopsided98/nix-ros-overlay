
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, std-msgs, pythonPackages, launch-ros, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-topic-monitor";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/topic_monitor/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "ff8464a0440468273e92796964d1e6b9f751b535d77dea27592a42f29c4da41e";
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
