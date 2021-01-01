
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, ros2cli, rosbag2-transport }:
buildRosPackage {
  pname = "ros-foxy-ros2bag";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/ros2bag/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "18cb20404620f9296c6d4ad584d5a335f2dafc7918c26e89b921ed70cf9f32ce";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
