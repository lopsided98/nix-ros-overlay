
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch, pythonPackages, ament-pep257, ament-copyright, ament-index-python, ros2pkg, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2launch";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/ros2launch/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "4be10039d8d58089d589011c14583de306686c5c1b21123ca335283ac508a9d8";
  };

  buildType = "ament_python";
  buildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
