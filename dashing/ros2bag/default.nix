
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, rosbag2-transport, ros2cli }:
buildRosPackage rec {
  pname = "ros-dashing-ros2bag";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/ros2bag/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "66ea47ead55b5ecf3c048e3c5bc8628fd75dd4c7865252eed6379a3d0648effa";
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
