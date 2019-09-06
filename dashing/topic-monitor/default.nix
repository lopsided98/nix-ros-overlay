
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, rclpy, launch, pythonPackages, ament-pep257, std-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-topic-monitor";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/topic_monitor/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "3e4f886337769ebe838f7ab7e6d0f993ba88be4ef55add678f393450c6a17900";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ];
  checkInputs = [ ament-flake8 pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy launch std-msgs launch-ros ];

  meta = {
    description = ''Package containing tools for monitoring ROS 2 topics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
