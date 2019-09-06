
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, rosbag2-transport, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2bag";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/ros2bag/0.0.7-0.tar.gz;
    sha256 = "929ca0f58c09e2c71490b80ded4f9d5b6d555ff6b43e7ae3d83ea51e3339ec85";
  };

  buildType = "ament_python";
  buildInputs = [ rosbag2-transport ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rosbag2-transport ros2cli ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
