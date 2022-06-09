
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, ros2cli, rosbag2-py, rosbag2-transport }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "1a80385baeedef28bd18ede320b26a68440f106aeb7d7a528c734fa7b7e19a36";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-py rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
