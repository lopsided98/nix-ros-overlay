
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, ros2cli, rosbag2-py, rosbag2-transport }:
buildRosPackage {
  pname = "ros-galactic-ros2bag";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/ros2bag/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "812d8c1bfe43dea2ccb1ffb3e7445559b849176c72bf86b67f79c2f7ebc6ec0e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-py rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
