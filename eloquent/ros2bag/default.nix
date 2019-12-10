
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, ros2cli, rosbag2-transport }:
buildRosPackage {
  pname = "ros-eloquent-ros2bag";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/ros2bag/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "ede192b845f71d35816cdbfa5f9ae69a1aaa59c6ea1447740ffdaa2017aae247";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
