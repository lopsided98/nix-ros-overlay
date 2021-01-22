
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, ros2cli, rosbag2-transport }:
buildRosPackage {
  pname = "ros-dashing-ros2bag";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/ros2bag/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "387ec1ce60283e82c34c8987707f710283ba999c54be36137ec08ef5a6703bc5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli rosbag2-transport ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
