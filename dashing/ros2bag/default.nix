
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, rosbag2-transport, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2bag";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/ros2bag/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "34860b0a8bfd0196e2decb31ea594a49c9cc5709c5eed6a7316c4c15805e54b5";
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
